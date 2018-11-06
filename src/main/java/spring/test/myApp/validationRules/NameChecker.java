package spring.test.myApp.validationRules;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = NameCheckerValidator.class)
@Target (ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface NameChecker {
	public String message() default "must start with T, end with s, and have even number of characters";
	public Class<?>[] groups() default {};
	public Class<? extends Payload>[] payload() default {};
}
