package com.yiju.util;

import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

import java.io.File;

/**
 * lenovo2020
 * 2020/5/1214:52
 */
public class YIJuUntil {
    public static void main(String[] args) {
        //1.连接七牛云
        //密匙
        final String AK = "s7xNy1zXzPAa_HQ1JjKBGFcATuTNg4sQvwwt6L_c";
        final String SK = "94VQ9Dl-qaHGRujX8zLjMizVK_3Y14jm3Sa7x3x2";
        final String BUCKET = "why123";
        Auth auth = Auth.create(AK, SK);
        String token = auth.uploadToken(BUCKET);
        Configuration cfg = new Configuration(Zone.zone2());
        //2.进行图片上传
        UploadManager uploadManager = new UploadManager(cfg);
        String Local = "C:\\Users\\lenovo2020\\Desktop\\1.jpg";
        File file = new File(Local);
        String upload = "1.JPEG";
        try {
            uploadManager.put(file, upload,token);
            System.out.println("上传成功");
        }catch (QiniuException e){
            e.printStackTrace();
        }
    }
}
