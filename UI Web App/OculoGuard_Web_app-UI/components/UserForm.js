import 'tailwindcss/tailwind.css'

const UserForm = () => {
  return (
    <>
      <section className="bg-green-300">
        <div className="max-w-screen-xl px-4 py-16 mx-auto sm:px-6 lg:px-8 bg-orange-400" >
          <div className="grid grid-cols-1 gap-x-16 gap-y-8 lg:grid-cols-5">
            <div className="lg:py-12 lg:col-span-2">
              <p className="max-w-xl text-lg">
                Enter your patient data here. Be mindful to double check and enter acccurate data as you are dealing with senstive matters.
              </p>
              <div className="my-6">
              <p className="max-w-xl text-lg my-6">
                Pay extra attention to the patient blood type as impending results may vary accordingly and factors such as age and disease type may play a factor.
              </p> 
              </div>
              <div className="my-6">
              <p className="max-w-xl text-lg ">
                Use patient notes to specify the correct disease of the patient.There might be cases where the patient may show symptoms or markers of more than one single diabetic eye infection 
                Specify the correct conditions and symptoms in order.
              </p> 
              </div>
            </div>
            <div className="p-8 bg-gradient-to-r from-cyan-500  to-blue-700 rounded-lg shadow-lg lg:p-12 lg:col-span-3">
              <form action className="space-y-4">
                <div>
                  <label className="sr-only" htmlFor="name">Name</label>
                  <input className="w-full p-3 text-sm border-gray-200 rounded-lg" placeholder="Patient Name" type="text" id="name" />
                </div>
                <div>
                  <label className="sr-only" htmlFor="patientId">Patient ID</label>
                  <input className="w-full p-3 text-sm border-gray-200 rounded-lg" placeholder="Patient ID" type="text" id="patientId" />
                </div>
                
                <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
                <div>
                    <label className="sr-only" htmlFor="age">Age</label>
                    <input className="w-full p-3 text-sm border-gray-200 rounded-lg" placeholder="Age" type="tel" id="age" />
                  </div>
                  <div>
                    <label className="sr-only" htmlFor="patientAge">Age</label>
                    <input className="w-full p-3 text-sm border-gray-200 rounded-lg" placeholder="Blood Type" type="tel" id="patientAge" />
                  </div>
                  <div>
                    <label className="sr-only" htmlFor="email">Email</label>
                    <input className="w-full p-3 text-sm border-gray-200     rounded-lg" placeholder="Email address" type="email" id="email" />
                  </div>
                  <div>
                    <label className="sr-only" htmlFor="phone">Phone</label>
                    <input className="w-full p-3 text-sm border-gray-200 rounded-lg" placeholder="Phone Number" type="tel" id="phone" />
                  </div>
                  
                </div>
                
                <div>
                  <label className="sr-only" htmlFor="message">Notes</label>
                  <textarea className="w-full p-3 text-sm border-gray-200 rounded-lg" placeholder="Enter Patient Notes and Disease Informatin Here" rows={8} id="message" defaultValue={""} />
                </div>
                <div className="mt-4">
                  <button type="submit" className="inline-flex items-center justify-center w-full px-5 py-3 text-white bg-blue-900 rounded-lg sm:w-auto m-3">
                    <span className="font-medium"> Add Patient </span>
                    <svg xmlns="http://www.w3.org/2000/svg" className="w-5 h-5 ml-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M14 5l7 7m0 0l-7 7m7-7H3" />
                    </svg>
                  </button>
                  <button type="submit" className="inline-flex items-center justify-center w-full px-5 py-3 text-white bg-blue-900 rounded-lg sm:w-auto m-3">
                    <span className="font-medium"> Reset </span>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>



    </>
  )
}

export default UserForm