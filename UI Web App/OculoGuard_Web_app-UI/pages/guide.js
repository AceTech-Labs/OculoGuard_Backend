import React from 'react'
import DiseaseFaq  from '../components/DiseaseFaq'
 import 'tailwindcss/tailwind.css'
import Sidebar3 from '../components/Sidebar3'
 import Footer from '../components/Footer'




const guide = () => {
  return (
    <>
     
    
<div className="flex items-center justify-center w-screen   h-screen   bg-orange-300 " >
    <Sidebar3/>
	<div className="w-screen   h-screen bg-white  p-4">
    <DiseaseFaq/>
		
	</div>
</div>

  <Footer/>



    
    

       
        
        
        
       
    </>
  )
}

export default guide