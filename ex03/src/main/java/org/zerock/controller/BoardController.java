package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@RequestMapping(value="/board/*")
@AllArgsConstructor
public class BoardController {
	
	@Setter(onMethod_ = {@Autowired})
	private BoardService service;
	
	@GetMapping(value="/list")
	public void list(Criteria cri, Model model) {
		System.out.println("list");
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		int total = service.getTotal(cri);
		System.out.println("total: " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@PostMapping(value="/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		System.out.println("register: " + board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/board/list";
	}
	
	@GetMapping(value="/register") 
	public void register() {
		
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		System.out.println("/get or modify");
		model.addAttribute("board", service.get(bno));
	}
	
	@PostMapping(value="/modify")
	public String modify(BoardVO board, Criteria cri, RedirectAttributes rttr) {
		System.out.println("modify: " + board);
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list" + cri.getListLink();
	}
	
	
	@PostMapping(value="/remove")
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		System.out.println("remove: " + bno);
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list" + cri.getListLink();
	}
	
}
