// JavaScript Document
let menu = document.querySelector('#menu-bar');
let navbar = document.querySelector('.navbar');

menu.onclick = () =>{

  menu.classList.toggle('fa-times');
  navbar.classList.toggle('active');

}

window.onscroll = () =>{

  menu.classList.remove('fa-times');
  navbar.classList.remove('active');

  if(window.scrollY > 60){
    document.querySelector('#scroll-top').classList.add('active');
  }else{
    document.querySelector('#scroll-top').classList.remove('active');
  }

}

let cate = document.querySelector(".box-container")
console.log(cate)

fetch('http://localhost:3000/category')
  .then(res => res.json())
  .then(data => {
    var html = ""
    data.map(cate => {
      let element = `<div class="box">
          <span class="price"> ${cate.price} </span>
          <img src="${cate.description}" style="width: 100px; height: 100px" alt="">
          <h3>${cate.title}</h3>
          <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
          </div>
          <a href="#" class="btn">order now</a>
      </div>`
      html += element
    });
    cate.innerHTML = html
  })

