package com.xiaomi.push;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
public class f {
    private static String a(byte b10) {
        int i9 = (b10 & ByteCompanionObject.MAX_VALUE) + (b10 < 0 ? 128 : 0);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i9 < 16 ? "0" : "");
        sb2.append(Integer.toHexString(i9).toLowerCase());
        return sb2.toString();
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            StringBuffer stringBuffer = new StringBuffer();
            messageDigest.update(str.getBytes(), 0, str.length());
            for (byte b10 : messageDigest.digest()) {
                stringBuffer.append(a(b10));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static byte[] c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return messageDigest.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(String str) {
        return b(str).subSequence(8, 24).toString();
    }
}
