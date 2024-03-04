package g5;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes2.dex */
public abstract class c {
    private ByteArrayOutputStream h(Object obj, boolean z10) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        d a10 = a(byteArrayOutputStream, StandardCharsets.UTF_8);
        if (z10) {
            a10.a();
        }
        a10.b(obj);
        a10.flush();
        return byteArrayOutputStream;
    }

    private String k(Object obj, boolean z10) throws IOException {
        return h(obj, z10).toString("UTF-8");
    }

    public abstract d a(OutputStream outputStream, Charset charset) throws IOException;

    public abstract f b(InputStream inputStream) throws IOException;

    public abstract f c(InputStream inputStream, Charset charset) throws IOException;

    public abstract f d(Reader reader) throws IOException;

    public abstract f e(String str) throws IOException;

    public final <T> T f(InputStream inputStream, Class<T> cls) throws IOException {
        return (T) b(inputStream).K(cls);
    }

    public final byte[] g(Object obj) throws IOException {
        return h(obj, false).toByteArray();
    }

    public final String i(Object obj) throws IOException {
        return k(obj, true);
    }

    public final String j(Object obj) throws IOException {
        return k(obj, false);
    }
}
