// libraries
import styled from "styled-components";
import { ImCross } from 'react-icons/im'; 

function Contacto({show, setShow}) {
    return (
        <>
    <FormContainer show={show}>
        <IconContainer>
        <ImCross onClick={() => setShow(false)}/>
        </IconContainer>
      <FormCenter name="contact" method="POST" data-netlify="true" action="/">
        <input type="hidden" name="form-name" value="contact" />
        <div>
            <DataInputs type="text" name="Nombre" placeholder="Nombre completo" />
        </div>
        <div>
            <DataInputs type="email" name="email" placeholder="Email" />
        </div>
        <div>
            <InfoText name="Mensaje" placeholder="Mensaje"></InfoText>
        </div>
            <ContactoBtn type="submit">Enviar</ContactoBtn>
      </FormCenter>
    </FormContainer>
    </>
    )
  }
export default Contacto;

const ContactoBtn = styled.button`
  width: 150px;
`
const FormCenter = styled.form`
  display:flex;
  align-items:center;
  flex-direction: column;
`

const DataInputs = styled.input`
  width: 250px;
  margin-bottom: 15px;
  border-style: none;
  outline: none;
  border-radius: 4px;
`
const InfoText = styled.textarea`
  width: 250px;
  height: 100px;
  resize: none;
  outline: none;
  border-radius: 4px;
`
const FormContainer = styled.div`
  display:flex;
  justify-content: center;
  align-items: center;
  display: flex;
  visibility: ${({ show }) => (show ? "visible" : "hidden")};
  opacity: ${({ show }) => (show ? "1" : "0")};
  transition:  0.5s ease-in-out;
  position: fixed;
  top: 50%;
  left: 50%;
  padding: 100px;
  border-radius: 10px;
  transform: translate(-50%, -50%);
  background: rgb(255,81,0);
  background: linear-gradient(180deg, rgba(255,81,0,1) 0%, rgba(255,185,64,1) 100%);
  @media (max-width: 788px) {
    padding: 50px;
  }
`

const IconContainer = styled.div`
  position: absolute;
  top: 0;
  right: 0;
  margin-right: 25px;
  margin-top: 25px;
  & svg {
      color: white;
  }
`