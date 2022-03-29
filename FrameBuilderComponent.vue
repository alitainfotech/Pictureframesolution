<template>
  <div id="framebuilder" class="container">
    <div class="row d-flex flex-md-row-reverse">

      <div class="col-lg-5">
        <div class="preview" style="background:url(/images/default-frame.png) transparent center center; background-size: 100% 100%;">
          <div class="preview-image">
            <img id="file-ip-1-preview">
          </div>
        </div>
        <div id="preview-price"></div>
      </div>

      <div class="col-lg-7">
        <ul id="accordion" class="accordion-list">
          <li id="step1">
            <h3>1. Image and Size</h3>
            <div class="accordion-content">
              <div class="content-row">
                <p>Enter the size of your art (note: it will be covered by 1/4" on each side). </p>
                <div class="dimension-group">
                  <div class="width-form" v-if="!isLoading">
                    <label> Width: </label>
                    <select v-model="frame_width_int">
                      <option v-for="n in 28" v-if="n >= 5">{{ n }} </option>
                    </select>
                    &
                    <select v-model="frame_width_frac">
                      <option v-for="k in data.sizes">{{ k.name }} </option>
                    </select>
                    inches
                  </div>
                  <div class="height-form" v-if="!isLoading">
                    <label> Height: </label>
                    <select v-model="frame_height_int">
                      <option v-for="n in 36" v-if="n >= 5">{{ n }} </option>
                    </select>
                    &
                    <select v-model="frame_height_frac">
                      <option v-for="k in data.sizes">{{ k.name }} </option>
                    </select>
                    inches
                  </div>
                  <div class="file-upload">
                    <div class="form-input">
                      <label for="file-ip-1">Upload Image</label>
                      <input type="file" id="file-ip-1" accept="image/*" @change="showPreview">

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li id="step2">
            <h3>2. Frame</h3>
            <div class="accordion-content">
              <div class="content-row" v-if="!isLoading">
                <div class="card" v-for="product in products_list.products[1]">
                  <div class="card-img-top" :style="{ backgroundImage: `url(${product.product_image})` }"></div>
                  <div class="card-body">
                    <p class="card-text">{{ product.name }}</p>
                    <div class="frame-colors">
                      <div class="color-list" v-for="variation in product.variations" :product_id="variation.product_id" v-on:mouseover="mouseOverColor(variation.product_id)" v-on:mouseleave="mouseLeaveColor(variation.product_id)" @click="selectProduct(variation.product_id, variation.product_image, $event)" :aria-label="variation.attribute_title" data-microtip-position="top" role="tooltip">
                        <span class="color" :style="{ backgroundColor: variation.attribute_color }"></span>
                        <span class="color-hover" :style="{ backgroundColor: variation.attribute_color, borderColor: variation.attribute_color }"></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li id="step3">
            <h3>3. Matting</h3>
            <div class="accordion-content">
              <div class="content-row" v-if="!isLoading">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">No Mat</h5>
                    <p class="card-text">Perfect for posters or large prints.</p>
                  </div>
                </div>
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">Single Mat (Color and Visible Inches)</h5>
                    <p class="card-text">Draws the eye towards the framed piece and gives it a finished look.</p>
                    <div class="frame-colors">
                      <div class="color-list" v-for="variation in products_list.products[2][0].variations" :product_id="variation.product_id" v-on:mouseover="mouseOverColor(variation.product_id)" v-on:mouseleave="mouseLeaveColor(variation.product_id)" @click="selectProduct(variation.product_id, '', $event)" :aria-label="variation.attribute_title" data-microtip-position="top" role="tooltip">
                        <span class="color" :style="{ backgroundColor: variation.attribute_color }"></span>
                        <span class="color-hover" :style="{ backgroundColor: variation.attribute_color, borderColor: variation.attribute_color }"></span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">Double Mat (Color and Visible Inches)</h5>
                    <p class="card-text">A second mat is used to add depth, or as an accent color for a greater effect.</p>
                    <div class="frame-colors">
                      <div class="color-list" v-for="variation in products_list.products[2][1].variations" :product_id="variation.product_id" v-on:mouseover="mouseOverColor(variation.product_id)" v-on:mouseleave="mouseLeaveColor(variation.product_id)" @click="selectProduct(variation.product_id, '', $event)" :aria-label="variation.attribute_title" data-microtip-position="top" role="tooltip">
                        <span class="color" :style="{ backgroundColor: variation.attribute_color }"></span>
                        <span class="color-hover" :style="{ backgroundColor: variation.attribute_color, borderColor: variation.attribute_color }"></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li id="step4">
            <h3>4. Plexi Glass</h3>
            <div class="accordion-content">
              <div class="content-row">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">ACRYLIC NON-GLARE</h5>
                  </div>
                </div>
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">ACRYLIC PREMIUM CLEAR</h5>
                  </div>
                </div>
              </div>
            </div>
          </li>

        </ul>
      </div>

    </div>
  </div>
</template>

<script>

export default {

  data: function () {
      return {
          isLoading: true,
          products_list: [],
          frame_width_int: 10,
          frame_width_frac: 0,
          frame_height_int: 12,
          frame_height_frac: 0,
          frame_id: '',
          matting_id: '',
          glass_id: '',
          price: 0
      };
  },

  props: {
      url: {
          type: String,
          default: () => null,
          required: true
      },
  },

  mounted() {

    this.getData();
    this.accordionInit();

  },

  methods: {
      getData() {
          this.data = [];
          this.isLoading = true;
          axios.get(this.url)
              .then(res => {
                  this.products_list = res.data.data ? res.data.data : [];
                  this.isLoading = false;
              })
              .catch(res => {
                  this.isLoading = false;
                  console.log(res);
              });
      },

      showPreview(event){
        if(event.target.files.length > 0){
          var src = URL.createObjectURL(event.target.files[0]);
          var preview = document.getElementById("file-ip-1-preview");
          preview.src = src;
          preview.style.display = "block";
        }
      },

      accordionInit(){
        $('.accordion-list > li > .accordion-content').hide();

        $('.accordion-list > li h3').click(function() {

          if ($(this).parent().hasClass("active")) {
            $(this).parent().removeClass("active").find(".accordion-content").slideUp();
          } else {
            $(".accordion-list > li.active .accordion-content").slideUp();
            $(".accordion-list > li.active").removeClass("active");
            $(this).parent().addClass("active").find(".accordion-content").slideDown();
          }
          return false;
        });

        $('.accordion-list #step1 h3').click().parent().addClass("active");

      },

      selectProduct(product_id, image, event) {
        if(event) event.preventDefault();
        $(event.target).parents('li.active').find('.color-hover').removeClass('active');

        if($(event.target).parents('li.active').attr('id') == 'step2'){
          $(event.target).parents('.card').find('.card-img-top').css('background-image', "url(" + image + ")");
          this.data.frame_id = product_id;
        }

        if($(event.target).parents('li.active').attr('id') == 'step3'){
          this.data.matting_id = product_id;
        }

        if($(event.target).hasClass('color-hover'))
          $(event.target).addClass('active');
        else
          $(event.target).parents('.color-list').find('.color-hover').addClass('active');

        this.calcuratePrice();
      },

      calcuratePrice(){
        this.price = 0;
        if(this.frame_id) this.price += parseFloat(this.getPrice(this.frame_id));
        if(this.matting_id) this.price += parseFloat(this.getPrice(this.matting_id));
        if(this.glass_id) this.price += parseFloat(this.getPrice(this.glass_id));
        $('#preview-price').html('$' + this.price);
      },

      getPrice(product_id){
        return this.products_list.map(function(product, product_id){
          product.variations.filter(function(variation, product_id){
            if(parseInt(variation.product_id) === parseInt(product_id)){ return variation.price; }
          });
        });
      },

      mouseOverColor(product_id){
        var target = $('.accordion-list').find('.color-list[product_id=' + product_id + '] .color-hover');
        gsap.to(
          target,
          { duration: 0.5, ease: "power4.out", width: 40, height: 40 }
        );
      },

      mouseLeaveColor(product_id){
        var target = $('.accordion-list').find('.color-list[product_id=' + product_id + '] .color-hover');
        gsap.to(
          target,
          { duration: 0.5, ease: "power3.out", width: 0, height: 0 }
        );
      }

    }
}



</script>
