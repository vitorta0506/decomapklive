package si;

import java.util.ArrayList;
import java.util.BitSet;
import org.apache.http.ParseException;
import org.apache.http.k;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.CharArrayBuffer;
/* loaded from: classes7.dex */
public class c implements f {
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final c f57926b = new c();

    /* renamed from: c  reason: collision with root package name */
    public static final c f57927c = new c();

    /* renamed from: d  reason: collision with root package name */
    private static final BitSet f57928d = h.a(61, 59, 44);

    /* renamed from: e  reason: collision with root package name */
    private static final BitSet f57929e = h.a(59, 44);

    /* renamed from: a  reason: collision with root package name */
    private final h f57930a = h.f57940a;

    public static org.apache.http.d[] d(String str, f fVar) throws ParseException {
        vi.a.g(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        g gVar = new g(0, str.length());
        if (fVar == null) {
            fVar = f57927c;
        }
        return fVar.a(charArrayBuffer, gVar);
    }

    @Override // si.f
    public org.apache.http.d[] a(CharArrayBuffer charArrayBuffer, g gVar) {
        vi.a.g(charArrayBuffer, "Char array buffer");
        vi.a.g(gVar, "Parser cursor");
        ArrayList arrayList = new ArrayList();
        while (!gVar.a()) {
            org.apache.http.d e10 = e(charArrayBuffer, gVar);
            if (!e10.getName().isEmpty() || e10.getValue() != null) {
                arrayList.add(e10);
            }
        }
        return (org.apache.http.d[]) arrayList.toArray(new org.apache.http.d[arrayList.size()]);
    }

    protected org.apache.http.d b(String str, String str2, k[] kVarArr) {
        return new a(str, str2, kVarArr);
    }

    protected k c(String str, String str2) {
        return new BasicNameValuePair(str, str2);
    }

    public org.apache.http.d e(CharArrayBuffer charArrayBuffer, g gVar) {
        vi.a.g(charArrayBuffer, "Char array buffer");
        vi.a.g(gVar, "Parser cursor");
        k f10 = f(charArrayBuffer, gVar);
        return b(f10.getName(), f10.getValue(), (gVar.a() || charArrayBuffer.charAt(gVar.b() + (-1)) == ',') ? null : g(charArrayBuffer, gVar));
    }

    public k f(CharArrayBuffer charArrayBuffer, g gVar) {
        vi.a.g(charArrayBuffer, "Char array buffer");
        vi.a.g(gVar, "Parser cursor");
        String f10 = this.f57930a.f(charArrayBuffer, gVar, f57928d);
        if (gVar.a()) {
            return new BasicNameValuePair(f10, null);
        }
        char charAt = charArrayBuffer.charAt(gVar.b());
        gVar.d(gVar.b() + 1);
        if (charAt != '=') {
            return c(f10, null);
        }
        String g10 = this.f57930a.g(charArrayBuffer, gVar, f57929e);
        if (!gVar.a()) {
            gVar.d(gVar.b() + 1);
        }
        return c(f10, g10);
    }

    public k[] g(CharArrayBuffer charArrayBuffer, g gVar) {
        vi.a.g(charArrayBuffer, "Char array buffer");
        vi.a.g(gVar, "Parser cursor");
        this.f57930a.h(charArrayBuffer, gVar);
        ArrayList arrayList = new ArrayList();
        while (!gVar.a()) {
            arrayList.add(f(charArrayBuffer, gVar));
            if (charArrayBuffer.charAt(gVar.b() - 1) == ',') {
                break;
            }
        }
        return (k[]) arrayList.toArray(new k[arrayList.size()]);
    }
}
