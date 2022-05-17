
// scroll down
$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop()) {
            $('header').addClass('sticky');
        }
        else {
            $('header').removeClass('sticky');
        }
    });
});
// slick slider
$(document).ready(function () {
    $(".tab-area").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: true,
        prevArrow:
            `<button type='button' class='slick-prev pull-left'><i class="fa-solid fa-chevron-left"></i></button>`,
        nextArrow:
            `<button type='button' class='slick-next pull-right'><i class="fa-solid fa-chevron-right"></i></button>`,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
});
// booking
window.onload = function () {
    var popup = document.getElementById('popup');
    var overlay = document.getElementById('backgroundOverlay');
    var openButton = document.getElementById('openOverlay');
    document.onclick = function (e) {
        if (e.target.id == 'backgroundOverlay') {
            popup.style.display = 'none';
            overlay.style.display = 'none';
        }
        if (e.target === openButton) {
            popup.style.display = 'block';
            overlay.style.display = 'block';
        }
    };
};
// booking seat
const seatItems = document.querySelectorAll(".seat-items");
const seatName = document.querySelector(".seat-name");
const seatPrice = document.querySelector(".seat-price");
const inputSeat = document.querySelector(".input_seat");
const inputPrice = document.querySelector(".input_price");
let seat = [];
[...seatItems].forEach(item => item.addEventListener("click", handleClick));
function handleClick(e) {
    if(e.target.getAttribute("class") === "seat-items booked") {}
    else {
        e.target.classList.toggle("free");
        e.target.classList.toggle("selected");
        const selectedSeat = document.querySelectorAll(".seat-items.selected");
        seatPrice.innerText = (selectedSeat.length * e.target.getAttribute("data-price")).toLocaleString();
        inputPrice.setAttribute("value", selectedSeat.length * e.target.getAttribute("data-price"));
        if (selectedSeat.length === 0) {
            seatName.textContent = '';
            seat = [];
        } else {
            let seatSelectedName = e.target.getAttribute("data-name");
            let index = seat.indexOf(seatSelectedName);
            if (seatSelectedName === e.target.innerText && seat.includes(seatSelectedName)) {
                seat.splice(index, 1);
            } else {
                seat.push(seatSelectedName);
            }
            seat.sort();
            seatName.innerText = seat.join(', ');
            inputSeat.setAttribute("value", seat);
        }
    }
}
const btnBooking = document.getElementById("seat_btn");
// check seat-name
btnBooking.addEventListener("click", function() {
    if(seatName.innerText==='' && seatPrice.innerText === '0') {
        alert("Bạn cần chọn ít nhất 1 ghế");
    }
})

// check seat booking db
const seatChecked = document.querySelectorAll(".checked");
let seat1 = [];
[...seatChecked].map(item => {
    const seatCheckedList = item.getAttribute("value");
    seat1.push(seatCheckedList);
});
let seat2 = [];
[...seatItems].map(item => {
    const seatItemsList = item.innerText;
    seat2.push(seatItemsList);
});
for(let i=0; i<seat2.length; i++) {
    if(seat1.includes(seat2[i])) {
        seatItems[i].classList.add("booked");
        seatItems[i].classList.remove("free");
    }
}

// checkout
const infoseat = document.querySelector('.info-seat');
const text = infoseat.innerText;
const checkoutSeat = text.split(","); 
for(i=0; i<checkoutSeat.length; i++) {
    document.querySelector(".input_info-seat").innerHTML += '<input type="hidden" name="' + checkoutSeat[i] + '" value="' + checkoutSeat[i] + '">';
}
