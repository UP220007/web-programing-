export async function getAllUsers() {
  const resp = await fetch("/api/getUsers.php");
  const json = await resp.json(); // Cambia resp.text() por resp.json()
  console.log(json);
  return json;
}

export async function getTasks() {
  const resp = await fetch(`/api/getTasks.php?dato=0`);
  const json = await resp.json(); // Cambia resp.text() por resp.json()
  console.log(json);
  return json;
}

export async function sentValue(id) {
  console.log(id);
  const res = await fetch(`/api/getTasks.php?dato=${id}`);
  const json = await res.json();
  console.log(json);
  return json;
};

export async function deleteTask(id) {
  console.log(id);
  const res = await fetch(`/api/deleteTask.php?dato=${id}`);
  const json = await res.json();
  console.log(json);
  return json;
};