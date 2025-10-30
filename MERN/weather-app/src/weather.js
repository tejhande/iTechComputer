import React, { useState, useEffect } from "react";

const Weather = () => {
  const [city, setCity] = useState(""); // To store user input
  const [weather, setWeather] = useState(null); // To store fetched weather data
  const [error, setError] = useState("");

  const API_KEY = "9ba117d7b701fe3a0858251fa02c1479"; // Replace with your OpenWeatherMap API key

  useEffect(() => {
    if (city === "") return; // Don't fetch if city is empty

    const fetchWeather = async () => {
      try {
        const response = await fetch(
          `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=${API_KEY}`
        );
        const data = await response.json();

        if (response.ok) {
          setWeather(data);
          setError("");
        } else {
          setError(data.message);
          setWeather(null);
        }
      } catch (err) {
        setError("Failed to fetch weather data");
        setWeather(null);
      }
    };

    fetchWeather();
  }, [city]);

  const handleInputChange = (e) => {
    setCity(e.target.value);
  };

  return (
    <div style={{ textAlign: "center", marginTop: "50px" }}>
      <h1>Weather App</h1>
      <input
        type="text"
        value={city}
        onChange={handleInputChange}
        placeholder="Enter city name"
      />
      {error && <p style={{ color: "red" }}>{error}</p>}
      {weather && (
        <div>
          <h2>{weather.name}, {weather.sys.country}</h2>
          <p>Temperature: {weather.main.temp} °C</p>
          <p>Weather: {weather.weather[0].description}</p>
          <p>Humidity: {weather.main.humidity}%</p>
          <p>Wind: {weather.wind.speed} m/s</p>
        </div>
      )}
    </div>
  );
};

export default Weather;
