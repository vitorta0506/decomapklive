package s6;

import a6.r;
import java.util.Iterator;
import java.util.Set;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private final String f57679a;

    /* renamed from: b  reason: collision with root package name */
    private final d f57680b;

    c(Set<f> set, d dVar) {
        this.f57679a = d(set);
        this.f57680b = dVar;
    }

    public static a6.d<i> b() {
        return a6.d.c(i.class).b(r.k(f.class)).f(new a6.h() { // from class: s6.b
            @Override // a6.h
            public final Object a(a6.e eVar) {
                i c10;
                c10 = c.c(eVar);
                return c10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i c(a6.e eVar) {
        return new c(eVar.k(f.class), d.a());
    }

    private static String d(Set<f> set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb2.append(next.b());
            sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb2.append(next.c());
            if (it.hasNext()) {
                sb2.append(' ');
            }
        }
        return sb2.toString();
    }

    @Override // s6.i
    public String getUserAgent() {
        if (this.f57680b.b().isEmpty()) {
            return this.f57679a;
        }
        return this.f57679a + ' ' + d(this.f57680b.b());
    }
}
