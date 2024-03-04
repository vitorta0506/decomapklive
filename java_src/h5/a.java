package h5;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import g5.d;
import g5.f;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes2.dex */
public class a extends g5.c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h5.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0439a {

        /* renamed from: a  reason: collision with root package name */
        static final a f40544a = new a();
    }

    public static a m() {
        return C0439a.f40544a;
    }

    @Override // g5.c
    public d a(OutputStream outputStream, Charset charset) {
        return l(new OutputStreamWriter(outputStream, charset));
    }

    @Override // g5.c
    public f b(InputStream inputStream) {
        return d(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
    }

    @Override // g5.c
    public f c(InputStream inputStream, Charset charset) {
        if (charset == null) {
            return b(inputStream);
        }
        return d(new InputStreamReader(inputStream, charset));
    }

    @Override // g5.c
    public f d(Reader reader) {
        return new c(this, new JsonReader(reader));
    }

    @Override // g5.c
    public f e(String str) {
        return d(new StringReader(str));
    }

    public d l(Writer writer) {
        return new b(this, new JsonWriter(writer));
    }
}
