package vi;

import java.io.UnsupportedEncodingException;
/* loaded from: classes7.dex */
public final class d {
    public static byte[] a(String str) {
        a.g(str, "Input");
        return str.getBytes(org.apache.http.a.f55874b);
    }

    public static byte[] b(String str, String str2) {
        a.g(str, "Input");
        a.e(str2, "Charset");
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }
}
