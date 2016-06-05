package controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import model.User;

@RestController
@RequestMapping(value = "/search")
public class SearchController {
	
	@RequestMapping(method = RequestMethod.GET, consumes = "application/json")
	public ResponseEntity<User> getUser() {
		return new ResponseEntity<User>(new User("Ivana"), HttpStatus.OK);
	}

}
