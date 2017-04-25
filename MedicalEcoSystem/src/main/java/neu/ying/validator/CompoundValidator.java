package neu.ying.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import neu.ying.entities.Compound;

@Component
public class CompoundValidator implements Validator {

	public boolean supports(Class aClass) {
		return aClass.equals(Compound.class);
	}

	public void validate(Object obj, Errors errors) {
		Compound compound = (Compound) obj;
		System.out.println("name" + compound.getName());
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "error.invalid.compound", "Compound Name Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.invalid.compound", "Compound Description Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "molecularStructure", "error.invalid.compound", "Compound Molecular Structure Required");
		// ValidationUtils.rejectIfEmptyOrWhitespace(errors, "actor",
		// "error.invalid.actor", "Actor Required");

	}
}
