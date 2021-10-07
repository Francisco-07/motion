import Navbar from "../modules/navbar";
import Hero from "../modules/hero";
import Servicios from "../modules/servicios";
import About from "../modules/about";
function IndexLayout() {
    return(
        <>
        <Navbar/>
        <Hero/>
        <About/>
        <Servicios/>
        </>
    )
}


export default IndexLayout;