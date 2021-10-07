
function Contacto() {
    return (
      <form name="contact" method="POST" data-netlify="true" action="/">
        <input type="hidden" name="form-name" value="contact" />
        <div>
            <input type="text" name="Nombre" placeholder="Nombre" />
        </div>
        <div>
            <input type="text" name="Apellido" placeholder="Apellido" />
        </div>
        <div>
            <input type="email" name="email" placeholder="Email" />
        </div>
        <div>
            <textarea name="Mensaje" placeholder="Mensaje"></textarea>
        </div>
        <div>
            <button type="submit">Enviar</button>
        </div>
      </form>
    )
  }
export default Contacto;