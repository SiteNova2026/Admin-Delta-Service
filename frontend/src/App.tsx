import "./assets/sass/index.scss";


function App() {
  return (
    <div className="min-h-screen bg-slate-50 p-8">
      <div className="saas-card max-w-xl">
        <h1 className="text-2xl font-bold text-slate-800">
          Admin Delta Service
        </h1>

        <p className="my-4 text-slate-500">
          SaaS administration dashboard
        </p>

        <span className="badge badge--success">
          Active
        </span>

        <button className="saas-button mt-5">
          Get Started
        </button>
      </div>
    </div>
  );
}

export default App
