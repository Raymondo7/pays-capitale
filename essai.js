const form = document.querySelectorAll('input');
//LE CODDE SUIVANT PERMET DE RECUPERER LE TOUT PREMIER ELEMENT DU NOM DE LA VALEUR DANS LES PARENTHESES
const form2 = document.querySelector('input');

form.forEach(i => {
    console.log(i);
})

//POUR RECUPERER UN ELEMENT PAR SON ID :
const element = document.getElementById('nom de l\'ID');

//POUR RECUPERER LES ELEMENTS PAR LA CLASSE :
const element2 = document.getElementsByClassName('nom de la classe');

//POUR PAR EXEMPLE MODIFIER LE TEXTE D'UNE BALISE ON FAIT CECI :
const constante = document.querySelector('option');
let texte = constante.innerText; //Recuperation du texte contenu dans la balise selectionnée
const Maj_text = texte.toUpperCase();
constante.innerText = Maj_text; //Pour reaffecter le texte modifié en majuscule à l'H1 et l'afficher dans le navigateur de html

//CREER OPTION DANS L'HTML AVEC LES ELEMENTS DU TABLEAU personnes
const div = document.querySelector('#selection')
const personnes = ['Kamdjou','Duplex','Tony'];

personnes.forEach(personne => {
    div.innerHTML += `<option>${personne}</option>`;
})

 //POUR CREER DIRECTEMENT UN ELEMENT HTML DEPUIS JS
 const variable = document.createElement('a');
 const body = document.querySelector('body');
 variable.href = '#';
 variable.innerText = 'ALLER NULLE PART';
 body.appendChild(variable);
console.log(variable);

//POUR RECUPERER L'ATTRIBUT ET LE MODIFIER 
const lien = document.querySelector('a');
const attribut = lien.getAttribute('href');
lien.setAttribute('href','https://wwww.google.com');
//console.log(attribut);

//POUR DONNER DES PROPRIETES CSS A UN ELEMENT 

const element3 = document.querySelector('p');
element3.style.color = 'Red';
element3.style.fontSize = '50px';
element3.style.textTransform = 'Capitalize';

//lien de recherche directe google
//https://www.google.com/search?q=signification+de+justin&sxsrf=AJOqlzVJTaEUnXOqsPtfuSOksWuXvkRWfw%3A1676142093985&ei=DebnY4_oO8KI8gKK5aCICg&ved=0ahUKEwjPouvwk479AhVChFwKHYoyCKEQ4dUDCA8&oq=signification+de+justin&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQDDIHCAAQDRCABDIGCAAQBxAeMgYIABAFEB4yCAgAEAUQHhAPMgkIABAIEB4Q8QQyCQgAEAgQHhDxBDIICAAQCBAeEA8yBggAEAgQHjoKCAAQRxDWBBCwAzoKCAAQBRAeEA0QDzoICAAQCBAeEA1KBAhBGABKBAhGGABQgQ9Yux1g1ipoAnABeACAAZMKiAHSEZIBCTQtMS4xLjAuMZgBAKABAcgBCMABAQ&sclient=gws-wiz-serp


