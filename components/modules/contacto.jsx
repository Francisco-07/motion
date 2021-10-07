
function Contacto() {
    return (
      <form name="contact" method="POST" data-netlify="true" action="/">
        <input type="hidden" name="form-name" value="contact" />
        <div>
            <input type="text" name="firstname" id="firstname" placeholder="Nombre" />
        </div>
        <div>
            <input type="text" name="lastname" id="lastname" placeholder="Apellido" />
        </div>
        <div>
            <input type="email" name="email" id="youremail" placeholder="Email" />
        </div>
        <div>
            <textarea name="message" id="yourmessage" placeholder="Mensaje"></textarea>
        </div>
        <div>
            <button type="submit">Enviar</button>
        </div>
      </form>
    )
  }
export default Contacto;