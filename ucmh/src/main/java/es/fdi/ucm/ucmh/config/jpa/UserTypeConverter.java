package es.fdi.ucm.ucmh.config.jpa;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

import es.fdi.ucm.ucmh.model.UserType;

@Converter
public class UserTypeConverter implements AttributeConverter<UserType, String> {
	//https://thoughts-on-java.org/hibernate-enum-mappings/
	@Override
	public String convertToDatabaseColumn(UserType attribute) {
		return attribute.name();
	}

	@Override
	public UserType convertToEntityAttribute(String dbData) {
		try {
			return UserType.valueOf(dbData);
		} catch (Exception e) {
			return null;
		}
	}

	
}
