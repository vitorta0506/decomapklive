package cn.jiguang.f;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.UByte;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static Pattern f2583a = Pattern.compile("((2[0-4]\\d|25[0-5]|[01]?\\d{1,2})\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d{1,2})");

    /* renamed from: b  reason: collision with root package name */
    private static SimpleDateFormat f2584b = new SimpleDateFormat("HHH:mm:ss:SSS", Locale.ENGLISH);

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            a(stringBuffer, b10);
        }
        return stringBuffer.toString();
    }

    private static void a(StringBuffer stringBuffer, byte b10) {
        stringBuffer.append("0123456789ABCDEF".charAt((b10 >> 4) & 15));
        stringBuffer.append("0123456789ABCDEF".charAt(b10 & 15));
    }

    public static boolean a(String str) {
        return str == null || str.length() == 0 || str.trim().length() == 0;
    }

    public static boolean a(String str, String str2) {
        return a(str, str2, 0);
    }

    public static boolean a(String str, String str2, int i9) {
        if (i9 < 0) {
            i9 = 0;
        }
        if (str.length() < str2.length() + i9) {
            return false;
        }
        for (int i10 = 0; i10 < str2.length(); i10++) {
            char charAt = str.charAt(i9 + i10);
            char charAt2 = str2.charAt(i10);
            if (charAt != charAt2 && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                return false;
            }
        }
        return true;
    }

    public static String b(String str) {
        return a(str) ? "" : Pattern.compile("[^\\w#$@\\-一-龥]+").matcher(str).replaceAll("");
    }

    public static String b(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : digest) {
                int i9 = b10 & UByte.MAX_VALUE;
                if (i9 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i9));
            }
            return stringBuffer.toString();
        } catch (Throwable unused) {
            cn.jiguang.as.d.c("StringUtils", "Get SHA1 error");
            return "";
        }
    }

    public static byte[] c(String str) {
        try {
            char[] charArray = str.toCharArray();
            byte[] bArr = new byte[charArray.length];
            for (int i9 = 0; i9 < charArray.length; i9++) {
                bArr[i9] = (byte) charArray[i9];
            }
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            char[] charArray = str.toCharArray();
            byte[] bArr = new byte[charArray.length];
            for (int i9 = 0; i9 < charArray.length; i9++) {
                bArr[i9] = (byte) charArray[i9];
            }
            byte[] digest = messageDigest.digest(bArr);
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : digest) {
                int i10 = b10 & UByte.MAX_VALUE;
                if (i10 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i10));
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String e(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("utf-8"));
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : digest) {
                int i9 = b10 & UByte.MAX_VALUE;
                if (i9 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i9));
            }
            return stringBuffer.toString();
        } catch (Throwable unused) {
            cn.jiguang.as.d.c("StringUtils", "Get MD5 error");
            return "";
        }
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int indexOf = str.indexOf(CertificateUtil.DELIMITER);
        if (indexOf >= 0) {
            if (indexOf != str.lastIndexOf(CertificateUtil.DELIMITER)) {
                return false;
            }
            str = str.substring(0, indexOf);
        }
        return f2583a.matcher(str).matches();
    }

    public static boolean g(String str) {
        int indexOf;
        return (TextUtils.isEmpty(str) || (indexOf = str.indexOf(CertificateUtil.DELIMITER)) == -1 || str.lastIndexOf(CertificateUtil.DELIMITER) == indexOf) ? false : true;
    }

    public static boolean h(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return Pattern.compile("[\\x20-\\x7E]+").matcher(str).matches();
        } catch (Throwable unused) {
            return true;
        }
    }

    public static byte[] i(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            return str.getBytes("UTF-8");
        } catch (Throwable th2) {
            cn.jiguang.as.d.j("StringUtils", "stringToUtf8Bytes error:" + th2.getMessage());
            return str.getBytes();
        }
    }

    public static String j(String str) {
        if (str != null && !"".equals(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return a(messageDigest.digest());
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    public static String k(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return b(str.getBytes("utf-8"));
        } catch (Throwable th2) {
            th2.printStackTrace();
            return str;
        }
    }

    public static String l(String str) {
        if (str == null) {
            return null;
        }
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    public static String m(String str) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            if (charAt > 31 && charAt < 127) {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }
}
