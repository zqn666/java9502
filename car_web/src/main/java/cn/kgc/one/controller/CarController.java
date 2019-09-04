package cn.kgc.one.controller;

import cn.kgc.one.Car;
import cn.kgc.one.Carown;
import cn.kgc.one.Shop;
import cn.kgc.one.service.CarService;
import cn.kgc.one.service.ShopService;
import cn.kgc.one.utils.DateUtils;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Service;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/26 19:38
 */

@RestController   //@Controller    @ResponseBody
@RequestMapping("/cars")
@CrossOrigin()    //跨域
public class CarController {

    @Autowired
    CarService carService;      //自动装配


    //查         查询所有  后
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Car> all = carService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("cars-list");
        return mv;
    }
    // 前    所有
    @RequestMapping("/getAll")
    public List<Car> getAll(){
        return carService.findAll();
    }


    //查     品牌搜索    后
    @RequestMapping("/searchCtype")
    public ModelAndView searchCtype(String ctype){
        List<Car> typeList = carService.searchCtype(ctype);
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",typeList);
        mv.setViewName("cars-list");
        return mv;
    }
    //前     品牌模糊查
    @RequestMapping("/getCtype")
    public List<Car> getCtype(String ctype){
        return carService.searchCtype(ctype);
    }

    // 查    后 城市(下单用)
    @RequestMapping("/findCity")
    public ModelAndView findCity(String city){
        List<Car> list = carService.findCity(city);
        ModelAndView mv = new ModelAndView();
        mv.addObject("list",list);
        mv.setViewName("order-add");
        return mv;
    }

    // 查    城市，品牌查找
    @RequestMapping("/findByCityCtype")
    public ModelAndView findByCityCtype(String city, String ctype){
        List<Car> all = carService.findByCityCtype(city,ctype);
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("cars-list");
        return mv;
    }
    //前     城市，品牌查找
    @RequestMapping("/getByCityCtype")
    public List<Car> getByCityCtype(String city, String ctype){
        return carService.findByCityCtype(city,ctype);
    }



    //前     四条件查询
    @RequestMapping("/getByFour")
    public List<Car> getByFour(String city, String ctype, String cDesc, Integer min_price, Integer max_price){
        return carService.getByFour(city,ctype,cDesc,min_price,max_price);
    }


    //查     根据车牌自动补全  后
    @RequestMapping("/searchCNum")
    public List<Car> searchCNum(String cNum){
        return carService.searchCNum(cNum);
    }


    //查     根据车牌查询  后
    @RequestMapping("/findCNum")
    public ModelAndView findByCNum(String cNum){
        Car car = carService.findByCNum(cNum);
        ModelAndView mv = new ModelAndView();
        mv.addObject("car",car);
        mv.setViewName("cars-show");
        return mv;
    }
    //前     车牌精确查
    @RequestMapping("/getCNum")
    public Car getCNum(String cNum){
        return carService.findByCNum(cNum);
    }



    //查     根据车型标签搜索   后
    @RequestMapping("/searchCDesc")
    public ModelAndView searchCDesc(String cDesc){
        List<Car> desc = carService.searchCDesc(cDesc);
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",desc);
        mv.setViewName("cars-list");
        return mv;
    }
    //前     标签模糊
    @RequestMapping("/getCDesc")
    public List<Car> getCDesc(String cDesc){
        return carService.searchCDesc(cDesc);
    }



    //查     根据id精确查询    前后
    @RequestMapping("/findById")
    public ModelAndView findById(Integer cid)  {
        Car car = carService.findById(cid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("car",car);
        mv.setViewName("cars-show");
        return mv;
    }
    //前     id精确
    @RequestMapping("/getById")
    public Car getById(Integer cid){
        return carService.findById(cid);
    }



    //查      价钱条件搜索     前后
    @RequestMapping("/searchByH_price")
    public ModelAndView searchByH_price(Integer min_price, Integer max_price){
        List<Car> cars = carService.searchByH_price(min_price, max_price);
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",cars);
        mv.setViewName("cars-list");
        return mv;
    }
    //前     价格区间
    @RequestMapping("/getByH_price")
    public List<Car> getByH_price(Integer min_price, Integer max_price){
        return carService.searchByH_price(min_price,max_price);
    }



    //查     时价  升序  后
    @RequestMapping("/findByASC")
    public ModelAndView findByASC(){
        List<Car> all = carService.findByASC();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("cars-list");
        return mv;
    }
    //前     时价  升序
    @RequestMapping("/getByASC")
    public List<Car> getByASC(){
        return carService.findByASC();
    }



    //查     日价  降序  后
    @RequestMapping("/findByDESC")
    public ModelAndView findByDESC(){
        List<Car> all = carService.findByDESC();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("cars-list");
        return mv;
    }
    //前     日价  降序
    @RequestMapping("/getByDESC")
    public List<Car> getByDESC(){
        return carService.findByDESC();
    }



    //增     添加车辆信息    后
    @RequestMapping("/save")
    public void save(Car car, Carown carown, MultipartFile upload, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(car);
        System.out.println(carown);
//        获取路径
        String path = "F:/IdeaProjects/Car/car_web/src/main/webapp/img/static/upload/";
//        判断文件是否存在
        File file = new File(path);
        if (!file.exists()){
            file.mkdirs();
        }
        // upload对象获取原始文件名
        String filename = upload.getOriginalFilename();
        // 随机名
        String uuid = UUID.randomUUID().toString().replace("-", "");
        filename=uuid+"_"+filename;
//        上传
        upload.transferTo(new File(path,filename));
        String sub = path.substring(44);
        String finpath = sub.replace("img", "");
        car.setImages(finpath+filename);
        carService.save(car,carown);

        response.sendRedirect("/cars/findAll");

    }



    //删     删除单个车辆信息    后
    @RequestMapping("/delOne")
    public void delOne(Integer cid,HttpServletResponse response) throws IOException {
        carService.delOne(cid);
        response.sendRedirect("/cars/findAll");
    }



    //删     删除多个车辆信息    后
    @RequestMapping("/delMany")
    public void delMany(Integer[] ids,HttpServletResponse response) throws IOException {
        carService.delMany(ids);
        response.sendRedirect("/cars/findAll");
    }



    //改      更新回显
    @RequestMapping("/updUI")
    public ModelAndView updUI(Integer cid){
        Car car = carService.findById(cid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("car",car);
        mv.setViewName("cars-update");
        return mv;
    }
    //改      修改车辆信息
    @RequestMapping("/upd")
    public void upd(Car car, HttpServletResponse response) throws IOException {
        carService.upd(car);
        response.sendRedirect("/cars/findAll");
    }



    //查     分页
    @RequestMapping("/findByPage")
    public ModelAndView findByPage(
            @RequestParam(name = "currentPage",required = false, defaultValue = "1")Integer currentPage,
            @RequestParam(value = "pageSize",required = false, defaultValue = "10")Integer pageSize){
        PageInfo<Car> pi = carService.findByPage(currentPage,pageSize);
        ModelAndView mv = new ModelAndView();
        mv.addObject("pi",pi);
        mv.setViewName("cars-list2");
        return mv;
    }



}
