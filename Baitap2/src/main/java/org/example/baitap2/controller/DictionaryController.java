package org.example.baitap2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;
@Controller
public class DictionaryController {
    private static final Map<String, String> dictionary = new HashMap<>();
    static {
        dictionary.put("hello", "xin chào");
        dictionary.put("book", "quyển sách");
        dictionary.put("computer", "máy tính");
    }
    @RequestMapping("/")
    public String showForm() {
        return "dictionary";
    }
    @RequestMapping("/translate")
    public String translate(@RequestParam("word") String word, Model model) {
        String result = dictionary.get(word.toLowerCase());
        if (result != null) {
            model.addAttribute("word", word);
            model.addAttribute("meaning", result);
            model.addAttribute("notFound", false);
        } else {
            model.addAttribute("word", word);
            model.addAttribute("meaning", "Không tìm thấy nghĩa của từ này.");
            model.addAttribute("notFound", true);
        }
        return "result";
    }
}
