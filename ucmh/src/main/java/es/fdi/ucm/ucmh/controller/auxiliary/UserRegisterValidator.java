package es.fdi.ucm.ucmh.controller.auxiliary;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import es.fdi.ucm.ucmh.model.User;

public class UserRegisterValidator implements Validator {
	
	/**
	 * This method tells what kind of validation is capable of, in
	 * this case it only validates es.fdi.ucm.ucmh.model.User objects
	 * */
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub

	}

}
