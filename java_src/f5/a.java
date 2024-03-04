package f5;

import com.google.api.client.util.z;
import g5.c;
import g5.d;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class a extends com.google.api.client.http.a {

    /* renamed from: c  reason: collision with root package name */
    private final Object f39617c;

    /* renamed from: d  reason: collision with root package name */
    private final c f39618d;

    /* renamed from: e  reason: collision with root package name */
    private String f39619e;

    public a(c cVar, Object obj) {
        super("application/json; charset=UTF-8");
        this.f39618d = (c) z.d(cVar);
        this.f39617c = z.d(obj);
    }

    @Override // com.google.api.client.util.d0
    public void writeTo(OutputStream outputStream) throws IOException {
        d a10 = this.f39618d.a(outputStream, e());
        if (this.f39619e != null) {
            a10.y();
            a10.k(this.f39619e);
        }
        a10.b(this.f39617c);
        if (this.f39619e != null) {
            a10.j();
        }
        a10.flush();
    }
}
