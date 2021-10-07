import Navbar from "../modules/navbar";
import Hero from "../modules/hero";
import Servicios from "../modules/servicios";
import About from "../modules/about";
import Footer from "../modules/footer";

function IndexLayout() {
    return(
        <>
        <Navbar/>
        <Hero/>
        <About/>
        <Servicios/>
        <Footer/>
        </>
    )
}


export default IndexLayout;