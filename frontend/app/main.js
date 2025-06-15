fetch('http://localhost:5000')
  .then(res => res.json())
  .then(data => {
    document.getElementById('respuesta').innerText = data.message;
  });
