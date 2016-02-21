package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.DateFormat;
import java.util.Date;
import java.util.logging.Logger;

@Controller
public class HomeController {
    private static final Logger logger = Logger.getLogger("HomeController");

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model){
        logger.info("Welcome home!");

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

        String formattedDate = dateFormat.format(date);
        model.addAttribute("serverTime", formattedDate);

        return "home";
    }
}
