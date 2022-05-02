import DiseaseFaq  from '../components/DiseaseFaq'
 import 'tailwindcss/tailwind.css'
import Sidebar3 from '../components/Sidebar3'
 import Footer from '../components/Footer'


const pageFormat = () => {
  return (
    <>
    <div className="flex items-center justify-center w-screen h-screen  space-x-0 bg-orange-300 " >
        <Sidebar3/>
        <div className="w-screen h-screen bg-lime-500 p-5">
        <DiseaseFaq/>            
        </div>
    </div>
    
      <Footer/> 
        </>
  )
}

export default pageFormat
