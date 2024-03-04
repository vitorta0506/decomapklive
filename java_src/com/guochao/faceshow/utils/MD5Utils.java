package com.guochao.faceshow.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes4.dex */
public class MD5Utils {
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String getMD5String(String str) {
        byte[] bytes = (str).getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            return toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static String toHexString(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i9 = 0; i9 < length; i9++) {
            byte b10 = bArr[i9];
            int i10 = i9 * 2;
            char[] cArr2 = HEX_DIGITS;
            cArr[i10] = cArr2[(b10 >>> 4) & 15];
            cArr[i10 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }
}
