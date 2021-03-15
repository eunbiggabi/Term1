// Hamburger menu 


let hamburger = document.getElementById("hamburger-menu")

hamburger.addEventListener("click", () => {
    let menu = document.getElementById("menu")
    menu.classList.toggle("hidden")
})


// Auto scroll 

const navbarMenu = document.querySelector(".navbar__menu")

navbarMenu.addEventListener("click", (event) => {
    const target = event.target;
    const link = target.dataset.link;

    if (link == null) {
        return; 
    }

    console.log(event.target.dataset.link);
    const scrollTo = document.querySelector(link);
    scrollTo.scrollIntoView({behavior: "smooth"})
})

