package global;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import javax.swing.JOptionPane;

/**
 * @date :2016. 6. 30.
 * @author :오승준
 * @file :FileEx.java
 * @story :
 */
public class FileEx {
	public static void main(String[] args) {
		File file = null;
		FileWriter fw = null;
		FileReader fr = null;
		BufferedWriter bw = null;
		BufferedReader br = null;
		String msg = null;
		
		try {
			while (true) {
				switch (JOptionPane.showInputDialog("1생성 2쓰기 3읽기 4수정 5삭제 0종료")) {
				case "1": 
					String fileName = JOptionPane.showInputDialog("파일명?");
					file = new File("C:\\eclipse\\jee-neon\\eclipse\\workspace\\"+fileName+".txt");
					fw = new FileWriter(file);
					fr = new FileReader(file);
					bw = new BufferedWriter(fw);
					br = new BufferedReader(fr);
					break;
				case "2": 
					msg = JOptionPane.showInputDialog("메시지?");
					bw.write(msg);
					bw.newLine();
//					fw.flush();
					bw.flush();
					break;
				
				case "3": 
					while ((msg = br.readLine()) != null) {
						JOptionPane.showMessageDialog(null, msg);
					}
					fr.close();
					br.close();
					break;

				case "4": 
					String updateFileName = JOptionPane.showInputDialog("수정하려는 파일이름");
					File updateFile = new File("C:\\eclipse\\jee-neon\\eclipse\\workspace\\"+updateFileName+".txt");
					bw = new BufferedWriter(new FileWriter(updateFile));
					String updateMsg = JOptionPane.showInputDialog("수정 메시지");
					break;
				case "5": 
					String delFileName = JOptionPane.showInputDialog("삭제하려는 파일명");
					File delFile = new File("C:\\eclipse\\jee-neon\\eclipse\\workspace\\"+delFileName+".txt");
					delFile.delete();
					break;
				case "0": 
					fw.close();
					fr.close();
					return;
				default: break;
				}
			}
			} catch (IOException e) {
			e.printStackTrace();
		} finally{
			try {
			fw.flush();
			bw.flush();
			fw.close();
			bw.close();
			fr.close();
			br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
	}
	}
}
