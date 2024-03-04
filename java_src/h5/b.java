package h5;

import com.google.gson.stream.JsonWriter;
import g5.d;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private final JsonWriter f40545a;

    /* renamed from: b  reason: collision with root package name */
    private final a f40546b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, JsonWriter jsonWriter) {
        this.f40546b = aVar;
        this.f40545a = jsonWriter;
        jsonWriter.setLenient(true);
    }

    @Override // g5.d
    public void A(String str) throws IOException {
        this.f40545a.value(str);
    }

    @Override // g5.d
    public void a() throws IOException {
        this.f40545a.setIndent("  ");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f40545a.close();
    }

    @Override // g5.d
    public void d(boolean z10) throws IOException {
        this.f40545a.value(z10);
    }

    @Override // g5.d
    public void e() throws IOException {
        this.f40545a.endArray();
    }

    @Override // g5.d, java.io.Flushable
    public void flush() throws IOException {
        this.f40545a.flush();
    }

    @Override // g5.d
    public void j() throws IOException {
        this.f40545a.endObject();
    }

    @Override // g5.d
    public void k(String str) throws IOException {
        this.f40545a.name(str);
    }

    @Override // g5.d
    public void o() throws IOException {
        this.f40545a.nullValue();
    }

    @Override // g5.d
    public void p(double d10) throws IOException {
        this.f40545a.value(d10);
    }

    @Override // g5.d
    public void q(float f10) throws IOException {
        this.f40545a.value(f10);
    }

    @Override // g5.d
    public void r(int i9) throws IOException {
        this.f40545a.value(i9);
    }

    @Override // g5.d
    public void s(long j10) throws IOException {
        this.f40545a.value(j10);
    }

    @Override // g5.d
    public void t(BigDecimal bigDecimal) throws IOException {
        this.f40545a.value(bigDecimal);
    }

    @Override // g5.d
    public void v(BigInteger bigInteger) throws IOException {
        this.f40545a.value(bigInteger);
    }

    @Override // g5.d
    public void w() throws IOException {
        this.f40545a.beginArray();
    }

    @Override // g5.d
    public void y() throws IOException {
        this.f40545a.beginObject();
    }
}
