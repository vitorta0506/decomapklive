package vi;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
/* loaded from: classes7.dex */
public class c {
    public static Charset a(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        try {
            return Charset.forName(str);
        } catch (UnsupportedCharsetException unused) {
            throw new UnsupportedEncodingException(str);
        }
    }
}
