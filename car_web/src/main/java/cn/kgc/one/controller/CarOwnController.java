package cn.kgc.one.controller;

import cn.kgc.one.Carown;
import cn.kgc.one.service.CarOwnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/29 23:20
 */

@RestController
@CrossOrigin
@RequestMapping("/owns")
public class CarOwnController {
    @Autowired
    CarOwnService carOwnService;


    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Carown> all =  carOwnService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("owns-list");
        return mv;
    }
}
