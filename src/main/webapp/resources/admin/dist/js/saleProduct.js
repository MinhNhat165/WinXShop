const handleClickProduct = (e) => {
	e.classList.toggle("bg-green-light");
	e.classList.toggle("product-checked");
};
const handleConfirmSelectProduct = (e) => {
	let productSaleListBlock = $(".product-sale-list");
	$(".product-checked").each(function(index, product) {
		let isAlreadyInList = false;
		$(".product-sale").each(function() {
			if (
				this.getAttribute("product-id") === product.getAttribute("product-id")
			) {
				isAlreadyInList = true;
				return;
			}
		});
		if (!isAlreadyInList) {
			productSaleListBlock.append(`<span product-id=${this.getAttribute(
				"product-id",
			)} class="mt-2 product-sale">
            <input
              class="form-check-input invisible"
              type="checkbox"
              value="${this.getAttribute("product-id")}"
              checked
              id="input-${this.getAttribute("product-id")}"
              name="product-sale"
            />
            <label
              class="form-check-label"
              for="flexCheckDefault"
            >
              <button
                class="btn btn-sm bg-green-light"
                style="cursor: default"
              >
                ${this.getAttribute("data-name")}
                <span style="cursor: pointer" onclick="handleRemoveProductSale(this)">
                  <i
                    class="green-color fa-regular fa-xmark"
                  ></i>
                </span>
              </button>
            </label>
          </span>
                                            `);
		}
	});

	$("#product-modal").modal("hide");
};

const handleRemoveProductSale = (e) => {
	let productRemove = e.closest(".product-sale");

	if ($(`.product[product-id=${productRemove.getAttribute("product-id")}]`)) {
		$(`[product-id=${productRemove.getAttribute("product-id")}]`).removeClass(
			"product-checked bg-green-light",
		);
	}
	productRemove.remove();
};
