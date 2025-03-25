package com.sharemeals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sharemeals.model.User;
import com.sharemeals.repository.UserRepository;

@Controller
@RequestMapping("/volunteer")
public class VolunteerController {

	private final UserRepository userRepository;

	public VolunteerController(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@GetMapping("/register")
	public String showVolunteerForm(Model model) {
		model.addAttribute("user", new User());
		return "volunteer_register";
	}

	@PostMapping("/register")
	public String saveVolunteer(@ModelAttribute("user") User user, Model model) {
		user.setRole("Volunteer");
		userRepository.save(user);
		model.addAttribute("success", "Volunteer registered successfully!");
		return "volunteer_register";
	}
}
