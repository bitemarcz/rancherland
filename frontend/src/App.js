import logo from './logo.svg';
import './App.css';
import Nav from './Nav/Nav.js';

const App = (props) => {

  function Navbar(props) {
    return (
      <nav className="navbar">
        <ul className="navbar-nav">{props.children}</ul>
      </nav>
    );
  }

  return (
    <div className="App">
      <Navbar >
        <Nav />
      </Navbar>
      <div className="results">
        <div className="return">
          <div className="brands">
          filtered cattle branding results
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
