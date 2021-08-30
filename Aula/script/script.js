var imgs = ["html.png", "html.png", "css.png", "css.png", "js.png", "js.png", "python.jpg", "python.jpg"]


function flipCard(qual){
    let card = document.getElementById(qual.id);

    card.frente = imgs[Math.floor(Math.random()*8)]
    card.verso = "ponto.png"
    card.setAttribute("style", "background-image: url(../img/"+card.frente+");");
}