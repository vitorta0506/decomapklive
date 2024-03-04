package cn.jiguang.ax;

import android.content.Context;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public class i implements Callable<l> {

    /* renamed from: a  reason: collision with root package name */
    private LinkedHashSet<g> f2167a = new LinkedHashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private k f2168b;

    public i(k kVar) {
        this.f2168b = kVar;
    }

    private LinkedHashSet<g> a(Context context) {
        LinkedHashSet<g> b10 = g.b((String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.O()));
        return (b10 == null || b10.isEmpty()) ? g.a(cn.jiguang.aw.a.b()) : b10;
    }

    private void a(p pVar, f fVar) {
        LinkedHashSet<g> a10 = g.a(cn.jiguang.aw.a.a());
        a10.removeAll(this.f2167a);
        LinkedList<g> a11 = cn.jiguang.f.i.a(a10);
        cn.jiguang.as.d.c("Sis", "main sis: sis host=" + a11);
        for (g gVar : a11) {
            if (a(gVar, pVar, fVar)) {
                return;
            }
        }
        g a12 = g.a((String) cn.jiguang.g.b.a(this.f2168b.f2176a, cn.jiguang.g.a.b(true)));
        cn.jiguang.as.d.c("Sis", "main sis: last good sis v4 address=" + a12);
        if (a(a12, pVar, fVar)) {
            return;
        }
        g a13 = g.a((String) cn.jiguang.g.b.a(this.f2168b.f2176a, cn.jiguang.g.a.b(false)));
        cn.jiguang.as.d.c("Sis", "main sis: last good sis v6 address=" + a13);
        a(a13, pVar, fVar);
    }

    private boolean a(g gVar, p pVar, f fVar) {
        if (pVar.a()) {
            return true;
        }
        if (gVar != null && gVar.a() && !this.f2167a.contains(gVar)) {
            cn.jiguang.ba.b a10 = cn.jiguang.ba.b.a();
            k kVar = this.f2168b;
            InetAddress[] b10 = a10.b(kVar.f2176a, gVar.f2161a, 3000L, kVar.a());
            if (b10 != null && b10.length != 0) {
                Iterator it = cn.jiguang.f.i.a(Arrays.asList(b10)).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    InetAddress inetAddress = (InetAddress) it.next();
                    if (!pVar.a()) {
                        g gVar2 = new g(inetAddress, gVar.f2162b);
                        if (!this.f2167a.contains(gVar2) && fVar.a(gVar2)) {
                            this.f2167a.add(gVar2);
                            pVar.a((Callable<?>) new o(this.f2168b, pVar, fVar));
                            break;
                        }
                    } else {
                        return true;
                    }
                }
                this.f2167a.add(gVar);
            }
        }
        return false;
    }

    private void b(p pVar, f fVar) {
        LinkedHashSet<g> a10 = a(this.f2168b.f2176a);
        a10.removeAll(this.f2167a);
        LinkedList<g> a11 = cn.jiguang.f.i.a(a10);
        cn.jiguang.as.d.c("Sis", "main sis: default sis" + a11);
        for (g gVar : a11) {
            if (a(gVar, pVar, fVar)) {
                return;
            }
        }
        LinkedHashSet<g> a12 = cn.jiguang.ay.l.a().a(cn.jiguang.aw.a.c(), 10000L);
        a11.clear();
        if (a12 != null) {
            a12.removeAll(this.f2167a);
            a11 = cn.jiguang.f.i.a(a12);
        }
        cn.jiguang.as.d.c("Sis", "main sis: sis srv" + a11);
        Iterator it = a11.iterator();
        while (it.hasNext() && !a((g) it.next(), pVar, fVar)) {
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public l call() {
        f fVar = new f();
        p pVar = new p(5, 2000, null, "ss");
        a(pVar, fVar);
        cn.jiguang.as.d.c("Sis", "main sis: after host and last good, wait Result");
        Object a10 = pVar.a(60000L);
        if (a10 instanceof l) {
            return (l) a10;
        }
        b(pVar, fVar);
        cn.jiguang.as.d.c("Sis", "main sis: after default and srv, wait Result");
        Object a11 = pVar.a(60000L);
        pVar.a(false);
        if (a11 instanceof l) {
            return (l) a11;
        }
        return null;
    }
}
