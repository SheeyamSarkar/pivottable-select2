
let sidbarMenuId;
// $('.closeNav').click(function () {
//     $(`#${sidbarMenuId}`).css({ 'left': '-24rem', "transition": "0.5s" });
//     $('.main-section').css({ 'padding-left': '120px' })
// })


// $('.sideLi button').click(function () {
//     $('.sideMenuIcon').removeClass('sideMenuIconActive');
//     $(this).children().addClass('sideMenuIconActive');


//     $('.expansion-sidebar').css({ 'left': '-24rem', "transition": "0s" });
//     sidbarMenuId = $(this).data('target');
//     $(`#${sidbarMenuId}`).css({ 'left': '11rem', "transition": "0.5s" });

//     $('.main-section').css({ 'padding-left': '356px' })
// })

$('.closeNav').click(function () {
    $(`#${sidbarMenuId}`).removeClass('active');
    $('.main-section').removeClass('active')
})


$('.sideLi button').click(function () {
    $('.sideMenuIcon').removeClass('sideMenuIconActive');
    $(this).children().addClass('sideMenuIconActive');


    sidbarMenuId = $(this).data('target');
    $(`#${sidbarMenuId}`).siblings().removeClass('active');
    $(`#${sidbarMenuId}`).addClass('active');

    $('.main-section').addClass('active')
})



// Theme Changes Js
$('.settingsAction').click(function () {

    $('.overlay-close').css({ 'display': 'block' });
    $('.themePanel').css({ 'right': '0' });

})


$('.overlay-close').click(function () {
    $('.overlay-close').css({ 'display': 'none' });
    $('.themePanel').css({ 'right': '-55rem' });
})


var themeColor = [
    {
        backgroundColor: "#1A1A1A",
        componentBgColor: "#262626",
        fontsActiveColor: "#FFFFFF",
        fontsInActiveColor: "#BDBDBD",
        iconActiveColor: "#F9BD35",
        inconInActiveColor: "#828282",
        iconHoverColor: "#373737"
    },
    {
        backgroundColor: "#16182C",
        componentBgColor: "#1E2240",
        fontsActiveColor: "#FFFFFF",
        fontsInActiveColor: "#AEAED6",
        iconActiveColor: "#35EDF9",
        inconInActiveColor: "#74759F",
        iconHoverColor: "#383968"
    }

]


$('.theme-box').click(function () {



    themeColorChange($(this).data("theme"));

    $('.theme-box>div').removeClass('activeTheme');

    $($(this).children('div').addClass('activeTheme'))


    localStorage.setItem("themeColorId", $(this).data("theme"))

})



$(document).ready(function () {

    let themeColorId = localStorage.getItem("themeColorId");

    if (themeColorId !== null) {
        themeColorChange(themeColorId)
        $('.theme-box>div').removeClass('activeTheme');

        $(".theme-box[data-theme='" + themeColorId + "']").children('div').addClass('activeTheme');


    }


});


function themeColorChange(index) {
    document.documentElement.style.setProperty('--backgroundColor', themeColor[index].backgroundColor)
    document.documentElement.style.setProperty('--componentBgColor', themeColor[index].componentBgColor)
    document.documentElement.style.setProperty('--fontsActiveColor', themeColor[index].fontsActiveColor)
    document.documentElement.style.setProperty('--fontsInActiveColor', themeColor[index].fontsInActiveColor)
    document.documentElement.style.setProperty('--iconActiveColor', themeColor[index].iconActiveColor)
    document.documentElement.style.setProperty('--inconInActiveColor', themeColor[index].inconInActiveColor)
    document.documentElement.style.setProperty('--iconHoverColor', themeColor[index].iconHoverColor)

}



// Login Page Password Toggle

$('.passToggleLogin1Btn').click(function () {

    if ($(".loginPassword").attr("type") === "password") {
        $(".loginPassword").attr("type", "text");
    } else {
        $(".loginPassword").attr("type", "password");
    }
})


// Recovery Password New and Confirm Toggle Icon

$('.passToggleLogin1BtnNew').click(function () {
    if ($(".newPassword").attr("type") === "password") {
        $(".newPassword").attr("type", "text");
    } else {
        $(".newPassword").attr("type", "password");
    }
})

$('.passToggleLogin1BtnConf').click(function () {
    if ($(".confirmPassword").attr("type") === "password") {
        $(".confirmPassword").attr("type", "text");
    } else {
        $(".confirmPassword").attr("type", "password");
    }
})


// edit profile image 
$('#fileUpload').change(function () {
    const url = window.URL.createObjectURL(this.files[0]);
    $('#uplodedImg').attr('src', url);
})

// fileUpload.onchange = evt => {
//     const [file] = fileUpload.files
//     if (file) {
//         uplodedImg.src = URL.createObjectURL(file)
//     }
//   }




$('.multilevelMenu a').click(function () {

    if ($(this).children('.activeArrowIcon').length === 0) {
        $(this).children('svg').addClass('activeArrowIcon');
    } else {
        $(this).children('svg').removeClass('activeArrowIcon');
    }

    $(this).siblings('ul').toggle().removeClass('d-none');

})