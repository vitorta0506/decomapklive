package com.tencent.liteav.txcplayer.b;

import android.net.Uri;
import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import java.net.URLDecoder;
import java.security.MessageDigest;
/* loaded from: classes4.dex */
public final class a {
    public static String a(String str) {
        int lastIndexOf;
        if (str == null || str.length() <= 0 || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf >= str.length() - 1) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i9 = 0; i9 < digest.length; i9++) {
                int i10 = digest[i9];
                if (i10 < 0) {
                    i10 += 256;
                }
                if (i10 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i10));
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String c(String str) {
        try {
            if (e(str)) {
                LiteavLog.w("CommonUtil", "URL has been encoded");
                return str;
            }
            byte[] bytes = str.getBytes("UTF-8");
            StringBuilder sb2 = new StringBuilder(bytes.length);
            for (int i9 = 0; i9 < bytes.length; i9++) {
                int i10 = bytes[i9] < 0 ? bytes[i9] + 256 : bytes[i9];
                if (i10 > 32 && i10 < 127 && i10 != 34 && i10 != 37 && i10 != 60 && i10 != 62 && i10 != 91 && i10 != 125 && i10 != 92 && i10 != 93 && i10 != 94 && i10 != 96 && i10 != 123 && i10 != 124) {
                    sb2.append((char) i10);
                }
                sb2.append(String.format("%%%02X", Integer.valueOf(i10)));
            }
            return sb2.toString();
        } catch (Exception e10) {
            LiteavLog.e("CommonUtil", "tryEncodeUrl failed.", e10);
            return str;
        }
    }

    public static String d(String str) {
        String b10 = b(str);
        String a10 = a(Uri.parse(str).getPath());
        if (TextUtils.isEmpty(a10)) {
            return b10;
        }
        if (a10.toLowerCase().endsWith("m3u8")) {
            return b10 + ".hls";
        }
        if (a10.toLowerCase().endsWith("mp4")) {
            b10 = b(f(str));
        }
        return b10 + "." + a10;
    }

    private static boolean e(String str) {
        if (str == null) {
            return true;
        }
        try {
            return !str.replace("+", " ").equals(URLDecoder.decode(str, "UTF-8").replace("+", " "));
        } catch (Exception e10) {
            LiteavLog.e("CommonUtil", "isUrlEncoded error : ", e10);
            return false;
        }
    }

    private static String f(String str) {
        int indexOf;
        int indexOf2 = str.indexOf("voddrm.token.");
        if (indexOf2 >= 0 && (indexOf = str.indexOf(".", indexOf2 + 13)) >= 0 && indexOf < str.length() - 1) {
            str = str.substring(0, indexOf2) + str.substring(indexOf + 1);
        }
        int indexOf3 = str.indexOf("?");
        return indexOf3 >= 0 ? str.substring(0, indexOf3) : str;
    }
}
