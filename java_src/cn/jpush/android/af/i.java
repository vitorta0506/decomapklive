package cn.jpush.android.af;

import android.text.TextUtils;
import android.util.Base64;
import cn.jpush.android.helper.Logger;
import com.tencent.xmagic.license.LicenceCheck;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.UByte;
/* loaded from: classes.dex */
public class i {
    private static <T> T a(Class<T> cls, Object[] objArr, Class<?>[] clsArr) {
        return cls.getConstructor(clsArr).newInstance(objArr);
    }

    public static String a(String str) {
        try {
            return a(str.getBytes(), "DFA84B10B7ACDD25", "DFA84B10B7ACDD25");
        } catch (Exception unused) {
            Logger.w("", "Unexpected - failed to AES encrypt.");
            return "";
        }
    }

    public static String a(byte[] bArr) {
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
            Logger.d("Secure", "Get SHA1 error");
            return "";
        }
    }

    public static String a(byte[] bArr, String str, String str2) {
        return Base64.encodeToString(a(bArr, str, str2, true), 2);
    }

    private static byte[] a(String str, String str2) {
        byte[] bArr = new byte[str.length()];
        byte[] bytes = str.substring(0, str.length() / 2).getBytes(str2);
        byte[] bytes2 = str.substring(str.length() / 2).getBytes(str2);
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        System.arraycopy(bytes2, 0, bArr, bytes.length, bytes2.length);
        return bArr;
    }

    public static byte[] a(String str, String str2, String str3) {
        return a(Base64.decode(str, 2), str2, str3, false);
    }

    public static synchronized byte[] a(byte[] bArr, String str, String str2, boolean z10) {
        synchronized (i.class) {
            if (str == null) {
                return null;
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(str, "UTF-8"), "AES");
            IvParameterSpec b10 = b(str2.getBytes("UTF-8"));
            Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            cipher.init(z10 ? 1 : 2, secretKeySpec, b10);
            return cipher.doFinal(bArr);
        }
    }

    public static String b(String str) {
        try {
            return new String(a(str, "DFA84B10B7ACDD25", "DFA84B10B7ACDD25"));
        } catch (Exception unused) {
            Logger.w("", "Unexpected - failed to AES decrypt.");
            return "";
        }
    }

    private static IvParameterSpec b(byte[] bArr) {
        try {
            return (IvParameterSpec) a(IvParameterSpec.class, new Object[]{bArr}, new Class[]{byte[].class});
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return a(str.getBytes("utf-8"));
        } catch (Throwable th2) {
            th2.printStackTrace();
            return str;
        }
    }
}
