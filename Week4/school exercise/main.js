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

// function sorter(arr) {

// //     let letSwap;

// //     for (let i = 0; i < arr.length; i++) {
// //         if(arr[i] > arr[i + 1]) {
// //             letSwap = arr[i]
// //             arr[i] = arr[i + 1]
// //             arr[i + 1] = letSwap
// //             i = 0
// //             // console.log(arr)
// //         }
// //     }
// //    return arr;

//     i = 0;
//     let letSwap;

//     while (i < arr.length) {
//         i++
//         if (arr[i] > arr[i + 1]) {
//             letSwap = arr[i]
//             arr[i] = arr[i + 1]
//             arr[i + 1] = letSwap
//             i = 0;
//         }
//     }
//     return arr;
// }

// console.log(sorter([5, 22, 29, 39, 19, 51, 78, 96, 84]))

// function names(arr) {
//     value = "Lin"
//     for (let i = 0; i < arr.length; i++) {
//         if (arr[i] === value.toLowerCase()) {
//             return "Found in array"
//         } else {
//             return  "Not found in array" 
//         }
//     }
// }

// function reverse(str) {

   
    // let rev = ""
    // for (let i = str.length-1; i >= 0; i--) {
    //     rev = rev + str[i]
    // }    
    // return rev;

    // let rev = ""
    // for (let i = 0; i < str.length; i++) {
    //     rev = str[i] + rev
    // }
    // return rev;

    // for (let char of str) {
    //     reverStr = char + reverStr
    // }
    // return reverStr
    // str.split("").forEach(char => reverStr = char + reverStr)
    // return reverStr;
    // const revSting = str.split("")
//     const revString = str.split("").reverse().join("");
//     return revString === str
// } 

// console.log(reverse("racar"))


// prime number

// for (let counter = 1; counter <= 100; counter++) {
//     for ( i = 1; i <= counter-1; i++){
//         if(counter % i == 0){
//             console.log(counter)
            
//         }
//     }
    
    
//     // const notPrime = false;

//     // for (let i = 2; i <= counter; i++) {
//     //     if (counter%i===0 && i!==counter) {
//     //         notPrime = true;
//     //     }
//     // }
//     // if (notPrime === false) {
//     //             console.log(counter);
//     // }
    
// }

//opposite way (!obj[friendId)

// function analyseFriends(friends) {
//   const obj = {};
//   let arr = [];
//   let highest = 0;

//   for (let i = 0; i < friends.length; i++) {
//     for (let j = 0; j < friends[i].length; j++) {
//       let friendsId = friends[i][j];

//       if (!obj[friendsId]) {
//         obj[friendsId] = 0;
//       }
//       obj[friendsId]++;

//       if (obj[friendsId] > highest) {
//         highest = obj[friendsId];
//       }
//     }
//   }

//   for (let key in obj) {
//     if (obj[key] === highest) {
//       arr.push(key);
//     }
//   }
//   return arr;
// }

// obj = {
//     name: "kyu",
//     last: "jeon"
// }

// if (obj["a"]) {
//     console.log("has name")
// } else {
//     console.log("no name")
// }

// function count_letter(input) {

//     let obj = {}

//     input.replace(" ","").split("").forEach(function(char) {
//         if(obj[char]){
//             obj[char]++
//         } else {
//             obj[char] = 1
//         }
//     })
//     return obj
// }

// console.log(count_letter("Hello World"));


// function showPrimeNum(num) {

//     function isPrimeNum(i) {
//         for(let j = 2; j < i; j++){
//             if(i % j === 0) {
//                 return false;
//             }
//         }
//         return true;
//     }

//     for (let i = 2; i <= num; i++) {
//         if(isPrimeNum(i)) {
//             console.log(i)
//         }
//     }
// }

// showPrimeNum(100);

function showPrimeNum(num) {

    function isPrimeNum(i) {
        for(let j = 2; j < i; j++){
            console.log(`${j} : ${i}`)
            // if(i % j === 0) {
            //     return false;
            // }
        }
        // return true;
    }

    for (let i = 2; i <= num; i++) {
        console.log((i))
        if(isPrimeNum(i)) {
            // console.log(i)
        }
    }
}

showPrimeNum(10);




