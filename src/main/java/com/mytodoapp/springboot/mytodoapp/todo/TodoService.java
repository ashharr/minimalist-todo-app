package com.mytodoapp.springboot.mytodoapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	
	private static int todoCount = 0;

	private static List<Todo> todos = new ArrayList<>();

	static {
		todos.add(new Todo(++todoCount, "Ashhar", "Learn Azure Devops", 
				LocalDate.now().plusWeeks(20), false));
		todos.add(new Todo(++todoCount, "Ashhar", "Learn Data Science", 
				LocalDate.now().plusWeeks(15), false));
		todos.add(new Todo(++todoCount, "admin", "Learn SQL", 
				LocalDate.now().plusWeeks(22), false));
		todos.add(new Todo(++todoCount, "admin", "Learn Business Development", 
				LocalDate.now().plusWeeks(17), false));
		todos.add(new Todo(++todoCount, "admin", "Learn Django", 
				LocalDate.now().plusWeeks(5), false));
	}
	
	public List<Todo> findByUsername(String username){
		Predicate<? super Todo> predicate =
				todo -> todo.getUsername().equalsIgnoreCase(username);
		return todos.stream().filter(predicate).toList();
	}
	
	public void addTodo(String username, String description, LocalDate date, boolean done) {
		Todo todo = new Todo(++todoCount, username, description, date, done);
		todos.add(todo);
	}
	
	public void deleteById(int id) {
		Predicate<? super Todo> predicate =
				todo -> todo.getId() == id;
		todos.removeIf(predicate);
	}

	public Todo findById(int id) {
		Predicate<? super Todo> predicate =
				todo -> todo.getId() == id;
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
	}

	public void updateTodos(@Valid Todo todo) {
		// TODO Auto-generated method stub
		deleteById(todo.getId());	
		todos.add(todo);
	}
	
}
