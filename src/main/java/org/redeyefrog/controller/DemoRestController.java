package org.redeyefrog.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/rest")
@RestController
public class DemoRestController {

    @GetMapping("/doGet")
    public String query() {
        return "Query Data Success";
    }

    @PostMapping("/doPost")
    public String save() {
        return "Insert Data Success";
    }

    @PutMapping("/doPut")
    public String update() {
        return "Update Data Success";
    }

    @DeleteMapping("/doDelete")
    public String delete() {
        return "Delete Data Success";
    }

}
