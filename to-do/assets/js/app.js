document.addEventListener('DOMContentLoaded', function () {
    const usersDropdown = document.getElementById('users');
    const searchBtn = document.getElementById('searchBtn');
    const userDetails = document.getElementById('userDetails');
    const todoList = document.getElementById('todoList');
    const actividades = document.getElementById('actividades')

    actividades.style.display = 'none';
    // Cargar usuarios desde JSON
    fetch('assets/data/usuarios.json')
        .then(response => response.json())
        .then(users => {
            users.forEach(user => {
                const option = document.createElement('option');
                option.value = user.id;
                option.textContent = `${user.firstname} `;
                option.dataset.fullname = `${user.firstname} ${user.lastname}`;
                option.dataset.email = user.email; // Guardar el correo electrónico como un atributo de datos
                usersDropdown.appendChild(option);
            });
        });

    searchBtn.addEventListener('click', function () {
        const selectedUserId = usersDropdown.value;

        // Limpiar la lista de tareas y detalles del usuario
        todoList.innerHTML = '';
        userDetails.innerHTML = '';
        actividades.style.display = 'block';

        // Cargar las actividades del usuario desde JSON
        fetch('assets/data/tareas.json')
            .then(response => response.json())
            .then(activities => {
                const userActivities = activities.filter(activity => activity.userId == selectedUserId);
                if (userActivities.length > 0) {

                    userActivities.forEach(activity => {
                        const todoItem = document.createElement('li');
                        todoItem.classList.add('todo-item');
                        todoItem.innerHTML = `
                <span>${activity.title}</span>
                <input type="checkbox" ${activity.completed ? 'checked' : ''} disabled>
              `;
                        todoList.appendChild(todoItem);
                    });
                } else {
                    const noActivitiesMessage = document.createElement('p');
                    noActivitiesMessage.textContent = 'No hay actividades para este usuario.';
                    todoList.appendChild(noActivitiesMessage);
                }
            })
            .catch(error => {
                console.error('Error al cargar las actividades:', error);
            });

        // Mostrar detalles del usuario
        const selectedUser = usersDropdown.options[usersDropdown.selectedIndex].text;
        const userDetailsHTML = `
        <h2>Detalles del Usuario</h2>
        <ul>
            <li><strong>Nombre:</strong> ${usersDropdown.options[usersDropdown.selectedIndex].dataset.fullname}</li>
            <li><strong>Email:</strong> ${usersDropdown.options[usersDropdown.selectedIndex].dataset.email}</li>
        </ul>
      `;
        userDetails.innerHTML = userDetailsHTML;
    });
});
