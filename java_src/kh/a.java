package kh;

import com.google.common.base.o;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import mh.j;
import mh.k;
import mh.m;
import mh.n;
import oh.a;
import org.light.utils.IOUtils;
/* loaded from: classes6.dex */
final class a extends oh.a {

    /* renamed from: b  reason: collision with root package name */
    static final List<String> f53968b = Collections.singletonList("X-Cloud-Trace-Context");

    /* renamed from: c  reason: collision with root package name */
    static final m f53969c = m.a().b(true).a();

    /* renamed from: d  reason: collision with root package name */
    static final m f53970d = m.f55128b;

    /* renamed from: e  reason: collision with root package name */
    static final int f53971e = 3;

    /* renamed from: f  reason: collision with root package name */
    private static final n f53972f = n.b().b();

    private static long b(k kVar) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(kVar.c());
        return allocate.getLong(0);
    }

    @Override // oh.a
    public <C> void a(j jVar, C c10, a.c<C> cVar) {
        o.t(jVar, "spanContext");
        o.t(cVar, "setter");
        o.t(c10, "carrier");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(jVar.b().c());
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append(com.google.common.primitives.m.f(b(jVar.a())));
        sb2.append(";o=");
        sb2.append(jVar.c().d() ? "1" : "0");
        cVar.a(c10, "X-Cloud-Trace-Context", sb2.toString());
    }
}
