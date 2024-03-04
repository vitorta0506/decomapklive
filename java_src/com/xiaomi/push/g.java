package com.xiaomi.push;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;
/* loaded from: classes5.dex */
public class g {
    public static String a(int i9) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < i9; i10++) {
            stringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(62)));
        }
        return stringBuffer.toString();
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(h(str));
            return String.format("%1$032X", new BigInteger(1, messageDigest.digest()));
        } catch (NoSuchAlgorithmException unused) {
            return str;
        }
    }

    public static String c(String str, int i9) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        if (i9 <= 0 || length < i9) {
            i9 = length / 3;
            if (i9 <= 1) {
                i9 = 1;
            }
            if (i9 > 3) {
                i9 = 3;
            }
        }
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            if (i11 % i9 == 0) {
                sb2.append(ProxyConfig.MATCH_ALL_SCHEMES);
            } else {
                sb2.append(str.charAt(i10));
            }
            i10 = i11;
        }
        return sb2.toString();
    }

    public static String d(Collection<?> collection, String str) {
        if (collection == null) {
            return null;
        }
        return e(collection.iterator(), str);
    }

    public static String e(Iterator<?> it, String str) {
        if (it == null) {
            return null;
        }
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                StringBuffer stringBuffer = new StringBuffer(256);
                if (next != null) {
                    stringBuffer.append(next);
                }
                while (it.hasNext()) {
                    if (str != null) {
                        stringBuffer.append(str);
                    }
                    Object next2 = it.next();
                    if (next2 != null) {
                        stringBuffer.append(next2);
                    }
                }
                return stringBuffer.toString();
            }
            return next.toString();
        }
        return "";
    }

    public static String f(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return g(objArr, str, 0, objArr.length);
    }

    public static String g(Object[] objArr, String str, int i9, int i10) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i11 = i10 - i9;
        if (i11 <= 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(i11 * ((objArr[i9] == null ? 16 : objArr[i9].toString().length()) + str.length()));
        for (int i12 = i9; i12 < i10; i12++) {
            if (i12 > i9) {
                stringBuffer.append(str);
            }
            if (objArr[i12] != null) {
                stringBuffer.append(objArr[i12]);
            }
        }
        return stringBuffer.toString();
    }

    public static byte[] h(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    public static String i(String str) {
        if (str != null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                messageDigest.update(h(str));
                return String.format("%1$032X", new BigInteger(1, messageDigest.digest()));
            } catch (NoSuchAlgorithmException unused) {
                return str;
            }
        }
        return null;
    }
}
