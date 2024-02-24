function saveAssessments(event) {
    event.preventDefault();
  
    var errMsg = document.getElementById("errRecaptcha");
    errMsg.innerHTML = "";
    var response = checkMathCaptcha();
    if (response != "Checked") {
      errMsg.innerHTML = "Opps! wrong captcha.";
      return false;
    }
  
    $("#submitAssessments span").html("Sending...");
    $("#submitAssessments").prop("disabled", true);
  
    $("body").append(
      '<div class="disScreen"><img src="/assets/images/ajax-loader.gif"></div>'
    );
    $.ajax({
      method: "POST",
      dataType: "json",
      url: "/sendAssessments/",
      data: $("#frmAssessments").serialize(),
    })
      .done(function (data) {
        let msgAssessments = document.querySelector("#msgAssessments");
        msgAssessments.innerHTML = "";
  
        let HaveAnyQuestion = document.createElement("div");
        HaveAnyQuestion.setAttribute("class", "HaveAnyQuestion");
        let HaveAnyQuestionSpan = document.createElement("span");
  
        if (data.savemsg == "Sent") {
          HaveAnyQuestionSpan.innerHTML =
            "Your request sent successfully to Support. They will contact you soon.";
        } else {
          HaveAnyQuestionSpan.setAttribute("class", "errorMsg");
          HaveAnyQuestionSpan.innerHTML =
            "Sorry! Your request could not sent to Support. Please try again.";
        }
        HaveAnyQuestion.appendChild(HaveAnyQuestionSpan);
        msgAssessments.appendChild(HaveAnyQuestion);
        $("#frmAssessments").find("select, input, textarea").val("");
  
        $("#submitAssessments span").html("Get Started");
        $("#submitAssessments").prop("disabled", false);
        if ($(".disScreen").length) {
          $(".disScreen").remove();
        }
      })
      .fail(function () {
        alert("Internet connection problem. Retry again.");
      });
    return false;
  }
  
  function sendContactUs(event) {
    //   alert("sending");
    event.preventDefault();
    var errMsg = document.getElementById("errRecaptcha");
    errMsg.innerHTML = "";
    // var response = checkMathCaptcha();
    // if (response != "Checked") {
    //   errMsg.innerHTML = "Opps! wrong captcha.";
    //   return false;
    // }
  
    $("#submitContact span").html("Sending...");
    $("#submitContact").prop("disabled", true);
  
    $("body").append(
      '<div class="disScreen"><img src="/assets/images/ajax-loader.gif"></div>'
    );
    $.ajax({
      method: "POST",
      dataType: "json",
      url: "/sendContactUs/",
      data: $("#contactUsForm").serialize(),
    })
      .done(function (data) {
        let msgContact = document.querySelector("#msgContact");
        msgContact.innerHTML = "";
  
        let HaveAnyQuestion = document.createElement("div");
        HaveAnyQuestion.setAttribute("class", "HaveAnyQuestion");
        let HaveAnyQuestionSpan = document.createElement("span");
  
        if (data.savemsg == "sent") {
          HaveAnyQuestionSpan.innerHTML =
            "Your request sent successfully to Support. They will contact you soon.";
          $("#contactUsForm").find("select, input, textarea").val("");
        } else {
          $("#submitContact span").html("Submit");
          $("#submitContact").prop("disabled", false);
          HaveAnyQuestionSpan.setAttribute("class", "errorMsg");
          HaveAnyQuestionSpan.innerHTML =
            "Sorry! Your request could not sent to Support. Please try again.";
        }
        HaveAnyQuestion.appendChild(HaveAnyQuestionSpan);
        msgContact.appendChild(HaveAnyQuestion);
  
        $("#submitAppointments span").html("Submit");
        $("#submitAppointments").prop("disabled", false);
        if ($(".disScreen").length) {
          $(".disScreen").remove();
        }
      })
      .fail(function () {
        alert("Internet connection problem. Retry again.");
      });
    return false;
  }
  
//   const searchIcon = document.getElementById("search-icon");
//   const searchPopup = document.getElementById("search-popup");
//   const closeSearch = document.getElementById("close-search");
  
//   const closeBtn = document.getElementById("close-btn");
//   let body = document.querySelector("body");
//   const dropBtn = document.getElementById("drop-btn");
//   const dropMenu = document.getElementById("drop-menu");
  
