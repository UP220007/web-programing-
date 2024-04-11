function obtenerUsuarios() {
    fetch('./obtener_usuarios.php')
    .then(response => response.json())
    .then(data => {
        const listaUsuarios = document.getElementById('lista-usuarios');
        listaUsuarios.innerHTML = '';

        data.forEach(usuario => {
            const listItem = document.createElement('li');
            listItem.textContent = `${user.id}: ${user.name}`;
            listaUsuarios.appendChild(listItem);
        });
    })
    .catch(error => console.error('Error al obtener usuarios:', error));
}
