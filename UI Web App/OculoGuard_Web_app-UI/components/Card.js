import 'tailwindcss/tailwind.css'
import CardData from './CardData'

const Card = () => {
  return (
    <section className="text-gray-600 body-font">
        <div className="container px-5 py-24 mx-auto">
          <div className="flex flex-wrap -mx-4 -mb-10 text-center">
            <CardData title="Diagnose Patient" description="Your patient has been selected ,you can now move on to the prognosis/diagnosis stage" buttonName="Diagnose Patient"/>
            <CardData title="Edit Patient Data" description="Make alterations, update the data of your selected patient" buttonName="Edit Patient Data"/> 
          </div>
        </div>
      </section>
  )
}

export default Card