package com.keiko.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.keiko.languages.models.Language;
import com.keiko.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository langRepo;
	
	public LanguageService(LanguageRepository langRepo) {
		this.langRepo=langRepo;
	}
	public List<Language> allLanguages(){
		return langRepo.findAll();
	}
	public Language createLanguage(Language l) {
		return langRepo.save(l);
	}
	
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage=langRepo.findById(id);
		if(optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		}else {
			return null;
		}
	}
	
	public Language updateLanguage(Language language) {
		return langRepo.save(language);
	}
	
	public Language updateLanguage(Long id, String creator, String name, Integer version) {
		Language updateLanguage=langRepo.findById(id).get();
		updateLanguage.setName(name);
		updateLanguage.setCreator(creator);
		updateLanguage.setVersion(version);
		return langRepo.save(updateLanguage);
	}
	
	public void deleteLanguage(long id) {
		langRepo.deleteById(id);
	}
}
