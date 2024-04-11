import { deleteTask, getAllUsers, getTasks, sentValue } from './petitions.js';

const listUsers = document.getElementById('users');
const listTasks = document.getElementById('taskTable');

document.addEventListener('DOMContentLoaded', async () => {
  const users = await getAllUsers();

  let template = `
    <option value="0">Seleccione usuario</option>
  `;
  for (const user of users) {
    template += `
      <option value="${user.id}">${user.fullname}</option>
    `;
  }
  listUsers.innerHTML = template;
  const tasks2 = await getTasks();
  let template3 = "";
  for (const task2 of tasks2) {
    template3 += `
      <tr data-id="${task2.id}">
      <td>${task2.id}</td>
      <td>${task2.fullname}</td>
      <td>${task2.task}</td>
      <td>${task2.status}</td>
      <td>
        <button class="btn btn-secondary btn-sm">
          <span>Update</span> <i class="nf nf-md-pencil"></i>
        </button>
        <button class="btn btn-danger btn-sm delete-btn" data-id="${task2.id}">
          <span>Delete</span> <i class="nf nf-cod-trash"></i>
        </button>
      </td>
    </tr>
    `;
  }

  listTasks.innerHTML = template3;
  listUsers.addEventListener('change', async function () {
    const selectedUserId = listUsers.value;
    console.log('ID del usuario seleccionado:', selectedUserId);
    const tasks = await sentValue(selectedUserId);
    let template2 = "";
    for (const task of tasks) {
      template2 += `
        <tr data-id="${task.id}">
        <td >${task.id}</td>
        <td>${task.fullname}</td>
        <td>${task.task}</td>
        <td>${task.status}</td>
        <td>
          <button class="btn btn-secondary btn-sm">
            <span>Update</span> <i class="nf nf-md-pencil"></i>
          </button>
          <button class="btn btn-danger btn-sm delete-btn" data-id="${task.id}">
            <span>Delete</span> <i class="nf nf-cod-trash"></i>
          </button>
        </td>
      </tr>
      `;
    }

    listTasks.innerHTML = template2;
  });

  document.addEventListener('click', async function(event) {
    if (event.target.classList.contains('delete-btn')) {
      const id = event.target.getAttribute('data-id');
      console.log(id);
      deleteTask(id);
      const tasks = await sentValue(0);
    let template2 = "";
    for (const task of tasks) {
      template2 += `
        <tr data-id="${task.id}">
        <td >${task.id}</td>
        <td>${task.fullname}</td>
        <td>${task.task}</td>
        <td>${task.status}</td>
        <td>
          <button class="btn btn-secondary btn-sm">
            <span>Update</span> <i class="nf nf-md-pencil"></i>
          </button>
          <button class="btn btn-danger btn-sm delete-btn" data-id="${task.id}">
            <span>Delete</span> <i class="nf nf-cod-trash"></i>
          </button>
        </td>
      </tr>
      `;
    }

    listTasks.innerHTML = template2;
      //const res = await fetch(`/api/getTasks.php?dato=${id}`);
    }
  });



});

console.log(listUsers);

