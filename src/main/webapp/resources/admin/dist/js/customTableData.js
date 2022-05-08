
let searchBar = $("#zero_config_filter");
let dataTableLength = $("#zero_config_length");
let pagination = $("#zero_config_paginate");
pagination.addClass("d-flex justify-content-end");
$("#zero_config_info").remove();
dataTableLength
	.children("label")
	.contents()
	.filter((_, el) => el.nodeType === 3)
	.remove();
dataTableLength
	.children("label")
	.children("select")
	.removeClass("form-control-sm");
searchBar.addClass("d-flex justify-content-end align-items-center gap-1");
searchBar
	.children("label")
	.contents()
	.filter((_, el) => el.nodeType === 3)
	.remove();
var url = window.location + "";
var path = url.replace(
	window.location.protocol + "//" + window.location.host + "/",
	"",
);
 var newPath = path.replace("Winx/", "");
searchBar.children("label").addClass("input-group w-50");
searchBar.children("label").children("input").removeClass("form-control-sm");
searchBar.children("label").children("input").addClass("border-green");
searchBar.children("label").addClass("mb-0");
searchBar
	.children("label")
	.prepend(
		`<span class="input-group-text btn-green border-primary" id="basic-addon2" style="border: var(--green-color) !important"><i class="text-white fa-regular fa-magnifying-glass" ></i></span>`,
	);
searchBar.append(`<a href="admin/sale/insert.htm"> <button type="button" class="btn mb-0 btn-green shadow-none" >
            <i class="fas fa-plus-circle"></i> Thêm
          </button></a>`);


