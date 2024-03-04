package cn.jiguang.bh;

import android.util.Base64;
import androidx.core.view.ViewCompat;
import cn.jiguang.f.g;
import com.tencent.xmagic.license.LicenceCheck;
import com.tencent.xmagic.license.RSAUtils;
import java.security.KeyFactory;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2510a = cn.jiguang.s.a.b(new byte[]{85, 118, 97, 33, 60, 84, 32, 0, 98, 46, 73, 85, 85, 116, 18, 44});

    public static int a() {
        return Math.abs(new SecureRandom().nextInt()) & ViewCompat.MEASURED_SIZE_MASK;
    }

    private static <T> T a(Class<T> cls, Object[] objArr, Class<?>[] clsArr) {
        return cls.getConstructor(clsArr).newInstance(objArr);
    }

    public static String a(long j10) {
        long j11;
        long j12;
        switch ((int) (j10 % 10)) {
            case 1:
                j11 = 5 * j10;
                j12 = 88;
                break;
            case 2:
                j11 = 23 * j10;
                j12 = 15;
                break;
            case 3:
                j11 = 3 * j10;
                j12 = 73;
                break;
            case 4:
                j11 = 13 * j10;
                j12 = 96;
                break;
            case 5:
                j11 = 17 * j10;
                j12 = 49;
                break;
            case 6:
                j11 = 7 * j10;
                j12 = 68;
                break;
            case 7:
                j11 = 31 * j10;
                j12 = 39;
                break;
            case 8:
                j11 = 29 * j10;
                j12 = 41;
                break;
            case 9:
                j11 = 37 * j10;
                j12 = 91;
                break;
            default:
                j11 = 8 * j10;
                j12 = 74;
                break;
        }
        long j13 = j11 + (j10 % j12);
        return g.d("JCKP" + j13);
    }

    public static String a(String str) {
        try {
            byte[] bytes = str.getBytes();
            String str2 = f2510a;
            return a(bytes, str2, str2);
        } catch (Exception unused) {
            cn.jiguang.as.d.g("", "Unexpected - failed to AES encrypt.");
            return "";
        }
    }

    public static String a(byte[] bArr, String str, String str2) {
        return Base64.encodeToString(a(bArr, str, str2, true), 2);
    }

    private static IvParameterSpec a(byte[] bArr) {
        try {
            return (IvParameterSpec) a(IvParameterSpec.class, new Object[]{bArr}, new Class[]{byte[].class});
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
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

    private static synchronized byte[] a(String str, RSAPublicKey rSAPublicKey, String str2) {
        byte[] doFinal;
        synchronized (d.class) {
            Cipher cipher = Cipher.getInstance(str2);
            cipher.init(1, rSAPublicKey);
            doFinal = cipher.doFinal(str.getBytes());
        }
        return doFinal;
    }

    public static synchronized byte[] a(byte[] bArr, String str, String str2, boolean z10) {
        synchronized (d.class) {
            if (str == null) {
                return null;
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(str, "UTF-8"), "AES");
            IvParameterSpec a10 = a(str2.getBytes("UTF-8"));
            Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
            cipher.init(z10 ? 1 : 2, secretKeySpec, a10);
            return cipher.doFinal(bArr);
        }
    }

    public static String b(String str) {
        try {
            String str2 = f2510a;
            return new String(a(str, str2, str2));
        } catch (Exception unused) {
            cn.jiguang.as.d.g("", "Unexpected - failed to AES decrypt.");
            return "";
        }
    }

    public static String b(String str, String str2, String str3) {
        return new String(Base64.encode(a(str, c(str2), str3), 2), "UTF-8");
    }

    private static RSAPublicKey c(String str) {
        try {
            return (RSAPublicKey) KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 2)));
        } catch (Throwable unused) {
            return null;
        }
    }
}
