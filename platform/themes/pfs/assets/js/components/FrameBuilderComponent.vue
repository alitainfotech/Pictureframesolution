<template>
  <div id="framebuilder" class="container">
    <div class="row d-flex flex-md-row-reverse">
      <div class="col-lg-5">
        <div class="preview" :class="{ 'default-preview': !hasUploadedImage }">
          <div
            class="preview-image"
            :style="{ width: `${frameWidth}px`, height: `${frameHeight}px` }"
          >
            <div
              class="frame-space"
              :style="{
                backgroundColor: `${
                  !hasUploadedImage ? 'unset' : previewBackground
                }`,
                padding: `${frameMarginY}px ${frameMarginX}px`,
              }"
              style="max-width: 100%; max-height: 100%"
            >
              <div
                class="matt-1"
                :class="{
                  'matt-box-shadow':
                    hasUploadedImage && selectedMattType != 'none',
                }"
              >
                <div
                  class="matt-2"
                  :class="{
                    'matt-box-shadow':
                      hasUploadedImage && selectedMattType == 'double',
                  }"
                >
                  <img
                    id="file-ip-1-preview"
                    :style="{ transform: `scale(${frameImageScale})` }"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-footer-content">
          <button
            v-b-modal.modal-1
            class="btn btn-fill-out"
            name="Zoom"
            rel="nofollow"
            :aria-disabled="flag"
            @click="getFrameData(temp_id)"
            >Zoom <i class="ti-zoom-in"></i>
          </button>



            <b-modal v-if="flag===false" id="modal-1" centered size="xl" title="Your Frame Preview">
              <div class="frame-preview-wrapper">
                <div id="frame-preview-modal-canvas">
                  <img :src="product_image" />
                </div>
              </div>
              <div class="row mt-5 mb-3">
                <div class="profile-image-box col-md-4">
                  <img
                    class="profile-image-corner"
                   :src="product_image"
                  />
                </div>
                <div class="profile-image-box col-md-4">
                  <img
                    class="profile-image-slide"
                    :src="product_image"
                  />
                </div>
                <div class="profile-image-box col-md-4">
                  <video muted autoplay loop class="video_loop" style="width:100%">
                    <source
                      src="storage/frame_modal/1_11.mp4"
                      type="video/mp4"
                    />
                  </video>
                </div>
              </div>

            </b-modal>

        </div>

        <div id="preview-price">$ {{ price.toFixed(2) }}</div>
      </div>

      <div class="col-lg-7">
        <ul id="accordion" class="accordion-list">
          <li id="step1">
            <h3>1. Image and Size</h3>
            <div class="accordion-content">
              <div class="content-row">
                <p>
                  Enter the size of your art (note: it will be covered by 1/4"
                  on each side).
                </p>
                <div class="dimension-group">
                  <div class="width-form" v-if="!isLoading">
                    <label> Width: </label>
                    <select v-model="frame_width_int">
                      <option v-for="n in 28" v-if="n >= 5">{{ n }}</option>
                    </select>
                    &
                    <select v-model="frame_width_frac">
                      <option v-for="k in data.sizes" :value="k.number">
                        {{ k.name }}
                      </option>
                    </select>
                    inches
                  </div>
                  <div class="height-form" v-if="!isLoading">
                    <label> Height: </label>
                    <select v-model="frame_height_int">
                      <option v-for="n in 36" v-if="n >= 5">{{ n }}</option>
                    </select>
                    &
                    <select v-model="frame_height_frac">
                      <option v-for="k in data.sizes" :value="k.number">
                        {{ k.name }}
                      </option>
                    </select>
                    inches
                  </div>
                  <div class="file-upload">
                    <div class="form-input">
                      <label for="file-ip-1">Upload Image</label>
                      <input
                        type="file"
                        id="file-ip-1"
                        accept="image/*"
                        @change="showPreview"
                      />
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
                <div class="card" v-for="product in data.products[1]">
                  <div
                    class="card-img-top"
                    :style="{
                      backgroundImage:
                        selectedFrame.product_image &&
                        selectedFrameProduct.id == product.id
                          ? `url(${selectedFrame.product_image})`
                          : `url(${product.product_image})`,
                    }"
                  ></div>
                  <div class="card-body">
                    <p class="card-text">{{ product.name }}</p>
                    <div class="frame-colors">
                      <div
                        class="color-list"
                        v-for="(variation,index) in product.variations"
                        :product_id="variation.product_id"
                        v-on:mouseover="mouseOverColor(variation.product_id)"
                        v-on:mouseleave="mouseLeaveColor(variation.product_id)"
                        @click="selectFrame(product, variation,variation.product_id,variation.id,variation.variation_id,index)"
                        :aria-label="variation.attribute_title"
                        data-microtip-position="top"
                        role="tooltip"
                      >
                        <span
                          class="color"
                          :style="{
                            backgroundImage: `url(${variation.attribute_image})`,
                          }"

                        ></span>
                        <span
                          class="color-hover"
                          :class="{
                            active:
                              selectedFrame.product_id == variation.product_id,
                          }"
                          :style="{
                            backgroundImage: `url(${variation.attribute_image})`,
                            borderColor: variation.attribute_color,
                          }"
                        ></span>
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
                <div
                  class="card cursor-pointer"
                  :class="{ 'active-card': selectedMattType == 'none' }"
                  @click="selectMatt({}, 'none')"
                >
                  <div class="card-body">
                    <h5 class="card-title">No Mat</h5>
                    <p class="card-text">
                      Perfect for posters or large prints.
                    </p>
                  </div>
                </div>
                <div
                  class="card"
                  :class="{ 'active-card': selectedMattType == 'single' }"
                >
                  <div class="card-body">
                    <h5 class="card-title">
                      Single Mat (Color and Visible Inches)
                    </h5>
                    <p class="card-text">
                      Draws the eye towards the framed piece and gives it a
                      finished look.
                    </p>
                    <div class="frame-colors">
                      <div
                        class="color-list"
                        v-for="variation in data.products[2][0].variations"
                        :product_id="variation.product_id"
                        v-on:mouseover="mouseOverColor(variation.product_id)"
                        v-on:mouseleave="mouseLeaveColor(variation.product_id)"
                        @click="selectMatt(variation, 'single')"
                        :aria-label="variation.attribute_title"
                        data-microtip-position="top"
                        role="tooltip"
                      >
                        <span
                          class="color"
                          :style="{
                            backgroundColor: variation.attribute_color,
                          }"
                        ></span>
                        <span
                          class="color-hover"
                          :class="{
                            active:
                              selectedMattType != 'none' &&
                              selectedMatt.product_id == variation.product_id,
                          }"
                          :style="{
                            backgroundColor: variation.attribute_color,
                            borderColor: variation.attribute_color,
                          }"
                        ></span>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="card"
                  :class="{ 'active-card': selectedMattType == 'double' }"
                >
                  <div class="card-body">
                    <h5 class="card-title">
                      Double Mat (Color and Visible Inches)
                    </h5>
                    <p class="card-text">
                      A second mat is used to add depth, or as an accent color
                      for a greater effect.
                    </p>
                    <div class="frame-colors">
                      <div
                        class="color-list"
                        v-for="variation in data.products[2][1].variations"
                        :product_id="variation.product_id"
                        v-on:mouseover="mouseOverColor(variation.product_id)"
                        v-on:mouseleave="mouseLeaveColor(variation.product_id)"
                        @click="selectMatt(variation, 'double')"
                        :aria-label="variation.attribute_title"
                        data-microtip-position="top"
                        role="tooltip"
                      >
                        <span
                          class="color"
                          :style="{
                            backgroundColor: variation.attribute_color,
                          }"
                        ></span>
                        <span
                          class="color-hover"
                          :class="{
                            active:
                              selectedMattType != 'none' &&
                              selectedMatt.product_id == variation.product_id,
                          }"
                          :style="{
                            backgroundColor: variation.attribute_color,
                            borderColor: variation.attribute_color,
                          }"
                        ></span>
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
              <div class="content-row" v-if="!isLoading">
                <div
                  class="card cursor-pointer"
                  v-for="item in data.products[3]"
                  :key="item.id"
                  @click="selectGlass(item)"
                  :class="{ 'active-card': selectedGlass.id == item.id }"
                >
                  <div class="card-body">
                    <h5 class="card-title">{{ item.name }}</h5>
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
      data: [],
      hasUploadedImage: false,
      frame_width_int: 10,
      frame_width_frac: 0,
      frame_height_int: 12,
      frame_height_frac: 0,
      frame_id: "",
      matting_id: "",
      glass_id: "",
      price: 0,
      selectedFrameProduct: {},
      selectedFrame: {},
      selectedMattType: "none",
      selectedMatt: {},
      frameWidth: 320,
      frameHeight: 320,
      frameMarginX: 0,
      frameMarginY: 0,
      frameImageScale: 1.0,
      previewBackground: "#000",
      matt1Background: "#fff",
      matt2Background: "#fff",
      selectedGlass: {},
      product_id: "",
      temp_id:"",
      product_image:"",
    flag: false
    };
  },

  props: {
    url: {
      type: String,
      default: () => null,
      required: true,
    },
  },

  mounted() {
    this.getData();
    this.accordionInit();
  },

  watch: {
    frame_width_int(newVal, oldVal) {
      this.calculateFrameSize();
    },
    frame_width_frac(newVal, oldVal) {
      this.calculateFrameSize();
    },
    frame_height_int(newVal, oldVal) {
      this.calculateFrameSize();
    },
    frame_height_frac(newVal, oldVal) {
      this.calculateFrameSize();
    },
  },

  methods: {
    getData() {
      this.data = [];
      this.isLoading = true;
      console.log(this.url);
      axios
        .get(this.url)
        .then((res) => {
          this.data = res.data.data ? res.data.data : [];
          console.log(res.data.data);
          this.isLoading = false;
        })
        .catch((res) => {
          this.isLoading = false;
          console.log(res);
        });
    },
    showPreview(event) {
      var preview = document.getElementById("file-ip-1-preview");
      if (event.target.files.length > 0) {
        var src = URL.createObjectURL(event.target.files[0]);
        preview.src = src;
        preview.style.display = "block";
        this.hasUploadedImage = true;
      } else {
        this.hasUploadedImage = false;
        preview.style.display = "none";
      }
      this.calculateFrameSize();
    },

    //   calculateFrameSizeV2() {
    //     let maxSize = 320,
    //     ratio = 1,
    //     frameWidth = 320,
    //     frameHeight = 320;
    //     let xCoverSize = ((this.frame_width_frac==0) ? 0.25:this.frame_width_frac) * maxSize,
    //     yCoverSize = ((this.frame_height_frac==0) ? 0.25:this.frame_height_frac) * maxSize;

    //     if (this.frame_width_int > this.frame_height_int) {
    //         ratio = this.frame_width_int / this.frame_height_int;
    //         frameWidth = maxSize;
    //         frameHeight = maxSize / ratio;
    //     }
    //     else {
    //         ratio = this.frame_height_int / this.frame_width_int;
    //         frameWidth = maxSize / ratio;
    //         frameHeight = maxSize;
    //     }
    //     this.frameWidth = frameWidth - xCoverSize;
    //     this.frameHeight = frameHeight - yCoverSize;
    //     this.frameMarginX = xCoverSize / 2;
    //     this.frameMarginY = yCoverSize / 2;
    //     setTimeout(()=>{
    //         this.scaleImage((this.frameWidth), (this.frameHeight));
    //     }, 250);
    //   },

    calculateFrameSize() {
      let maxSize = 320,
        ratio = 1,
        frameWidth = 320,
        frameHeight = 320;
      console.log("frame width", this.frame_width_int);
      console.log("frame height", this.frame_height_int);
      if (this.frame_width_int > this.frame_height_int) {
        //15>12
        ratio = this.frame_width_int / this.frame_height_int;
        console.log(
          "IF Condition ratio=>>",
          ratio,
          "maxSize=>>",
          maxSize,
          "height=>>",
          maxSize / ratio
        );
        frameWidth = maxSize;
        frameHeight = maxSize / ratio;
      } else {
        ratio = this.frame_height_int / this.frame_width_int; //12/15
        frameWidth = maxSize / ratio; //320/1
        frameHeight = maxSize; //320
        console.log(
          "Else Condition ratio=>>",
          ratio,
          "maxSize=>>",
          maxSize,
          "width=>>",
          maxSize / ratio
        );
      }
      this.frameWidth = frameWidth;
      this.frameHeight = frameHeight;
      let xCoverSize =
          (this.frame_width_frac == 0 ? 0.25 : this.frame_width_frac) *
          this.frameWidth,
        yCoverSize =
          (this.frame_height_frac == 0 ? 0.25 : this.frame_height_frac) *
          this.frameHeight;
      // this.frameWidth = this.frameWidth - xCoverSize;
      // this.frameHeight = this.frameHeight - yCoverSize;
      this.frameMarginX = xCoverSize / 2;
      this.frameMarginY = yCoverSize / 2;
      console.log("final width", this.frameWidth - xCoverSize);
      console.log("final heigh", this.frameHeight - yCoverSize);
      // setTimeout(()=>{
      this.scaleImage(
        this.frameWidth - xCoverSize,
        this.frameHeight - yCoverSize
      );
      // }, 250);
    },

    scaleImage(maxSizeX, maxSizeY) {
      let scale = 1.0,
        imageWidth = $(".preview-image").width(),
        imageHeight = $(".preview-image").height();

      if (imageWidth > 0 && imageHeight > 0) {
        if (this.frameWidth > this.frameHeight) {
          console.log("first = ", (maxSizeX - imageWidth) / imageWidth);
          // scale = 1 + ((maxSizeX - imageWidth) / imageWidth);
          scale = (maxSizeY - imageHeight) / imageHeight;
          console.log("if scale = ", scale);
        } else {
          console.log("second = ", (maxSizeY - imageHeight) / imageHeight);
          // scale = 1 + ((maxSizeY - imageHeight) / imageHeight);
          scale = (maxSizeX - imageWidth) / imageWidth;
          console.log("else scale = ", scale);
        }
        if (scale < 1) {
          scale = 1;
        }
      }
      this.frameImageScale = scale;
      console.log("final scale", this.frameImageScale);
    },

    accordionInit() {
      $(".accordion-list > li > .accordion-content").hide();

      $(".accordion-list > li h3").click(function () {
        if ($(this).parent().hasClass("active")) {
          $(this)
            .parent()
            .removeClass("active")
            .find(".accordion-content")
            .slideUp();
        } else {
          $(".accordion-list > li.active .accordion-content").slideUp();
          $(".accordion-list > li.active").removeClass("active");
          $(this)
            .parent()
            .addClass("active")
            .find(".accordion-content")
            .slideDown();
        }
        return false;
      });

      $(".accordion-list #step1 h3").click().parent().addClass("active");
    },

    selectFrame(product, variation,product_id,id,variation_id,index) {
      this.selectedFrameProduct = product;
      this.selectedFrame = variation;
      this.temp_id = index
      console.log("product id",product_id,"variation id",variation_id,"id",this.temp_id);
      console.log("product details=>>>>",product)
      this.previewBackground = this.selectedFrame.attribute_color;
      // this.product_id =
      this.calculatePrice();
    },

    selectMatt(product, mattType) {
      this.selectedMattType = mattType;
      this.selectedMatt = product;
      this.previewBackground = this.selectedMatt.attribute_color;
      this.calculatePrice();
    },

    selectGlass(product) {
      this.selectedGlass = product;
      this.calculatePrice();
    },

    calculatePrice() {
      let price = 0;
      if (this.selectedFrame.price) {
        price += this.selectedFrame.price;
      }
      if (this.selectedMatt.price) {
        price += this.selectedMatt.price;
      }
      if (this.selectedGlass.price) {
        price += this.selectedGlass.price;
      } else if (this.selectedGlass.original_price) {
        price += this.selectedGlass.original_price;
      }
      this.price = price;
    },

    mouseOverColor(product_id) {
      var target = $(".accordion-list").find(
        ".color-list[product_id=" + product_id + "] .color-hover"
      );
      gsap.to(target, {
        duration: 0.5,
        ease: "power4.out",
        width: 40,
        height: 40,
      });
    },

    mouseLeaveColor(product_id) {
      var target = $(".accordion-list").find(
        ".color-list[product_id=" + product_id + "] .color-hover"
      );
      gsap.to(target, {
        duration: 0.5,
        ease: "power3.out",
        width: 0,
        height: 0,
      });
    },
    getFrameData(_id){
        console.log(_id)
        if(_id==="")
        {
            this.flag = true
        }
        else{

            thisr.flag=false
        }
        this.product_image = this.selectedFrameProduct.variations[_id].product_image;
        console.log("inside frame",_id,"product",this.product_image)
    }
  },
};
</script>

<style scoped>
.frame-preview-wrapper{
    display: flex;
    justify-content: center;
        border: 1px solid #ccc;
    border-radius: 10px;
    padding: 10px 0;
    background: #f8fbff;
}
.profile-image-corner,.profile-image-slide, .video_loop{
    background: #ccc;
    border: 1px solid #ccc;
    border-radius: 10px;
}
#modal-1___BV_modal_outer_{
z-index: 1041 !important;
}
</style>

