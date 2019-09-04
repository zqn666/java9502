import cn.kgc.one.utils.DateUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 20:19
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring/*.xml")
public class Test01 {

    @Test
    public void test1(){
        String b="2019-08-20 10:23:43";
        String e="2019-08-23 12:20:23";
        long btime = DateUtils.strToDate(b).getTime();

        Date edate = DateUtils.strToDate(e);
        long time = edate.getTime();
        long l = time - btime;
        long l1 = l / 1000 / 3600 / 24;
        System.out.println(l1);

    }
}
