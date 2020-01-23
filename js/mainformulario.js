
// Your web app's Firebase configuration
var firebaseConfig = {
    apiKey: "AIzaSyDCf0l8yzcCd-66PszmoJocne9IDG9awyc",
    authDomain: "sipc-c6da0.firebaseapp.com",
    databaseURL: "https://sipc-c6da0.firebaseio.com/",
    projectId: "sipc-c6da0",
    storageBucket: "sipc-c6da0.appspot.com",
    messagingSenderId: "37122009912",
    appId: "1:37122009912:web:186a2a40710a47c419afcd",
    measurementId: "G-08PKHTTYWQ"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);


// Reference mensajes collection
var mensajesRef = firebase.database().ref('mensajes');

// Listen for form submit
document.getElementById('contactForm').addEventListener('submit', submitForm);

// Submit form
function submitForm(e){
    e.preventDefault();
    // Get values
    var nombre = getInputVal('nombre');
    var apellidos = getInputVal('apellidos');
    var correo = getInputVal('correo');
    var telefono = getInputVal('telefono');
    var mensaje = getInputVal('mensaje');

    // Save mensaje
    savemensaje(nombre, apellidos, correo, telefono, mensaje);

    // Show alert
    document.querySelector('.alert').style.display = 'block';

    // Hide alert after 3 seconds
    setTimeout(function(){
        document.querySelector('.alert').style.display = 'none';
    },3000);

    // Clear form
    document.getElementById('contactForm').reset();
}

// Function to get get form values
function getInputVal(id){
    return document.getElementById(id).value;
}

// Save mensaje to firebase
function savemensaje(nombre, apellidos, correo, telefono, mensaje){
    var newmensajeRef = mensajesRef.push();
    newmensajeRef.set({
        nombre: nombre,
        apellidos:apellidos,
        correo:correo,
        telefono:telefono,
        mensaje:mensaje
    });
}
