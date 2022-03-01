import React, { useState, useEffect, useRef, useCallback } from 'react';
import './nav.css';
import agImage from '../assets/ag.png';

export default function Nav(props) {
    const [newChain, setNewChain] = useState();
    
    let activeChain = useRef();
    let terraChain = useRef();
    let newAddress;
    let displayAccount;
    let solAccount;
    let terraAccount;
    let chainColor;

    const Search = () => {
        const [inputAddress, setInputAddress] = useState("Brand Number");
        
      
        let newValue;
      
        let displayAddress = (event) => {
          newValue = event.target.value;
          console.log(event.target.value);
        };
      
        let saveAddress = () => {
          setInputAddress(newValue);
          activeChain = newChain;
          displayAccount = newValue;
        }

        // useEffect(() => {
        //     if (!isWeb3Enabled) {
        //       enableWeb3();
        //     }
        //   }, [isWeb3Enabled, enableWeb3]);
        
          return (
              <div className="type-address">
              <input
                className="paste-bar"
                type="text"
                placeholder={inputAddress}
                onChange={displayAddress}
                />
              
                <button
                className="submit-button" 
                onClick={saveAddress}
                >
                  search
              </button>
              </div>
          );
        };

    const Filter = ({ label }) => {


      return (
        <div className="filter">
          <div className="container">
            {label}{" "}
            <div className="toggle-switch">
              <input type="checkbox" className="checkbox" 
                    name={label} id={label} />
              <label className="label" htmlFor={label}>
                <span className="inner" />
                <span className="switch" />
              </label>
            </div>
          </div>
        </div>
      )
    }


    return (
        <div className="banner">
          <img className="logo" src={agImage} alt="agImage" />
            <Search />
            <Filter label={" "}/>
        </div>
    )
}