//   searchIcon.addEventListener("click", () => {
//     searchPopup.classList.add("popup-visible");
//   });
//   closeSearch.addEventListener("click", () => {
//     searchPopup.classList.remove("popup-visible");
//   });
  
  if (document.getElementById("mathCaptcha")) {
    mathCaptcha();
  }
  
  // ==================== Cart =====================
  $(document).ready(function () {
    // console.log("ready!");
    checkCartData();
  });
  
  function number_format(number) {
    const roundNumber = roundnum(number).toFixed(2);
    const parts = roundNumber.toString().split(".");
    return (
      parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") +
      (parts[1] ? "." + parts[1] : "")
    );
  }
  
  function roundnum(num, scale = 2) {
    let bkNum = num; // taken backup original num
    if (num < 0) {
      num = 0 - num;
    }
    if (!("" + num).includes("e")) {
      num = +(Math.round(num + "e+" + scale) + "e-" + scale);
    } else {
      let arr = ("" + num).split("e");
      let sig = "";
      if (+arr[1] + scale > 0) {
        sig = "+";
      }
      num = +(Math.round(+arr[0] + "e" + sig + (+arr[1] + scale)) + "e-" + scale);
    }
    if (bkNum < 0) {
      num = 0 - num;
    }
    return num;
  }
  
  function checkNumericInputOnKeydown(field) {
    field.addEventListener("keydown", function () {
      if (
        this.getAttribute("pattern") ||
        this.getAttribute("max") ||
        this.getAttribute("min")
      ) {
        let oldValue = this.value;
        setTimeout(() => {
          let invalidPattern = false;
          if (this.getAttribute("pattern"))
            invalidPattern = !RegExp(this.getAttribute("pattern")).test(
              this.value
            );
          let aboveMax = false;
          if (this.getAttribute("max"))
            aboveMax = Number(this.value) > Number(this.getAttribute("max"));
          let underMin = false;
          if (this.getAttribute("min"))
            underMin = Number(this.value) < Number(this.getAttribute("min"));
  
          if (invalidPattern || aboveMax || underMin) this.value = oldValue;
        }, 0);
      }
    });
  }
  
  function checkNumericField() {
    if (document.querySelectorAll(".numberField")) {
      document.querySelectorAll(".numberField").forEach((item) => {
        checkNumericInputOnKeydown(item);
      });
    }
  }
  
  function CMOpopup(regular_price, formhtml, callbackfunction) {
    function hidePopup() {
      Popup.remove();
      document.body.style.overflow = "auto";
    }
    const Popup = cTag("div", { id: "popup" });
    const PopupDialog = cTag("div", { id: "popupDialog" });
    const Header = cTag("header");
    const Title = cTag("h4");
    Title.innerText = "Menu Choice More";
    Header.appendChild(Title);
    const CloseBtn = cTag("span", { id: "closeBtn" });
    CloseBtn.innerText = "x";
    CloseBtn.addEventListener("click", hidePopup);
    Header.appendChild(CloseBtn);
    PopupDialog.appendChild(Header);
    const ErrorDisplayer = cTag("p", { id: "error_ChoiceMore", class: "hide" });
    PopupDialog.appendChild(ErrorDisplayer);
    const Content = cTag("div", { id: "popupContent" });
    Content.innerHTML = formhtml;
    PopupDialog.appendChild(Content);
    const Footer = cTag("footer");
    const ScrollDownIndicator = cTag("div", { id: "scrollDownIndicator" });
    ScrollDownIndicator.append(
      cTag("i", { class: "fa fa-arrow-down" }),
      "scroll down"
    );
    Footer.appendChild(ScrollDownIndicator);
    const CheckoutBtn = cTag("div", { id: "checkoutBtn" });
    const TotalPrice = cTag("span", {
      id: "totalCalculatedPrice",
      "data-regular_price": regular_price,
      style:
        "flex-grow:2;text-align:center;padding-right:5px;border-right:1px solid lightgray",
    });
    TotalPrice.innerText = `${currency}${regular_price}`;
    CheckoutBtn.append(TotalPrice);
    const CheckoutSpan = cTag("span", { style: "flex-grow:5;text-align:center" });
    CheckoutSpan.innerText = "Checkout";
    CheckoutBtn.append(CheckoutSpan);
    CheckoutBtn.addEventListener("click", () => {
      callbackfunction(hidePopup);
    });
    Footer.appendChild(CheckoutBtn);
    PopupDialog.appendChild(Footer);
    Popup.appendChild(PopupDialog);
    document.body.appendChild(Popup);
    //hide scrollDownIndicator if content fit into popup
    if (PopupDialog.clientHeight >= Content.scrollHeight)
      ScrollDownIndicator.style.display = "none";
    document.body.style.overflow = "hidden";
  }
  
  async function addToCart(services_id, name, regular_price, product_pic) {
    let newData = {};
    if (sessionStorage.getItem("cartsData") !== null) {
      newData = JSON.parse(sessionStorage.getItem("cartsData"));
    }
    let qty = 1;
    if (newData[services_id] !== undefined) {
      qty += parseInt(newData[services_id][0]["qty"]);
    }
  
    if (document.querySelector("#cartQty" + services_id)) {
      qty = parseInt(document.getElementById("cartQty" + services_id).value);
    }
  
    const prodInfo = { name, qty, regular_price, services_id, product_pic };
    let CMData = [];
    newData[services_id] = [prodInfo, CMData];
    sessionStorage.setItem("cartsData", JSON.stringify(newData));
    // if (returnYN == 0) {
    window.location = "/Checkout.html";
    // }
    checkCartData(1);
  
    return false;
  }
  
  function checkCartData(loadCart = 0) {
    let newData = {};
    if (sessionStorage.getItem("cartsData") !== null) {
      newData = JSON.parse(sessionStorage.getItem("cartsData"));
    }
  
    // console.log(newData);
  
    let headerCartStr = Object.keys(newData).length + " Item";
    if (Object.keys(newData).length > 1) {
      headerCartStr += "s";
    }
    $("#headerCartQty").html(Object.keys(newData).length);
    $("#cartQuantity").html(headerCartStr);
    $("#footerCart").html(Object.keys(newData).length);
  
    let cartHTML = "";
    let totalAmount = 0;
  
    if (Object.keys(newData).length > 0) {
      const cartMenu = document.querySelector(".cart-menu.shopping ul");
      cartMenu.innerHTML = "";
  
      // if (sessionStorage.getItem('pos_id')>0 && !document.getElementById("My_Order")){
      // 	cartMenu.innerHTML += '<li class="nav-item"><a title="My Order" id="My_Order" href="/My_Order"></a></li>';
      // }
  
      for (const [services_id, productInfos] of Object.entries(newData)) {
        let productInfo = productInfos[0];
        let CMData = productInfos[1];
  
        // console.log(productInfo)
        // {name: 'Cockroach', qty: 1, regular_price: 200, services_id: 11}
  
        let product_prices_id = parseInt(productInfo["product_prices_id"]);
        let minQty = parseFloat(productInfo["minQty"]);
        // let newsales_price = parseFloat(productInfo['newsales_price']);
        let newsales_price = parseFloat(productInfo["regular_price"]); //newsales_price
        let regular_price = parseFloat(productInfo["regular_price"]);
        let qty = parseFloat(productInfo["qty"]);
        let priceStr = "$" + number_format(roundnum(regular_price));
        let prod_img = productInfo["product_pic"];
        // console.log(prod_img);
  
        if (minQty > 1 && qty < minQty) {
          priceStr = "$" + number_format(roundnum(regular_price));
        }
  
        cartHTML += '<li><div><div class="flexGrow">';
  
        if (Object.keys(CMData).length > 0) {
          // cartHTML += `<h4 class="flex justifySpaceBetween pright15"><a href="${productInfo['services_id']}">${productInfo['name']}</a>
          //     <span class="quantity">
          //         ${priceStr}
          //     </span>
          // </h4><div class="pbottom10">`;
          // for(const [CMId, CMInfos] of Object.entries(CMData)) {
          //     let CMname = CMInfos['CMname'];
          //     let CMOData = CMInfos['CMOData'];
          //     if(Object.keys(CMOData).length>0){
          //         for(const [CMOId, CMOInfos] of Object.entries(CMOData)) {
          //             let name = CMOInfos['name'];
          //             let price = CMOInfos['price'];
          //             let priceStr = price;
          //             if(price !=''){
          //                 newsales_price += parseFloat(price);
          //                 regular_price += parseFloat(price);
          //                 priceStr = '+$'+number_format(roundnum(price));
          //             }
          //             cartHTML += `<div class="flex justifySpaceBetween alignCenter gap10 txtAsh txt16 pleft10 pright15">
          //                 <span>${name}</span>
          //                 <span>${priceStr}</span>
          //             </div>`;
          //         }
          //     }
          // }
          cartHTML += "</div>";
        } else {
          cartHTML += "<h4>" + productInfo["name"] + "</h4>";
        }
  
        let amount = qty * newsales_price;
        let salesPriceStr =
          "Price: " +
          number_format(roundnum(newsales_price)) +
          " x " +
          qty +
          " = $" +
          number_format(roundnum(amount));
        let hiddenPriceStr =
          '<br><span class="ps-product__del">Regular: <b>$' +
          regular_price +
          "</b></span>";
        if (minQty > 1 && qty < minQty) {
          amount = qty * regular_price;
          hiddenPriceStr =
            '<br><span class="ps-product__del">Discount: <b>$' +
            number_format(roundnum(newsales_price)) +
            "</b> Min-Qty " +
            minQty +
            "</span>";
          salesPriceStr =
            "Price: " +
            number_format(roundnum(regular_price)) +
            " x " +
            qty +
            " = $" +
            number_format(roundnum(amount));
        }
        if (product_prices_id == 0) {
          hiddenPriceStr = "";
        }
  
        totalAmount += amount;
        cartHTML +=
          '<p class="quantity pbottom0 mbottom0">' +
          //salesPriceStr+hiddenPriceStr
          salesPriceStr;
        ("</p></div>");
  
        //cartHTML += '<a class="cart-img" href="/'+productInfo['sku']+'"><img src="'+productInfo['defaultImageSRC']+'" alt="'+productInfo['name']+'"></a></div>';
  
        cartHTML +=
          '<a style="cursor: pointer;" class="remove" title="Remove this item">' +
          '<i class="fa fa-remove" id="Remove" onclick="RemoveCartItem(' +
          services_id +
          ')"></i>' +
          "</a>" +
          "</li>";
      }
      $("#CheckoutLink").prop("href", "/Checkout.html");
      if (
        document.querySelector("#CheckoutLink").classList.contains("disabled")
      ) {
        document.querySelector("#CheckoutLink").classList.remove("disabled");
      }
    } else {
      if (sessionStorage.getItem("pos_id") > 0) {
        $("#headerCart").prop("href", "/My_Order");
      } else {
        $("#headerCart").html('<span id="headerCartQty" class="ml-1">0</span>');
        $("#headerCart").prop("href", "/Checkout.html");
      }
  
      // $("#cartQuantity").html('0 Item');
      $("#CheckoutLink").prop("href", "javascript:void(0)");
      if (
        !document.querySelector("#CheckoutLink").classList.contains("disabled")
      ) {
        document.querySelector("#CheckoutLink").classList.add("disabled");
      }
    }
  
    $("#shoppingList").html(cartHTML);
    $("#totalAmount").html("$" + totalAmount.toFixed(2));
  
    if (loadCart == 1) {
      // document.querySelector('.cartPopupCloser').classList.remove('hide');
      const shoppingItem = document.querySelector("#shoppingItem");
      const cartMenuInfo = document
        .querySelector(".cart-menu.shopping")
        .getBoundingClientRect();
      setTimeout(() => {
        shoppingItem.style.top = cartMenuInfo.height + "px";
        if (cartMenuInfo.bottom < 0)
          shoppingItem.style.top =
            cartMenuInfo.height + Math.abs(cartMenuInfo.bottom) + "px";
      }, 16);
      clearTimeout(window.cartTimeoutID);
      window.setCartTimeout = () => {
        return setTimeout(function () {
          if (shoppingItem.classList.contains("activeCart"));
          shoppingItem.classList.remove("activeCart");
          shoppingItem.style.top = "";
          shoppingItem.removeAttribute("onmousemove");
          shoppingItem.removeAttribute("onmouseout");
        }, 1000);
      };
      window.cartTimeoutID = setCartTimeout();
  
      if (!shoppingItem.classList.contains("activeCart")) {
        shoppingItem.classList.add("activeCart");
        shoppingItem.style.top = "";
        shoppingItem.setAttribute(
          "onmousemove",
          `(()=>clearTimeout(window.cartTimeoutID))()`
        );
        shoppingItem.setAttribute(
          "onmouseout",
          `(()=>cartTimeoutID=setCartTimeout())()`
        );
      }
    }
  
    if (document.getElementById("checkOutCarts")) {
      // alert('checkOutCarts')
      let productNames = "";
      let shippingNegotiable = 0;
      let freeShippingStr;
  
      let checkOutCartsHTML =
        '<table width="100%" align="left" class="tableBorder">' +
        "<thead>" +
        "<tr>" +
        '<th class="bbottom" colspan="7">Order Information <span style="font-size:12px;">(you select below services for order)</span></th>' +
        "</tr>" +
        "</thead>" +
        "<tbody>";
  
      if (Object.keys(newData).length > 0) {
        let sl = 0;
  
        for (const [services_id, productInfos] of Object.entries(newData)) {
          sl++;
          let productInfo = productInfos[0];
          // console.log(productInfo)
          let CMData = productInfos[1];
          if (productNames != "") {
            productNames += ", ";
          }
          productNames += `${productInfo["name"]}`;
          // console.log(productNames)
          let product_prices_id = parseInt(productInfo["product_prices_id"]);
          let regular_price = parseFloat(productInfo["regular_price"]);
          let newsales_price = parseFloat(productInfo["newsales_price"]);
          let qty = parseFloat(productInfo["qty"]);
          let minQty = parseFloat(productInfo["minQty"]);
          let priceStr = "$" + number_format(roundnum(newsales_price));
          if (minQty > 1 && qty < minQty) {
            priceStr = "$" + number_format(roundnum(regular_price));
          }
          productNames += ` [${priceStr}]`;
          let productNameStr = "";
          let productImgStr = "";
  
          //#################### Checkout Product Images ##########################
          // let prodImg = 'pest.png';
          let prodImg = productInfo["product_pic"];
          // let defaultImageSRC = "website_assets/images/"+prodImg;
          let defaultImageSRC = prodImg;
  
          //###########################################################
          if (Object.keys(CMData).length > 0) {
            productImgStr = productInfo["product_pic"];
            console.log(productImgStr);
            productNameStr += `<h4>${productInfo["name"]} [${priceStr}]</h4>
                          <div  class="flexColumn txt16 pbottom10 pleft10">`;
            for (const [CMId, CMInfos] of Object.entries(CMData)) {
              let CMname = CMInfos["CMname"];
              let CMOData = CMInfos["CMOData"];
              if (Object.keys(CMOData).length > 0) {
                for (const [CMOId, CMOInfos] of Object.entries(CMOData)) {
                  let name = CMOInfos["name"];
                  let price = CMOInfos["regular_price"];
                  let priceStr = price;
                  if (price != "") {
                    newsales_price += parseFloat(price);
                    regular_price += parseFloat(price);
                    priceStr = "[+$" + number_format(roundnum(price)) + "]";
                  }
                  productNameStr += `<span> ${name} ${priceStr} </span>`;
                }
              }
            }
            productNameStr += "</div>";
          } else {
            productNameStr += "<h4>" + productInfo["name"] + "</h4>";
          }
          //##########################################################
  
          // let amount = qty * newsales_price;
          let amount = qty * regular_price;
          let salesPriceStr = number_format(roundnum(regular_price));
  
          if (minQty > 1 && qty < minQty) {
            amount = qty * regular_price;
            salesPriceStr = number_format(roundnum(regular_price));
          }
  
          let amountStr = number_format(roundnum(amount));
  
          checkOutCartsHTML +=
            `<tr>
                          <td style="width:10% !important;">
                              
                                  <div class="pleft0 pright0  placeCenter text-center">
                                      <img src="` +
            defaultImageSRC +
            `" style="width:150%;" alt="${productInfo["name"]}">
                                  </div>
              </td>
              <td style="width:77% !important;">
                                  
                                      <div class=" pleft0 pright0 col-md-9" style="margin-top:15px; margin-left:15px !important;">${productNameStr}</div>
              </td>
              <td style="width:20% !important;">
                                      <div class="" style="font-size:20px;">
                                          <span style="display:none;" >\$${salesPriceStr}</span>
                                          <input style="display:none;" type="number" class="numberField w6ch form-control pright0 height30 lineHeight30" min="0" max="999999.99" name="cartQty${services_id}" id="cartQty${services_id}" value="${qty}" onchange="UpdateCartQty(event,${services_id})">
                                          <span >\$ ${amountStr}</span>
                                      </div>
                                  
                                                     
                          </td>
                          <td width="50" style="vertical-align:top">
                              <input type="hidden" min="1" name="cartProductId[]" value="${services_id}">
                              <a style="cursor: pointer;" class="remove" title="Remove this item">
                                  <i class="fa fa-remove" id="Remove" onclick="RemoveCartItem(${services_id})"></i>
                              </a>
                          </td>
                      </tr>`;
          // totalAmount +=amount;
        }
      }
  
      let transport = 0;
      if (shippingNegotiable == 0) {
        freeShippingStr = "0.00 Tk";
      } else {
        freeShippingStr = "Negotiable";
        transport = 1;
      }
  
      let tax1 = totalAmount * 0.13;
      let grandTotalPrice = totalAmount + 1.99 + tax1;
      checkOutCartsHTML +=
        "</tbody>" +
        "<tbody>" +
        '<tr class="btop">' +
        '<td align="right" style="">&nbsp;</td><td align="right" style="width:75% !important;">Sub Total:</td><td class="text-right" style="width="15% !important;"><span style="">$' +
        number_format(roundnum(totalAmount).toFixed(2)) +
        "</span></td>" +
        "</tr>" +
        '<tr class="btop">' +
        '<td align="right" style="">&nbsp;</td><td align="right" style="width:75% !important;">Service Fee :</td><td class="text-right" style="15% !important;"><span style="">$1.99</span></td>' +
        "</tr>" +
        '<tr class="btop">' +
        '<td align="right" style="">&nbsp;</td><td align="right" style="width:75% !important;">HST 13% :</td><td class="text-right" style="15% !important;"><span style="">$' +
        number_format(roundnum(tax1).toFixed(2)) +
        "</span></td>" +
        "</tr>" +
        '<tr class="btop bbottom">' +
        '<td align="right" style="">&nbsp;</td><td align="right" style="width:75% !important;"><strong>Total:</td><td class="text-right" style="15% !important; "><span style="">$' +
        number_format(roundnum(grandTotalPrice).toFixed(2)) +
        "</span></strong></td>" +
        "</tr>" +
        "</tbody>" +
        "</table>" +
        `<input type="hidden" name="subTotalPrice" id="subTotalPrice" value="${totalAmount}">
              <input type="hidden" name="service_fee" id="service_fee" value="1.99">
              <input type="hidden" name="tax1" id="tax1" value="${tax1}">
              <input type="hidden" name="grandTotalPrice" id="grandTotalPrice" value="${grandTotalPrice}">
              <input type="hidden" name="productNames" id="productNames" value="${productNames.slice(
          0,
          -1
        )}">`;
  
      sessionStorage.setItem("grandTotalPrice", grandTotalPrice);
      sessionStorage.setItem("productNames", productNames);
  
      document.getElementById("amount_due").value = grandTotalPrice;
  
      $("#checkOutCarts").html(checkOutCartsHTML);
      checkNumericField();
      const CustomerDataAvailable = setCustomersdata();
      if (CustomerDataAvailable) checkRegistered();
  
      let intervalID = setInterval(() => {
        /*if(document.getElementById('paymentElement').innerHTML.length>1250){
                      document.getElementById('submitBtn').disabled = false;
                      console.log(document.getElementById('paymentElement').innerHTML.length)
                      clearInterval(intervalID);
                  }*/
      }, 500);
    }
  }
  
  function setCustomersdata() {
    if (sessionStorage.getItem("customersdata") !== null) {
      let customersdata = JSON.parse(sessionStorage.getItem("customersdata"));
      let branch = sessionStorage.getItem("branches_id");
      if (customersdata.name != undefined) {
        document.getElementById("name").value = customersdata.name;
      }
      if (customersdata.contact_no != undefined) {
        document.getElementById("phone_number").value = customersdata.contact_no;
      }
      if (customersdata.email != undefined) {
        document.getElementById("email").value = customersdata.email;
      }
      if (branch) {
        document.querySelectorAll('[name="branches_id"]').forEach((item) => {
          if (item.value == branch) item.checked = true;
        });
      }
  
      return true;
    }
  }
  
  function save_ChoiceMore() {
    const product_id = document.getElementById("product_id").value;
    let prodInfo = document.getElementById("product_price").value; //JSON.parse(document.getElementById('prodInfo').innerHTML);
    const returnYN = document.getElementById("returnYN").value;
  
    let newData = {};
    if (sessionStorage.getItem("cartsData") !== null) {
      newData = JSON.parse(sessionStorage.getItem("cartsData"));
    }
  
    newData[product_id] = [product_id, prodInfo];
    sessionStorage.setItem("cartsData", JSON.stringify(newData));
  
    checkCartData(1);
  }
  
  function cTag(tagName, attributes) {
    let node = document.createElement(tagName);
    if (attributes) {
      for (const [key, value] of Object.entries(attributes)) {
        if (typeof value == "function") node.addEventListener(key, value);
        else node.setAttribute(key, value);
      }
    }
    return node;
  }
  
  function selectSingleCMO(target) {
    const targetState = target.checked;
    target
      .closest(".CMOptions ul")
      .querySelectorAll('input[type="checkbox"]')
      .forEach((checkBox) => {
        checkBox.checked = false;
      });
    target.checked = targetState;
  }
  
  function removeErrorClass(target) {
    target.closest(".CMOptions ul").classList.remove("errorCMO");
    document.querySelector("#error_ChoiceMore").classList.add("hide");
  }
  
  /*async function sendContactUs(event) {
    event.preventDefault();
    let jsonData = {};
    document
      .getElementById("contactUsForm")
      .querySelectorAll("input,textArea")
      .forEach((item) => {
        jsonData[item.getAttribute("name")] = item.value;
      });
    if (!checkMathCaptcha()) {
      document
        .querySelector('#resultN[name="mathCaptcha"]')
        .classList.add("errorCaptcha");
      return;
    }
    const loader = document.querySelector("#showmessagehere");
    loadingActive(loader);
  
    const options = {
      method: "POST",
      body: JSON.stringify(jsonData),
      headers: { "Content-Type": "application/json" },
    };
    const url = "/sendContactUs";
    let data = await (await fetch(url, options).catch(handleErr)).json();
  
    if (data.code && data.code == 400) {
      connection_dialog(contactUs, event);
    } else {
      loader.innerHTML = "";
      const frmSubmitMessage = document.getElementById("frmSubmitMessage");
      if (frmSubmitMessage.classList.contains("txtGreen")) {
        frmSubmitMessage.classList.remove("txtGreen");
      }
      if (frmSubmitMessage.classList.contains("txtRed")) {
        frmSubmitMessage.classList.remove("txtRed");
      }
      if (data.returnStr == "sent") {
        frmSubmitMessage.classList.add("txtGreen");
        frmSubmitMessage.innerHTML =
          "We receipt your contact information. We will give you feedback soon.<br><br>";
        document
          .getElementById("contactUsForm")
          .querySelectorAll("input,textArea")
          .forEach((item) => {
            item.value = "";
          });
        document.contactUsForm.fname.focus();
      } else {
        frmSubmitMessage.classList.add("txtRed");
        frmSubmitMessage.innerHTML = data.returnStr + "<br><br>";
      }
    }
    return false;
  } */
  
  function checkOutStepsUpDown(idName, slideYN = 0) {
    // alert('test');
    if (document.querySelector("#" + idName).classList.contains("allow")) {
      if (document.querySelector("#" + idName).classList.contains("active")) {
        if (slideYN == 1) {
          $("#" + idName + " .step-details").slideUp("slow");
        }
        document.querySelector("#" + idName).classList.remove("active");
      } else {
        if (slideYN == 1) {
          $("#" + idName + " .step-details").slideDown("slow");
        }
        document.querySelector("#" + idName).classList.add("active");
      }
    }
  }
  
  function checkPayNowBtn() {
    document.getElementById("Field-numberInput").onload = function () {
      document.getElementById("submitBtn").disabled = false;
    };
  }
  
  // document.querySelector('div.navbar .toggle').addEventListener('click',()=>{
  // 	document.querySelector('div.navbar ul.navbar-nav').classList.toggle('visible');
  
  // })
  
  // document.querySelector('#side-menu-close').addEventListener('click',()=>{
  // 	document.querySelector('div.navbar ul.navbar-nav').classList.toggle('visible');
  
  // })
  
  // $(window).on('resize', function(){
  // 	setTimeout(function(){ test(); }, 500);
  // });
  
  // $(".navbar-toggler").click(function(){
  // 	setTimeout(function(){ test(); });
  // });
  
  $(document).ready(function () {
    if (document.querySelector("form#cateringBookingForm")) mathCaptcha();
    if (document.querySelector("form#contactUsForm")) mathCaptcha();
  
    //$("#background").css({width:$( document ).width(), height:$( document ).height()});
    // setTimeout(function(){ test(); });
  
    // $(".navbar-toggler").click(function() {
    // 	$(this).toggleClass("menu-expanded");
    // 	if($(this).hasClass("menu-expanded")){
    // 		$("#navbarSupportedContent").slideDown();
    // 	}
    // 	else{
    // 		$("#navbarSupportedContent").slideUp();
    // 	}
    // });
    // $(window).scroll(function (event) {
    // 	var scroll = $(window).scrollTop();
    // 	if (scroll > 160) {
    // 		$('.scroll-top').show();
    // 	} else {
    // 		$('.scroll-top').hide();
    // 	}
    // });
    // $('.scroll-top').on('click', function (e) {
    // 	e.preventDefault();
    // 	$('html,body').animate({ scrollTop: 0 }, 500);
    // });
  
    // if(document.querySelector('#menuSearch')){
    // 	$( "#menuSearch" ).autocomplete({
    // 		minLength: 0,
    // 		source:function (request, response) {
    // 			var menuSearch = request.term;
    // 			$.ajax({method: "POST", dataType: "json",
    // 				url: "/menuSearch/",
    // 				data: {"menuSearch":menuSearch},
    // 			})
    // 			.done(function( data ) {
    // 				response(data);
    // 			})
    // 			.fail(function() {
    // 				$("#showmessagehere").html('<div class="col-xs-12 col-sm-12 col-md-12"><div class="bs-callout bs-callout-info well error_msg">Internet connection problem</div></div>').fadeIn(500);
    // 				setTimeout(function() {$("#showmessagehere").slideUp(500);},5000);
    // 			});
    // 		},
    // 		focus: function( event, ui ) {
    // 			return false;
    // 		},
    // 		select: function( event, ui ) {
    // 			$(this).val(ui.item.label);
    // 			window.location = '/'+ui.item.uri;
    // 			return false;
    // 		}
    // 	});
    // }
  });
  
  if ($(".quantity-spinner").length > 0) {
    $(".quantity-spinner .minus").click(function () {
      const qtyObj = $(this).next("input");
      let qty = parseInt(qtyObj.val());
      if (isNaN(qty)) {
        qty = 0;
      }
      qty--;
      if (qty <= 0) {
        qty = 1;
      }
      qtyObj.val(qty);
    });
    $(".quantity-spinner .cartQty").keyup(function () {
      const qtyObj = $(this);
      let qty = parseInt(qtyObj.val());
      if (isNaN(qty)) {
        qty = 0;
      }
      let maxQty = parseInt(qtyObj.prop("max"));
      if (isNaN(maxQty)) {
        maxQty = 999;
      }
      if (maxQty < qty) {
        qty = maxQty;
      }
      qtyObj.val(qty);
    });
    $(".quantity-spinner .plus").click(function () {
      const qtyObj = $(this).prev("input");
      let qty = parseInt(qtyObj.val());
      if (isNaN(qty)) {
        qty = 0;
      }
      qty++;
      if (qty <= 0) {
        qty = 1;
      }
      qtyObj.val(qty);
    });
  }
  
  function hideShoppingCartPopup() {
    document.querySelector(".cartPopupCloser").classList.add("hide");
    const shoppingItem = document.getElementById("shoppingItem");
    shoppingItem.classList.remove("activeCart");
    shoppingItem.style.display = "none";
    setTimeout(() => {
      shoppingItem.removeAttribute("style");
    }, 16);
  }
  
  // --------------add active class-on another-page move----------
  jQuery(document).ready(function ($) {
    //adding close-button for cart-popup
    document.getElementById(
      "cartQuantity"
    ).parentNode.innerHTML += `<span onclick="hideShoppingCartPopup(event)" class="cartPopupCloser hide">x</span>`;
  
    checkCartData();
    if (document.getElementById("myOrderCarts")) generetMyOrderForm();
  
    // Get current path and find target link
    var path = window.location.pathname.split("/").pop();
  
    // Account for home page with empty path
    if (path == "") {
      path = "index.html";
    }
  
    var target = $('#navbarSupportedContent ul li a[href="' + path + '"]');
    // Add active class to target link
    target.parent().addClass("active");
  });
  
  function generetMyOrderForm() {
    //counter related info
    const titleField = document.querySelector("#readyForPickup");
    const minuteField = document.querySelector(".timerColumn #minutes");
    const secondField = document.querySelector(".timerColumn #seconds");
    const trackField = document.querySelector("#readyForTrack");
  
    const customer_name_conf = document.querySelector("#customer_name_conf");
    const customer_email_conf = document.querySelector("#customer_email_conf");
    const customer_order_track_no_conf = document.querySelector(
      "#customer_order_track_no_conf"
    );
  
    let orderMoment = Number(Date.now());
    let deliveryTimes = Number(15 * 60);
  
    const options = {
      method: "POST",
      body: JSON.stringify({ pos_id: sessionStorage.getItem("pos_id") }),
      headers: { "Content-Type": "application/json" },
    };
  
    console.log(sessionStorage.getItem("pos_id"));
  
    fetch("/getPOSInfo", options)
      .then((response) => response.json())
      .then((data) => {
        let totalAmount = 0;
        let newData = data.posData.cartData;
        let posData = data.posData.posData;
        let customerOrderTrack = posData.invoice_no;
        let persData = data.customerData;
        let sales_datetime = posData["sales_datetime"];
        let customerName = persData.name;
        let customerEmail = persData.email;
  
        console.log(persData);
  
        customer_name_conf.innerText = customerName;
        customer_email_conf.innerText = customerEmail;
        customer_order_track_no_conf.innerText = customerOrderTrack;
  
        if (posData.is_due == 1 && posData.order_status == 1) {
          trackField.classList.add("textBlinking");
          customer_order_no_conf.innerText = customerOrderTrack;
          // setTimeout(function() {
          // 	generetMyOrderForm();
          // },5000);
          return false;
        } else {
          titleField.classList.remove("textBlinking");
          titleField.innerText = "";
        }
  
        orderMoment = Number(new Date(sales_datetime).getTime());
        let pickup_minutes = parseInt(posData["pickup_minutes"]);
        deliveryTimes = Number(pickup_minutes * 60);
  
        let checkOutCartsHTML =
          '<div width="100%" class="bg-success text-center text-white" style="margin-top:10px; margin-bottom:10px;">Successfully Places Your Order</div>' +
          '<table width="100%" align="left" class="tableBorder" style="margin-top:10px;">' +
          "<thead>" +
          "<tr>" +
          '<th class="bbottom" colspan="7">Order Information Details:</th>' +
          "</tr>" +
          "</thead>" +
          '<tbody class="btop bbottom">';
  
        let shippingNegotiable = 0;
        if (Object.keys(newData).length > 0) {
          let sl = 0;
          for (const [product_id, productInfos] of Object.entries(newData)) {
            sl++;
            let productInfo = productInfos.cartRow;
            let CMData = productInfos.cartCMOData;
  
            let services_id = parseInt(productInfo["services_id"]);
            let regular_price = parseFloat(productInfo["regular_price"]);
            let newsales_price = parseFloat(productInfo["sales_price"]);
            let qty = parseFloat(productInfo["qty"]);
            let minQty = parseFloat(productInfo["minQty"]);
            let priceStr = "$" + number_format(roundnum(newsales_price));
            if (minQty > 1 && qty < minQty) {
              priceStr = "$" + number_format(roundnum(newsales_price));
            }
            let productNameStr = "";
            if (Object.keys(CMData).length > 0) {
              productNameStr += `<h4>${productInfo["description"]}
                              [${priceStr}]
                          </h4><div  class="flexColumn txt16 pbottom10 pleft10">`;
              for (const [CMId, CMInfos] of Object.entries(CMData)) {
                let CMOData = JSON.parse(CMInfos["choice_more_options"]).CMOData;
                if (Object.keys(CMOData).length > 0) {
                  for (const [CMOId, CMOInfos] of Object.entries(CMOData)) {
                    let name = CMOInfos["name"];
                    let price = CMOInfos["regular_price"];
                    let priceStr = price;
                    if (price != "") {
                      newsales_price += parseFloat(price);
                      regular_price += parseFloat(price);
                      priceStr = "[+$" + number_format(roundnum(price)) + "]";
                    }
                    productNameStr += `<span> ${name} ${priceStr} </span>`;
                  }
                }
              }
              productNameStr += "</div>";
            } else {
              productNameStr += "<h4>" + productInfo["description"] + "</h4>";
            }
  
            let amount = qty * newsales_price;
            let salesPriceStr = number_format(roundnum(newsales_price));
  
            if (minQty > 1 && qty < minQty) {
              amount = qty * newsales_price;
              salesPriceStr = number_format(roundnum(newsales_price));
            }
            let amountStr = number_format(roundnum(amount));
  
            checkOutCartsHTML += `<tr>
                          <td colspan="3">
                              <div class="row gap2" >
                                  <div class="col-sm-3 placeCenter cart-img">
                                      <img src="${productInfo.prodPictures[0][1]}" alt="${productInfo["description"]}" style="width:70% !important;">
                                  </div>
                                  <div class="row col-sm-9 placeCenter" style="padding-right:0px;">
                                      <div class="col-md-8 pt-3">${productNameStr}</div>
                                      <!--div class="flex gap10 col-md-4">
                                          $${salesPriceStr} x ${qty} = ${amountStr}
                                      </div-->
                                      <div class="text-right col-md-4 mt-3" style="padding-right:10px; font-size:20px; font-weight:600;">
                                          ${amountStr}
                                      </div>
                                  </div>
                              </div>                        
                          </td>                
                      </tr>`;
            totalAmount += amount;
          }
        }
  
        let transport = 0;
        if (shippingNegotiable == 0) {
          freeShippingStr = "0.00 Tk";
        } else {
          freeShippingStr = "Negotiable";
          transport = 1;
        }
        let total = totalAmount + 1.99 + totalAmount * 0.13;
  
        checkOutCartsHTML +=
          "</tbody>" +
          '<tbody class="text-right">' +
          '<tr class="btop bbottom">' +
          '<th align="right" tyle="width:10% !important;">&nbsp;</th><th align="right" style="width:85% !important;">Sub Total:</th><th align="right" style="padding-right:20px !important;"><span style="">$' +
          number_format(roundnum(totalAmount).toFixed(2)) +
          "</span></th>" +
          "</tr>" +
          '<tr class="btop bbottom">' +
          '<th align="right">&nbsp;</th><th align="right">Service Fee :</th><th align="right" style="padding-right:20px !important;"><span style="">$1.99</span></th>' +
          "</tr>" +
          '<tr class="btop bbottom">' +
          '<th align="right">&nbsp;</th><th align="right">HST 13% :</th><th align="right" style="padding-right:20px !important;"><span style="">$' +
          number_format(roundnum(totalAmount * 0.13).toFixed(2)) +
          "</span></th>" +
          "</tr>" +
          '<tr class="btop bbottom">' +
          '<th align="right">&nbsp;</th><th align="right">Total:</th><th align="right" style="padding-right:20px !important;"><span style="">$' +
          number_format(roundnum(total).toFixed(2)) +
          "</span></th>" +
          "</tr>" +
          "</tbody>" +
          "</table>" +
          '<span style="font-size:15px; color:#0091d7;">By click on the [Capture This Invoice] button you can take a snapshot of this page for future reference</span><br>' +
          '<button type="button" class="btn btn-success txt24 mtop10" onClick="orderCapture();" id="btnCapture">[ Capture This Invoice ]</button>&nbsp;&nbsp;' +
          '<button type="button" class="btn btn-warning txt24 mtop10" onClick="clearCache();">Complete & Back Home</button>';
  
        $("#myOrderCarts").html(checkOutCartsHTML);
  
        const locationHTML = `<h5>               
              ${data.branchesData.name}
              </h5>
              <p>               
                  <strong>Address: </strong> ${data.branchesData.address}
              </p>
              <p>${data.branchesData.google_map}</p>
              <!--p>               
                  <strong>Schedules: </strong><br>
                  ${data.branchesData.working_hours}
              </p-->`;
  
        document.querySelector("#addressInformation").innerHTML = locationHTML;
  
        if (posData.is_due == 1 && posData.order_status == 1) {
          titleField.classList.add("textBlinking");
          titleField.innerText = "Your Order is waiting for Review";
          setTimeout(function () {
            generetMyOrderForm();
          }, 5000);
          return false;
        } else {
          titleField.classList.remove("textBlinking");
          titleField.innerText = "Ready for provide service within";
        }
  
        if (posData.order_status == 3) {
          titleField.classList.add("textBlinking");
          titleField.innerText = "Your Order has been CANCELLED";
          return false;
        }
  
        const deliveryTimePassed =
          (Date.now() - orderMoment) / 1000 > deliveryTimes;
        if (!deliveryTimePassed) setTimeout(counting, 0);
        else {
          titleField.classList.add("textBlinking");
          titleField.innerText = "Your order is approved";
        }
      });
  
    function counting() {
      const passedTime = Number(((Date.now() - orderMoment) / 1000).toFixed());
      const remainingTime = deliveryTimes - passedTime;
      if (remainingTime >= 0) {
        const { minutes, seconds } = convertTime(remainingTime);
        minuteField.innerText = minutes > 9 ? minutes : `0${minutes}`;
        secondField.innerText = seconds > 9 ? seconds : `0${seconds}`;
        setTimeout(counting, 1000);
      } else {
        titleField.classList.add("textBlinking");
        titleField.innerText = "Your Order is waiting for Review";
      }
    }
  
    function convertTime(time) {
      let minutes = parseInt(time / 60);
      let seconds = parseInt(time % 60);
      return { minutes, seconds };
    }
  }
  
  function orderCapture() {
    console.error("capture");
    const captureElement = document.querySelector("#capture"); // Select the element you want to capture. Select the <body> element to capture full page.
    html2canvas(captureElement)
      .then((canvas) => {
        canvas.style.display = "none";
        document.body.appendChild(canvas);
        return canvas;
      })
      .then((canvas) => {
        const image = canvas.toDataURL("image/png");
        const a = document.createElement("a");
        a.setAttribute("download", "my-image.png");
        a.setAttribute("href", image);
        a.click();
        canvas.remove();
      });
  }
  
  // const btn = document.querySelector('#btnCapture')
  // btn.addEventListener('click', capture)
  
  // var j = jQuery.noConflict();
  // "use strict";
  // var pathArray = window.location.pathname.split('/');
  // var segment1 = '';
  // var segment2 = 'lists';
  // var segment3 = '1';
  // if(pathArray.length>1){
  // 	segment1 = pathArray[1];
  // 	if(pathArray.length>2){
  // 		segment2 = pathArray[2];
  // 		if(pathArray.length>3){segment3 = pathArray[3];}
  // 	}
  // }
  
  var calenderDate = "dd-mm-yyyy";
  
  function loadDateFunction() {
    if (jQuery(".DateField").length) {
      var dateformat = "dd-mm-yy";
      jQuery(".DateField").datepicker({
        dateFormat: dateformat,
        autoclose: true,
        onSelect: function (date, inst) {
          var selectedDay = inst.selectedDay
            .replace('<font style="vertical-align: inherit;">', "")
            .replace("</font>", "");
          selectedDay = selectedDay
            .replace('<font style="vertical-align: inherit;">', "")
            .replace("</font>", "");
          selectedDay = ("0" + selectedDay).slice(-2);
  
          var selectedMonth = inst.selectedMonth + 1;
          selectedMonth = ("0" + selectedMonth).slice(-2);
  
          var selectedYear = inst.selectedYear;
          if (calenderDate.toLowerCase() == "dd-mm-yyyy") {
            var dateVal = selectedDay + "-" + selectedMonth + "-" + selectedYear;
          } else {
            var dateVal = selectedMonth + "/" + selectedDay + "/" + selectedYear;
          }
          jQuery(this).val(dateVal);
        },
      });
    }
  }
  
  loadDateFunction();
  
  function calculateByCMOprice() {
    const totalCalculatedPrice = document.getElementById("totalCalculatedPrice");
    const regular_price = Number(
      totalCalculatedPrice.getAttribute("data-regular_price")
    );
    const checkedOptions = [
      ...document.querySelectorAll(
        '#frmChoiceMore .CMOptions input[type="checkbox"]'
      ),
    ].filter((option) => option.checked);
    const total = checkedOptions.reduce((total, item) => {
      if (item.checked) {
        const CMOprice = Number(
          item.closest("li").querySelector(".CMOprice").innerText
        );
        total += CMOprice;
      }
      return total;
    }, regular_price);
    totalCalculatedPrice.innerText = `${currency}${total.toFixed(2)}`;
  }
  
  function clearCache() {
    if (sessionStorage.getItem("pos_id")) {
      sessionStorage.removeItem("pos_id");
    }
    if (sessionStorage.getItem("deliveryTimes")) {
      sessionStorage.removeItem("deliveryTimes");
    }
  
    if (sessionStorage.getItem("customersdata")) {
      sessionStorage.removeItem("customersdata");
    }
    if (sessionStorage.getItem("cartsData")) {
      sessionStorage.removeItem("cartsData");
    }
    window.location = "/";
  }
  
  function RemoveCartItem(product_id) {
    let newData = {};
    if (sessionStorage.getItem("cartsData") !== null) {
      newData = JSON.parse(sessionStorage.getItem("cartsData"));
      if (newData[product_id] !== undefined) {
        delete newData[product_id];
      }
    }
    sessionStorage.setItem("cartsData", JSON.stringify(newData));
    checkCartData();
    // checkBranches();
  }
  
  function UpdateCartQty(event, product_id) {
    if (document.getElementById("cartQty" + product_id)) {
      let qty = parseFloat(document.getElementById("cartQty" + product_id).value);
      if (isNaN(qty)) {
        qty = 1;
      }
      let newData = {};
      if (sessionStorage.getItem("cartsData") !== null) {
        newData = JSON.parse(sessionStorage.getItem("cartsData"));
        if (newData[product_id] !== undefined) {
          newData[product_id][0]["qty"] = qty;
        }
      }
      sessionStorage.setItem("cartsData", JSON.stringify(newData));
      checkCartData();
    }
    document.getElementById("cartQty" + product_id).focus();
    checkBranches();
  }
  
  // ==================== Cart =====================
  


