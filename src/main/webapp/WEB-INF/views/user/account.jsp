<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<%@include file="./head.jsp"%>
<body>
	<%@include file="./header.jsp"%>
	  <main class="main bg-light vh-90">
      <section class="pt-50">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="row">
                <div class="col-md-3">
                  <div class="dashboard-menu">
                    <ul class="nav flex-column" role="tablist">
                      <li class="nav-item">
                        <a
                          class="nav-link active"
                          id="account-detail-tab"
                          data-bs-toggle="tab"
                          href="#account-detail"
                          role="tab"
                          aria-controls="account-detail"
                          aria-selected="true"
                          ><i class="fa-regular fa-user mr-10"></i>Thông tin cá
                          nhân</a
                        >
                      </li>
                      <li class="nav-item">
                        <a
                          class="nav-link"
                          id="dashboard-tab"
                          data-bs-toggle="tab"
                          href="#dashboard"
                          role="tab"
                          aria-controls="dashboard"
                          aria-selected="false"
                          ><i class="fa-regular fa-arrows-rotate mr-10"></i> Đổi
                          mật khẩu</a
                        >
                      </li>
                      <li class="nav-item">
                        <a
                          class="nav-link"
                          id="orders-tab"
                          data-bs-toggle="tab"
                          href="#orders"
                          role="tab"
                          aria-controls="orders"
                          aria-selected="false"
                          ><i class="fa-regular fa-ballot-check mr-10"></i>Đơn
                          đặt</a
                        >
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="page-login.html"
                          ><i
                            class="fa-regular fa-arrow-right-from-bracket mr-10"
                          ></i
                          >Đăng xuất</a
                        >
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-9">
                  <div class="tab-content dashboard-content">
                    <div
                      class="tab-pane fade"
                      id="dashboard"
                      role="tabpanel"
                      aria-labelledby="dashboard-tab"
                    >
                   
                      <div class="card shadow">
                        <div class="card-header">
                          <h5 class="mb-0">Đổi mật khẩu</h5>
                        </div>
                        ${message3 }
                        <div class="card-body">
                          <div class="row">
                            <form class="col-4 mx-auto pt-5 card" method="post">
                              <div class="form-group col-md-12">
                                <label for="input-current-password"
                                  >Mật khẩu hiện tại</label
                                >
                                <input
                                  type="password"
                                  name="cpassword"
                                  class="form-control"
                                  id="input-current-password"
                                />
                                ${message}
                              </div>
                              <div class="form-group col-md-12">
                                <label for="input-new-password"
                                  >Mật khẩu mới</label
                                >
                                <input
                                  type="password"
                                  name="npassword"
                                  class="form-control"
                                  id="input-new-password"
                                />
                              </div>
                              <div class="form-group col-md-12">
                                <label for="input-confirm-new-password"
                                  >Xác nhận mật khẩu mới</label
                                >
                                <input
                                  type="password"
                                  name="renpassword"
                                  class="form-control"
                                  id="input-confirm-new-password"
                                />
                                ${message2}
                              </div>

                              <div class="form-group col-12">
                                <button
                                  type="submit" name="btnpw"
                                  class="btn btn-primary col-12"
                                >
                                  Lưu thay đổi
                                </button>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="tab-pane fade"
                      id="orders"
                      role="tabpanel"
                      aria-labelledby="orders-tab"
                    >
                      <div class="card shadow">
                        <div class="card-header">
                          <h5
                            class="mb-0 d-flex justify-content-between align-center"
                          >
                            Đơn đặt của bạn
                            <form class="row popup">
                              <div class="d-flex gap-1">
                                <div class="input-group">
                                  <input
                                    type="text"
                                    class="form-control"
                                    id="order-search"
                                    placeholder="Search"
                                  />
                                  <div
                                    class="input-group-text bg-brand text-white"
                                  >
                                    <i
                                      class="fa-regular fa-magnifying-glass"
                                    ></i>
                                  </div>
                                </div>
                                <div class="popup-btn">
                                  <button class="btn">
                                    <i class="fa-regular fa-filter-list"></i>
                                  </button>
                                  <div class="popup-card p-10"></div>
                                </div>
                              </div>
                            </form>
                          </h5>
                        </div>
                        <div class="card-body shadow">
                          <div
                            class="col-12 bg-white p-10 rounded mb-10 bg-brand text-white"
                          >
                            <div class="row">
                              <div class="col-2 text-center">Mã đơn</div>
                              <div class="col-3 text-center">Ngày đặt</div>
                              <div class="col-2 text-center">Trạng thái</div>
                              <div class="col-3 text-center">Tổng</div>

                              <div class="col-2 text-center">Thao tác</div>
                            </div>
                          </div>
                          <div class="col-12">
                            <div
                              class="col-12 bg-white p-10 rounded-1 mb-5 product border border-brand"
                            >
                              <div
                                class="row align-items-center custome-checkbox"
                              >
                                <div class="col-2 text-center product-name">
                                  <h5 class="order-id">
                                    <a href="shop-product-right.html"
                                      >HD000001
                                    </a>
                                  </h5>
                                </div>
                                <div class="col-3 text-center order-date">
                                  <span>29/04/2022 </span>
                                </div>
                                <div class="col-2 text-center product-state">
                                  <span class="badge rounded-pill bg-brand"
                                    >Đang vận chuyển</span
                                  >
                                </div>
                                <div class="col-3 text-center">65.000 VND</div>
                                <div
                                  class="col-2 d-flex justify-content-center gap-md-3 order-action"
                                >
                                  <a
                                    href="#"
                                    class="text-muted my-tooltip"
                                    aria-label="Xoá"
                                    data-bs-toggle="modal"
                                    data-bs-target="#confirm-modal"
                                    ><i class="fa-regular fa-trash-can"></i
                                  ></a>
                                  <a
                                    href="#"
                                    class="text-muted my-tooltip"
                                    aria-label="Huỷ đơn"
                                    data-bs-toggle="modal"
                                    data-bs-target="#confirm-modal"
                                    ><i class="fa-regular fa-ban"></i
                                  ></a>
                                  <a
                                    href="#"
                                    class="text-muted my-tooltip"
                                    data-bs-toggle="modal"
                                    data-bs-target="#order-details"
                                    aria-label="Chi tiết"
                                    ><i class="fa-regular fa-circle-info"></i
                                  ></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div
                      class="tab-pane fade active show"
                      id="account-detail"
                      role="tabpanel"
                      aria-labelledby="account-detail-tab"
                    >
                      <div class="card shadow">
                        <div class="card-header">
                          <h5>Thông tin cá nhân</h5>
                        </div>
                        <div class="card-body">
                          <div class="row">
                            <div class="col-md-4">
                              <div class="avatar-wrapper">
                                <img class="profile-pic" src="" />
                                <div class="upload-button">
                                  <i
                                    class="fa fa-arrow-circle-up"
                                    aria-hidden="true"
                                  ></i>
                                </div>
                                <input
                                  class="file-upload"
                                  type="file"
                                  accept="image/*"
                                />
                              </div>
                              <div class="col-12 text-center text-brand-dark">
                                <span class="fs-5">OanhXinh</span>
                              </div>
                            </div>
                            <div class="col-8">
                              <form
                              	action="dsaas"
                                method="post"
                                name="enq"
                                class="needs-validation"
                              >
                                <div class="row">
                                  <div class="form-group col-md-12">
                                    <label
                                      >Họ và tên
                                      <span class="required">*</span></label
                                    >
                                    <input
                                      class="form-control"
                                      name="name"
                                      type="text"
                                      required
                                    />
                                  </div>

                                  <fieldset class="col-md-12">
                                    <legend
                                      class="col-form-label col-sm-2 pt-0"
                                    >
                                      Giới tính
                                    </legend>
                                    <div class="col-sm-12 d-flex gap-4 ml-10">
                                      <div class="form-check custom-radio">
                                        <input
                                          class="form-check-input"
                                          type="radio"
                                          name="gender"
                                          id="female"
                                          value="0"
                                          checked
                                        />
                                        <label
                                          class="form-check-label"
                                          for="female"
                                        >
                                          Nữ
                                        </label>
                                      </div>
                                      <div class="form-check custom-radio">
                                        <input
                                          class="form-check-input"
                                          type="radio"
                                          name="gender"
                                          id="male"
                                          value="1"
                                        />
                                        <label
                                          class="form-check-label"
                                          for="male"
                                        >
                                          Nam
                                        </label>
                                      </div>
                                    </div>
                                  </fieldset>
                                  <div class="form-group col-md-12">
                                    <label
                                      >Ngày sinh
                                      <span class="required">*</span></label
                                    >
                                    <input
                                      required=""
                                      class="form-control"
                                      name="date"
                                      type="date"
                                    />
                                  </div>
                                  <div class="form-group col-md-12">
                                    <label
                                      >Địa chỉ
                                      <span class="required">*</span></label
                                    >
                                    <input
                                      required=""
                                      class="form-control"
                                      name="address"
                                      type="text"
                                    />
                                  </div>
                                  <div class="form-group col-md-12">
                                    <label
                                      >SDT
                                      <span class="required">*</span></label
                                    >
                                    <input
                                      required=""
                                      class="form-control"
                                      name="phone"
                                      type="tel"
                                    />
                                  </div>

                                  <div class="col-md-12">
                                    <button
                                      type="submit"
                                      class="btn"
                                      name="submit"
                                      value="Submit"
                                    >
                                      Xác nhận
                                    </button>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
	   <!-- confirm modal -->
    <div
      class="modal fade"
      id="confirm-modal"
      tabindex="-1"
      aria-labelledby="confirm-modal"
      aria-hidden="true"
    >
      <div
        class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-sm"
      >
        <div class="modal-content">
          <div class="modal-body">
            Bạn có chắn chắn muốn xoá sản phẩm đang chọn
          </div>
          <div class="text-end p-10">
            <button type="button" class="btn">Xác nhận</button>
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              huỷ
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- order details modal -->
    <div
      class="modal fade"
      id="order-details"
      tabindex="-1"
      aria-labelledby="confirm-modal"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="row">
            <div class="col-md-12 mx-auto">
              <div class="order_review border-0">
                <div class="mb-20 d-flex justify-content-between">
                  <h4>Đơn đặt:<span class="text-brand"> DD00001</span></h4>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="table-responsive order_table text-center">
                  <table class="table">
                    <thead>
                      <tr>
                        <th colspan="2">Product</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="image product-thumbnail">
                          <img
                            src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
                            alt="#"
                          />
                        </td>
                        <td>
                          <h5>
                            <a href="shop-product-full.html"
                              >Yidarton Women Summer Blue</a
                            >
                          </h5>
                          <span class="product-qty align-middle"
                            ><i class="fa-regular fa-xmark"></i> 2</span
                          >
                        </td>
                        <td>180.000 đ</td>
                      </tr>
                      <tr>
                        <td class="image product-thumbnail">
                          <img
                            src="https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG"
                            alt="#"
                          />
                        </td>
                        <td>
                          <h5>
                            <a href="shop-product-full.html"
                              >LDB MOON Women Summe</a
                            >
                          </h5>
                          <span class="product-qty align-middle"
                            ><i class="fa-regular fa-xmark"></i> 2</span
                          >
                        </td>
                        <td>65.000 đ</td>
                      </tr>
                      <tr>
                        <td class="image product-thumbnail">
                          <img src="assets/imgs/shop/product-3-1.jpg" alt="#" />
                        </td>
                        <td>
                          <i
                            class="ti-check-box font-small text-muted mr-10"
                          ></i>
                          <h5>
                            <a href="shop-product-full.html"
                              >Women's Short Sleeve Loose</a
                            >
                          </h5>
                          <span class="product-qty align-middle"
                            ><i class="fa-regular fa-xmark"></i> 2</span
                          >
                        </td>
                        <td>35.000 đ</td>
                      </tr>
                      <tr>
                        <th>Tổng</th>
                        <td class="product-subtotal" colspan="2">280.000 đ</td>
                      </tr>
                      <tr>
                        <th>Phí vận chuyển</th>
                        <td colspan="2"><em>Miễn phí</em></td>
                      </tr>
                      <tr>
                        <th>Tổng thanh toán</th>
                        <td colspan="2" class="product-subtotal">
                          <span class="font-xl text-brand fw-900"
                            >280.000 đ</span
                          >
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="bt-1 border-color-1 mt-30 mb-30"></div>
                <div class="payment_method">
                  <div class="mb-25">
                    <h5>
                      Địa chỉ giao hàng:
                      <span class="text-brand"
                        >c3 Man Thiện, Hiệp Phú, Tp.Thủ Đức</span
                      >
                    </h5>
                  </div>
                </div>
                <div class="bt-1 border-color-1 mt-30 mb-30"></div>

                <div class="payment_method">
                  <div class="mb-25">
                    <h5>
                      Phương thức thanh toán:
                      <span class="text-brand">Thanh toán khi nhận hàng</span>
                    </h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
	<%@include file="./footer.jsp"%>
	<%@include file="./script.jsp"%>
</body>
</html>