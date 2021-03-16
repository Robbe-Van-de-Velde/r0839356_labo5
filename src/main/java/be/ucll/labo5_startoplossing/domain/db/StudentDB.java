package be.ucll.labo5_startoplossing.domain.db;
import be.ucll.labo5_startoplossing.domain.model.Student;

import java.util.ArrayList;

public class StudentDB {
	ArrayList<Student> klasLijst;
	
	public StudentDB (){
		klasLijst=new ArrayList<Student>();
		Student student1=new Student("Steegmans","Elke",16,"Vroedkunde");
		Student student2=new Student("Jongen","Greetje",23,"Toegepaste Informatica");
		Student student3=new Student("Van Hee","Jan",89,"Chemie");
		Student student4=new Student("Melaerts","Kristien",89,"Chemie");
		voegToe(student1);
		voegToe(student2);
		voegToe(student3);
		voegToe(student4);
	}
	
	public void voegToe(Student student) {
		klasLijst.add(student);
	}
	
	public Student vind(String naam,String voornaam) {
		for (Student student:klasLijst) {
			if (student.heeftNaam(naam,voornaam)) {
				return student;
			}
		}
		return null;
	}
	
	public ArrayList <Student> getKlas() {
		return this.klasLijst;
	}

	public void removeStudent(String naamTBD, String voornaamTBD){
		Student deletedStudent = null;
		for (Student student : klasLijst){
			String voornaam = student.getVoornaam();
			String naam = student.getNaam();
			if (student != null && voornaam.equals(voornaamTBD) && naam.equals(naamTBD)){
				deletedStudent = student;
			}
		}
		klasLijst.remove(deletedStudent);
	}
	
}
