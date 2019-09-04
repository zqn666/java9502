package cn.kgc.one.controller;

import cn.kgc.one.Shop;
import cn.kgc.one.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/28 19:49
 */

@RestController
@RequestMapping("/shops")
@CrossOrigin
public class ShopController {
    @Autowired
    ShopService shopService;

//      后         查所有店
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Shop> all = shopService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("shops-list");
        return mv;
    }
    @RequestMapping("/findAll2")
    public ModelAndView findAll2(){
        List<Shop> all = shopService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("cars-add");
        return mv;
    }



    @RequestMapping("/getAll")
    public List<Shop> getAll() throws ServletException, IOException {
        return shopService.findAll();

    }


//      后       保存
    @RequestMapping("/save")
    public void save(Shop shop, HttpServletResponse response) throws IOException {
        shopService.save(shop);
        response.sendRedirect("/shops/findAll");
    }


//      后       删
    @RequestMapping("/delOne")
    public void delOne(Integer sid,HttpServletResponse response) throws IOException {
        System.out.println(sid);
        shopService.delOne(sid);
        response.sendRedirect("/shops/findAll");
    }

    @RequestMapping("/findById")
    public ModelAndView findById(Integer sid){
        Shop shop = shopService.findById(sid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("shop",shop);
        mv.setViewName("shops-show");
        return mv;
    }
}
