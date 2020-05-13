package com.yiju.util;

import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * lenovo2020
 * 2020/5/1214:52
 */
public class YIJuUntil {
    //单元测试 / 黑盒测试
    public static void main(String[] args) {

        String Local = "C:\\Users\\Administrator\\Desktop\\1.jpg";
        File file = new File(Local);
        String upload = "2.JPEG";
//        upload(file, upload);
    }

    public static String getPriName(){
        //20200513
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String priName = sdf.format(new Date())+ UUID.randomUUID().toString();

        return priName;
    }

    public static void upload(String file, String upload) {

        //1、连接七牛云
        //密匙
        final String AK = "s7xNy1zXzPAa_HQ1JjKBGFcATuTNg4sQvwwt6L_c";
        final String SK = "94VQ9Dl-qaHGRujX8zLjMizVK_3Y14jm3Sa7x3x2";
        //指定工作空间
        final String BUCKET = "why123";

        Auth auth = Auth.create(AK, SK);
        String token = auth.uploadToken(BUCKET);

        //指定大区
        Configuration cfg = new Configuration(Zone.zone2());
        //2.进行图片上传
        UploadManager uploadManager = new UploadManager(cfg);
        try {
            uploadManager.put(file, upload, token);
            System.out.println("上传成功");
        } catch (QiniuException e) {
            e.printStackTrace();
        }
    }
    public static void upload(byte[] file, String upload) {

        //1、连接七牛云
        //密匙
        final String AK = "s7xNy1zXzPAa_HQ1JjKBGFcATuTNg4sQvwwt6L_c";
        final String SK = "94VQ9Dl-qaHGRujX8zLjMizVK_3Y14jm3Sa7x3x2";
        //指定工作空间
        final String BUCKET = "why123";

        Auth auth = Auth.create(AK, SK);
        String token = auth.uploadToken(BUCKET);

        //指定大区
        Configuration cfg = new Configuration(Zone.zone2());
        //2.进行图片上传
        UploadManager uploadManager = new UploadManager(cfg);
        try {
            uploadManager.put(file, upload, token);
            System.out.println("上传成功");
        } catch (QiniuException e) {
            e.printStackTrace();
        }
    }
}
