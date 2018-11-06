package spring.test.myApp.validationRules;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class NameCheckerValidator implements ConstraintValidator<NameChecker, String> {
	
	@Override
	public boolean isValid(String name, ConstraintValidatorContext theConstraintValidatorContext) {
		boolean result = true;
		if (name!=null) {
			char [] nameArray = name.toCharArray();
			if (nameArray[0]!='T'||nameArray[nameArray.length-1]!='s') {
				result = false;
			}
			if (nameArray.length%2!=0) {
				result = false;
			}
		}
		return result;
	}
}
