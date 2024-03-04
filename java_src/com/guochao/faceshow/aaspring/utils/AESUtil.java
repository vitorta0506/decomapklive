package com.guochao.faceshow.aaspring.utils;

import com.tencent.xmagic.license.LicenceCheck;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3.dex */
public class AESUtil {
    private static AESUtil instance;
    private String sKey = "$%^ETDFc)(KL:JD)";
    private String ivParameter = "6183150073612153";

    private AESUtil() {
    }

    public static String Encrypt(String str, String str2, String str3) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        if (str2 != null && str2.length() == 16) {
            Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            cipher.init(1, new SecretKeySpec(str2.getBytes(), "AES"), new IvParameterSpec(str3.getBytes()));
            return Base64.encode(cipher.doFinal(str.getBytes("utf-8")));
        }
        return null;
    }

    public static String encodeBytes(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i9 = 0; i9 < bArr.length; i9++) {
            stringBuffer.append((char) (((bArr[i9] >> 4) & 15) + 97));
            stringBuffer.append((char) ((bArr[i9] & 15) + 97));
        }
        return stringBuffer.toString();
    }

    public static AESUtil getInstance() {
        if (instance == null) {
            instance = new AESUtil();
        }
        return instance;
    }

    public String decrypt(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.sKey.getBytes("ASCII"), "AES");
            Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            cipher.init(2, secretKeySpec, new IvParameterSpec(this.ivParameter.getBytes()));
            return new String(cipher.doFinal(Base64.decode(str)), "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String encrypt(String str) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
        cipher.init(1, new SecretKeySpec(this.sKey.getBytes(), "AES"), new IvParameterSpec(this.ivParameter.getBytes()));
        return Base64.encode(cipher.doFinal(str.getBytes("utf-8")));
    }

    public String encryptJZdj(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, new SecretKeySpec("ksfqw@o2131#!sdf".getBytes(), "AES"));
            return Base64.encode(cipher.doFinal(str.getBytes("utf-8")));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String encrypt(String str, String str2) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(1, new SecretKeySpec(str2.getBytes(), "AES"));
        return URLEncoder.encode(Base64.encode(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8))), "utf-8");
    }

    public String decrypt(String str, String str2, String str3) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("ASCII"), "AES");
            Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            cipher.init(2, secretKeySpec, new IvParameterSpec(str3.getBytes()));
            return new String(cipher.doFinal(Base64.decode(str)), "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String decrypt(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("ASCII"), "AES");
            Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str)), "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