(function($) {

   "use strict";

   var isMobile = {
       Android: function() {
           return navigator.userAgent.match(/Android/i);
       },
           BlackBerry: function() {
           return navigator.userAgent.match(/BlackBerry/i);
       },
           iOS: function() {
           return navigator.userAgent.match(/iPhone|iPad|iPod/i);
       },
           Opera: function() {
           return navigator.userAgent.match(/Opera Mini/i);
       },
           Windows: function() {
           return navigator.userAgent.match(/IEMobile/i);
       },
           any: function() {
           return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
       }
   };



   $('nav .dropdown').hover(function(){
       var $this = $(this);
       // 	 timer;
       // clearTimeout(timer);
       $this.addClass('show');
       $this.find('> a').attr('aria-expanded', true);
       // $this.find('.dropdown-menu').addClass('animated-fast fadeInUp show');
       $this.find('.dropdown-menu').addClass('show');
   }, function(){
       var $this = $(this);
           // timer;
       // timer = setTimeout(function(){
           $this.removeClass('show');
           $this.find('> a').attr('aria-expanded', false);
           // $this.find('.dropdown-menu').removeClass('animated-fast fadeInUp show');
           $this.find('.dropdown-menu').removeClass('show');
       // }, 100);
   });


   $('#dropdown04').on('show.bs.dropdown', function () {
     console.log('show');
   });

  




 $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
   disableOn: 700,
   type: 'iframe',
   mainClass: 'mfp-fade',
   removalDelay: 160,
   preloader: false,

   fixedContentPos: false
 });



 // Spinner
 var spinner = function () {
    setTimeout(function () {
        if ($('#spinner').length > 0) {
            $('#spinner').removeClass('show');
        }
    }, 1);
};
spinner(0);

 // Initiate the wowjs
 new WOW().init();

 // Testimonial carousel
 $(".testimonial-carousel").owlCarousel({
    autoplay: true,
    smartSpeed: 1500,
    center: true,
    dots: true,
    loop: true,
    margin: 50,
    nav : true,
    navText : [
        '<i class="bi bi-arrow-left"></i>',
        '<i class="bi bi-arrow-right"></i>'
    ],
    responsiveClass: true,
    responsive: {
        0:{
            items:1
        },
        576:{
            items:1
        },
        768:{
            items:2
        },
        992:{
            items:2
        },
        1200:{
            items:3
        }
    }
});




})(jQuery);

