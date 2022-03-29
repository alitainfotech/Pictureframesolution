class Sizes {
    constructor() {
        this.template = $('#size_template').html();

        this.deletedItems = [];

        this.initData();
        this.handleForm();
    }

    initData() {
        let _self = this;
        let data = $.parseJSON($('#product_sizes').html());

        $.each(data, (index, item) => {
            let template = _self.template
                .replace(/__id__/gi, item.id)
                .replace(/__name__/gi, item.name)
                .replace(/__number__/gi, item.number);

            $('.swatches-container .swatches-list').append(template);
        });
    }

    addNewAttribute(type) {
        let _self = this;

        let template = _self.template
            .replace(/__id__/gi, 0)
            .replace(/__name__/gi, '')
            .replace(/__number__/gi, '')
        ;

        $('.swatches-container .swatches-list').append(template);
    }

    exportData() {
        let data = [];

        $('.swatches-container .swatches-list li').each((index, item) => {
            let $current = $(item);
            data.push({
                id: $current.data('id'),
                name: $current.find('[data-type=name] input').val(),
                number: $current.find('[data-type=number] input').val()
            });
        });

        return data;
    }

    handleForm() {
        let _self = this;

        $('.swatches-container .swatches-list').sortable();

        $('body')
            .on('submit', '.main-setting-form', () => {
                let data = _self.exportData();

                $('#product_sizes').val(JSON.stringify(data));

                $('#deleted_product_sizes').val(JSON.stringify(_self.deletedItems));
            })
            .on('click', '.js-add-new-attribute', event => {
                event.preventDefault();

                if($(event.target).parent().hasClass('swatches-container'))
                  _self.addNewAttribute('width');
                if($(event.target).parent().hasClass('swatches-height'))
                  _self.addNewAttribute('height');
            })
            .on('click', '.swatches-container .swatches-list li .remove-item a', event => {
                event.preventDefault();

                let $item = $(event.currentTarget).closest('li');

                 _self.deletedItems.push($item.data('id'));

                $item.remove();
            });
    }
}

$(window).on('load', () => {
    new Sizes();
});
