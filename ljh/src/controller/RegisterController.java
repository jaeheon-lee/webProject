package controller;

import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.FootBallDAOImpl;
import model.PlayerInfoVO;
import model.UserVO;

public class RegisterController implements Controller {

	@Override
	public ModelAndView handle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/* //절대 경로를 받아와 / 만 추가해줌
        String saveDir = request.getServletContext().getRealPath("/upload");
        //서버에 파일이 저장될 경로인데 위에 정보에다 뒤에는 추가적으로 생성할 폴더명을 적어준다.
    //    String saveDir = root+"upload/userPhoto";
        //파일이 올라갈 수 있는 최대 용량 정하기
        int maxSize = 1024*1024*10; //10Mb
        
        //이 밑에 한줄이 정상적으로 작동하면 파일업로드는 이미 된 상태다. 그 밑에가 에러가 나도 옆에 지정해준 경로에는 파일이 업로드 되어있다.
        MultipartRequest mr = new MultipartRequest(request, saveDir,maxSize,"utf-8",new DefaultFileRenamePolicy());
        System.out.println(saveDir);
        String photo= mr.getFilesystemName("photo");
        System.out.println(photo);
        */
		
		HashMap<String, String> map = new fileuplaod().fileupload(request, response);
		
		String path = "login.jsp";
		UserVO uVo= new UserVO();
		PlayerInfoVO pVo= new PlayerInfoVO();
		HttpSession session = request.getSession();
		
		//user 정보
		String userId = map.get("userId");
		String password = map.get("password");
		String name = map.get("name");
		String phoneNum = map.get("phoneNum");
		String photo = map.get("photo");
		String ssn = map.get("ssn");
		String nickName = map.get("nickName");
		char gender = map.get("gender").charAt(0);
		String email = map.get("email");
		String addr = map.get("addr");
		String favTeam1 = map.get("favTeam1");
		String favTeam2 = map.get("favTeam2");
		String country = map.get("country");
		uVo.setUserId(userId);
		uVo.setPass(password);
		uVo.setName(name);
		uVo.setPhoneNum(phoneNum);
		uVo.setPhoto(photo);
		uVo.setSsn(ssn);
		uVo.setNickName(nickName);
		uVo.setGender(gender);
		uVo.setEmail(email);
		uVo.setAddr(addr);
		uVo.setFavTeam1(favTeam1);
		uVo.setFavTeam2(favTeam2);
		uVo.setCountry(country);
		
		//playerInfo
		String position = map.get("position");
		String mainFoot = map.get("mainFoot");
		int height = Integer.parseInt(map.get("height"));
		int weight = Integer.parseInt(map.get("weight"));
		int injury = Integer.parseInt(map.get("injury"));
		int mental = Integer.parseInt(map.get("mental"));
		int speed = Integer.parseInt(map.get("speed"));
		int physical = Integer.parseInt(map.get("physical"));
		int dribble = Integer.parseInt(map.get("dribble"));
		int pass = Integer.parseInt(map.get("pass"));
		int defence = Integer.parseInt(map.get("defence"));		
		pVo.setUserId(userId);
		pVo.setPosition(position);
		pVo.setMainFoot(mainFoot);
		pVo.setHeight(height);
		pVo.setWeight(weight);
		pVo.setInjury(injury);
		pVo.setMental(mental);
		pVo.setSpeed(speed);
		pVo.setPhysical(physical);
		pVo.setDribble(dribble);
		pVo.setPass(pass);
		pVo.setDefence(defence);
	
		try {
			FootBallDAOImpl.getInstance().registerUser(uVo, pVo);
			uVo.setpVo(pVo);
			session.setAttribute("uVo", uVo);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return new ModelAndView(path);
	}
}
