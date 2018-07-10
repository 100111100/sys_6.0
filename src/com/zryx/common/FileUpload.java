package com.zryx.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/**
 * 文件上传工具类
 * @author ZHQL
 */
public class FileUpload {
	
	private File upload; // 得到上传的文件
	private String uploadContentType; // 得到文件的类型
	private String uploadFileName; // 得到文件的名称
	/**
	 * 上传
	 * @return
	 * @throws Exception
	 */
	public String upload() {
		String temp = Config.map.get("upload_file");//保存图片的文件夹
		//替换扩展名
		String s = uploadFileName.substring(uploadFileName.lastIndexOf("."));
		uploadFileName = System.currentTimeMillis() + s;
		System.out.println("文件名：" + uploadFileName);
		System.out.println("文件类型：" + uploadContentType);
		String path = temp;
		//构建保存上传文件的目录
		File file = new File(path);
		if(!file.exists()){
			file.mkdirs();//创建文件夹
		}
		path += "\\" + uploadFileName;
		System.out.println("上传文件保存路径：" + path);
		try {
			//保存上传文件
			File targetFile = new File(path);
			//从客户端获得输入流
			FileInputStream fis = new FileInputStream(upload);
			//创建输出流
			FileOutputStream fos = new FileOutputStream(targetFile);
			byte[] b = new byte[1024];
			int i = 0;
			while ((i = fis.read(b)) != -1) {
				fos.write(b, 0, i);//
				fos.flush();
			}
			fos.close();
			fis.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//返回文件名
		return uploadFileName;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

}
