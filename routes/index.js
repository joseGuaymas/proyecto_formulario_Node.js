var express = require('express');
const router = express.Router();
const nodemailer = require("nodemailer");
const staffModel = require("../models/staffModel")

router.get('/', async (req, res, next) => {
  const staff = await staffModel.getStaff()
  res.render("index", {
    staff: staff,
  })
});

/* envio desde formulario */
router.post("/", async (req, res, next) =>{
  const nombre = req.body.nombre;
  const correo = req.body.correo;
  const mensaje = req.body.mensaje;
  const staff = staffModel.getStaff()

  let correoInterno = {
    to: "nosotros@gmail.com",
    from: correo,
    subject: "Mensaje desde formulario de contacto", 
    html: `Mensaje de ${nombre}: ${mensaje}`
  }

  let transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    },
  })

  let info = await transport.sendMail(correoInterno);

  const staff1 = await staffModel.getStaff() 
  res.render ("index", {
    staff: staff1,
    message: "Mensaje enviado con éxito.",
  });

});


module.exports = router;
