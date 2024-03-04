package zb;

import android.text.TextUtils;
import bc.c;
import bc.f;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60424a = "SHA";

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f60425b = {"SHA-256", "SHA-384", "SHA-512"};

    private static boolean a(String str) {
        for (String str2 : f60425b) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static String b(String str) {
        return c(str, "SHA-256");
    }

    public static String c(String str, String str2) {
        byte[] bArr;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!a(str2)) {
                f.c(f60424a, "algorithm is not safe or legal");
                return "";
            }
            try {
                bArr = str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                bArr = new byte[0];
                f.c(f60424a, "Error in generate SHA UnsupportedEncodingException");
            }
            return c.a(d(bArr, str2));
        }
        f.c(f60424a, "content or algorithm is null.");
        return "";
    }

    public static byte[] d(byte[] bArr, String str) {
        if (bArr != null && !TextUtils.isEmpty(str)) {
            if (!a(str)) {
                f.c(f60424a, "algorithm is not safe or legal");
                return new byte[0];
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException unused) {
                f.c(f60424a, "Error in generate SHA NoSuchAlgorithmException");
                return new byte[0];
            }
        }
        f.c(f60424a, "content or algorithm is null.");
        return new byte[0];
    }
}
