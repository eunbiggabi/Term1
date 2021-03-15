// let numGreeted = 0;

// function greet(name) {

//   if (name.length > 5) {
//     console.log(`Great to see you ${name}!`);
//   } else {
//     console.log(`Hey, ${name}, nice to meet you!`);
//   }
//    numGreeted++;

// }


// function showNumPeopleGreeted() {
//   console.log(`(greeted ${numGreeted} people)`);
// }


// greet("Lucas");
// greet("Dan");
// greet("Breanna");
// greet("Jonathan");
// greet("Felicity");
// greet("kyu")


// showNumPeopleGreeted();;


// weather = 28;

//     if (weather < 15) {
//         console.log("it's cold")
//     } else if(weather >= 15 && weather <=28) {
//         console.log("it's beautiful today")
//     } else {
//         console.log("it's hot")
//     }



// console.log();


// for (let i = 0; i < arr.length; i++) {
//     if(arr[i] > arr[i + 1]) {
//         wrongNum.push(arr[i + 1])
//     }
// }
// console.log(wrongNum);


// arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
// let i = 0

//  while (i < arr.size - 1 && arr[i] < arr[i + 1]) {

//      i += 1
//      if (i < arr.size - 1 && arr[i] > arr[i + 1])
        
//          x = arr[i]
//          arr[i] = arr[i + 1]
//          arr[i + 1] = x 
//          i = 0
  
//  }
// console.log(arr)

function sorter(arr) {

//     let letSwap;

//     for (let i = 0; i < arr.length; i++) {
//         if(arr[i] > arr[i + 1]) {
//             letSwap = arr[i]
//             arr[i] = arr[i + 1]
//             arr[i + 1] = letSwap
//             i = 0
//             // console.log(arr)
//         }
//     }
//    return arr;

    i = 0;
    let letSwap;

    while (i < arr.length) {
        i++
        if (arr[i] > arr[i + 1]) {
            letSwap = arr[i]
            arr[i] = arr[i + 1]
            arr[i + 1] = letSwap
            i = 0;
        }
    }
    return arr;
}

console.log(sorter([5, 22, 29, 39, 19, 51, 78, 96, 84]))


