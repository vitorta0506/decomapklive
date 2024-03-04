package com.guochao.faceshow.aaspring.utils;

import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.xmagic.license.RSAUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.TreeSet;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3.dex */
public class NativeBridge {
    private static final String TAG = "NativeBridge";
    public static String[] dictionaries = {"g", "h", com.huawei.hms.opendevice.i.TAG, "j", "k", NotifyType.LIGHTS, "m", "n", "o", "p", "q", "r", NotifyType.SOUND, "t", "u", NotifyType.VIBRATE, "w", x.f19108w, "y", "z", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z"};

    public static String a(String str, String str2) throws Exception {
        byte[] decode = Base64.decode(str);
        byte[] decode2 = Base64.decode(str2);
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, (RSAPrivateKey) KeyFactory.getInstance(RSAUtils.RSA).generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(128);
        int i9 = 0;
        while (true) {
            int i10 = i9 * 128;
            if (decode.length - i10 > 0) {
                byteArrayOutputStream.write(cipher.doFinal(decode, i10, 128));
                i9++;
            } else {
                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            }
        }
    }

    public static String[] b(String str) {
        String[] split = str.split(org.light.utils.FileUtils.RES_PREFIX_STORAGE);
        String str2 = split[0];
        String substring = str2.substring(0, 1);
        TreeSet<Integer> hIndexEnd = getHIndexEnd(str2.substring(1, str2.length() - 1));
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        for (int i9 = 1; i9 < split.length; i9++) {
            if (hIndexEnd.contains(Integer.valueOf(i9))) {
                sb2.append(split[i9]);
                sb2.append(org.light.utils.FileUtils.RES_PREFIX_STORAGE);
            } else {
                sb3.append(split[i9]);
                sb3.append(org.light.utils.FileUtils.RES_PREFIX_STORAGE);
            }
        }
        String[] strArr = new String[2];
        if ("+".equals(substring)) {
            strArr[1] = sb2.deleteCharAt(sb2.length() - 1).toString();
            strArr[0] = sb3.deleteCharAt(sb3.length() - 1).toString();
        } else {
            strArr[0] = sb2.deleteCharAt(sb2.length() - 1).toString();
            strArr[1] = sb3.deleteCharAt(sb3.length() - 1).toString();
        }
        return strArr;
    }

    public static String d(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(StandardCharsets.UTF_8), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str)), "utf-8");
        } catch (IOException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e10) {
            LogUtils.e(TAG, "解密 AES 密文失败 ", e10);
            return null;
        }
    }

    public static String e(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(StandardCharsets.UTF_8), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            String str3 = new String(android.util.Base64.encode(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)), 2));
            String d10 = d(str3, str2);
            LogUtils.i(TAG, "加密：" + str3);
            LogUtils.i(TAG, "解密：" + d10);
            return str3;
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e10) {
            LogUtils.e(TAG, "生产 AES 密文失败 ", e10);
            return null;
        }
    }

    public static TreeSet<Integer> getHIndexEnd(String str) {
        TreeSet<Integer> treeSet = new TreeSet<>();
        for (String str2 : dictionaries) {
            str = str.replace(str2, ",");
        }
        for (String str3 : str.split(",")) {
            treeSet.add(Integer.valueOf(new BigInteger(str3, 16).intValue()));
        }
        return treeSet;
    }

    public static String h(String str) throws Exception {
        String[] b10 = b(str);
        return a(b10[0].trim(), b10[1].trim());
    }
}
