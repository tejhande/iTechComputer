const taskInput = document.getElementById('taskInput');
const addTaskBtn = document.getElementById('addTaskBtn');
const taskList = document.getElementById('taskList');

// Function to add a new task
function addTask() {
  const taskText = taskInput.value.trim();
  if (taskText === '') return;

  // Create task item
  const li = document.createElement('li');
  li.classList.add('task-item');

  const span = document.createElement('span');
  span.classList.add('task-text');
  span.textContent = taskText;

  // Buttons container
  const buttonsDiv = document.createElement('div');
  buttonsDiv.classList.add('task-buttons');

  // Edit button
  const editBtn = document.createElement('button');
  editBtn.classList.add('btn', 'btn-sm', 'btn-warning');
  editBtn.textContent = 'Edit';
  editBtn.addEventListener('click', () => editTask(span));

  // Delete button
  const deleteBtn = document.createElement('button');
  deleteBtn.classList.add('btn', 'btn-sm', 'btn-danger');
  deleteBtn.textContent = 'Delete';
  deleteBtn.addEventListener('click', () => deleteTask(li));

  buttonsDiv.appendChild(editBtn);
  buttonsDiv.appendChild(deleteBtn);

  li.appendChild(span);
  li.appendChild(buttonsDiv);

  taskList.appendChild(li);

  // Clear input
  taskInput.value = '';
}

// Edit task
function editTask(span) {
  const newText = prompt('Edit your task:', span.textContent);
  if (newText !== null && newText.trim() !== '') {
    span.textContent = newText.trim();
  }
}

// Delete task
function deleteTask(taskItem) {
  if (confirm('Are you sure you want to delete this task?')) {
    taskItem.remove();
  }
}

// Event listeners
addTaskBtn.addEventListener('click', addTask);

taskInput.addEventListener('keypress', function(e) {
  if (e.key === 'Enter') {
    addTask();
  }
});
