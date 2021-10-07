// librerias
import styled from 'styled-components';


function Box(props) {
    return(
        <>
            <BoxContainer image={props.image}><BoxText>{props.text}</BoxText></BoxContainer>
        </>
    )
}

export default Box;

const BoxContainer = styled.div`
    width: 100%;
    height: 250px;
    background-image: linear-gradient(
        rgba(255, 81, 0, 0.45), 
        rgba(255, 81, 0, 0.45)
      ), url(${props => props.image});
    background-size: cover;
    background-repeat: no-repeat;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    & :hover {
        background-image: linear-gradient(
            rgba(27, 76, 128, 0.5), 
            rgba(27, 76, 128, 0.5)
          ), url(${props => props.image});
    }
`

const BoxText = styled.p`
    color: white;
    font-size: 35px;
`