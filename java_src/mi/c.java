package mi;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes7.dex */
public class c {
    private static String a(byte[] bArr, Charset charset) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, charset);
    }

    public static String b(byte[] bArr) {
        return a(bArr, StandardCharsets.UTF_8);
    }
}
