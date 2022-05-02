import 'tailwindcss/tailwind.css'
import React from 'react'
import Sidebar2 from './Sidebar2'

const DiseaseFaq = () => {
  return (
    <>
    
    <div className=" mx-auto p-0 mt-5">
        <h2 className="text-3xl font-extrabold leading-9 border-b-2 border-blue-200 text-blue-900 mb-2">
            Oculo-Guard Guide
        </h2>
        <ul className="flex items-start gap-8 flex-wrap">
            <li className="w-2/5  ">
                <p className="text-lg font-medium leading-6 text-blue-900 mb-2">
                    1. Select Patients
                    </p>                     
                    <p className="text-base leading-6 text-gray-500">
                        Select an already added patient or add a new patient using our user friendly interface to get started with the diagnostic process.
                </p>   
            </li>                  
        
        
            <li className="w-2/5"> 
                <p className="text-lg font-medium leading-6 text-blue-900 mb-2">
                    2. Select Disease for Diagnosis
                    </p>                     
                    <p className="text-base leading-6 text-gray-500">
                        We provide State-of-the-art diagnosis models for Diabetic Retinopathy, Glaucauma and Diabetic Macular Edema.After selecting your patient select the Disease out of the drop down menu
                        to commence Diangnosis 
                </p>   
            </li>                  
        
        
            <li className="w-2/5">
                <p className="text-lg font-medium leading-6 text-blue-900  mb-2">
                    3. Enter Relevant Samples 
                    </p>                     
                    <p className="text-base leading-6 text-gray-500">
                        Make sure to enter proper diagnostic samples (Relevant Fundus Images) related to the Disease.You will be asked to confirm the relevant sample when necessary.
                </p>   
            </li>                  
        
        
            <li className="w-2/5">
                <p className="text-lg font-medium leading-6 text-blue-900 ">
                    4. Recieve Report
                    </p>                     
                    <p className="text-base leading-6 text-gray-500">
                       The Oculo-Guard AI will will provide a comprehensive diagnosis report based on the sample in the for of a PDF Docment.The PDF document Can also be accessed in the patient profile 
                </p>   
            </li>                  
        
        
            <li className="w-2/5">
                <p className="text-lg font-medium leading-6 text-blue-900  mb-2">
                    5. Add New Patients 
                    </p>                     
                    <p className="text-base leading-6 text-gray-500">
                        Oculo-Guard allows you to add new patients and keep record of vital data that is crucial for ocular health.Press the "Add Patient" button which will lead you to a form requesting the necessary patient data along with your own notes regarding the patient. 
                </p>   
            </li>                  
        </ul>
        
    </div>
    
    </>
  )
}

export default DiseaseFaq