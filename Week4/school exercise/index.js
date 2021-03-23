// function facebook_likes(names) {
//     for (i = 0 ; i < names.length; i++) {
//         if(names.length === 0) {
//             console.log("no one likes this");
//         } else if (names.length === 1) {
//             console.log(`${names[0]} likes this`)
//         } else if (names[i].length === 2) {
//             console.log(`${names[0]} and ${names[1]} likes this`)
//         } else {
//             console.log(`${names.slice(-1)}, ${names.slice(-2)} and other ${names.length} likes this`)
//         }
//         console.log(names.length)
         
//     }
// }

// function facebook_likes(names) {

//     names.forEach(function(name) {
//         console.log(name)
//     })
// }

// facebook_likes(["Alex"])

// facebook_likes([])

// facebook_likes(["Alex", "Nandini"])

// facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"])

// let kyu = []
// console.log(kyu === false)

let numGreeted = 0

function greeted (name) {
    console.log(`hello, this is ${name}`)
    numGreeted++
}

greeted(2);
greeted(2);
greeted("kyu");
greeted("kyu");
greeted("kyu");
greeted("kyu");
console.log(numGreeted)