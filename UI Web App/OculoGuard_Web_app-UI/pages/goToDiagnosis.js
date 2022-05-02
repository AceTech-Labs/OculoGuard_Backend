import tailwindcss from "tailwindcss"
import Card from "../components/Card"
import Sidebar3 from "../components/Sidebar3"



const goToDiagnosis = () => {
  return (
      <>
      <h1>Patient Has been Selected</h1>
    <Card title="Diagnose Disease" description="Your patient has been selected, proceed to commence diagnosis or prognosis"/>
    <button type="button" class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded-full shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out ">Select Another Patient</button>
    </>
  )
}

export default goToDiagnosis