package cn.jiguang.ax;

import android.os.SystemClock;
import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public class b implements Callable<cn.jiguang.bc.a> {

    /* renamed from: a  reason: collision with root package name */
    private final k f2144a;

    /* renamed from: b  reason: collision with root package name */
    private final p f2145b;

    /* renamed from: c  reason: collision with root package name */
    private final f f2146c;

    /* renamed from: d  reason: collision with root package name */
    private final h f2147d;

    public b(k kVar, p pVar, f fVar, h hVar) {
        this.f2145b = pVar;
        this.f2144a = kVar;
        this.f2146c = fVar;
        this.f2147d = hVar;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public cn.jiguang.bc.a call() {
        try {
            if (this.f2146c != null) {
                return a(this.f2146c.a(this.f2144a.b()));
            }
            return null;
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("ConnTask", "run e:" + th2);
            return null;
        }
    }

    public cn.jiguang.bc.a a(g gVar) {
        if (this.f2145b.a()) {
            return null;
        }
        h hVar = this.f2147d;
        if (hVar == null || hVar.f2164a) {
            this.f2145b.a(new cn.jiguang.az.f(-991, null));
            return null;
        } else if (gVar == null) {
            return null;
        } else {
            if (!TextUtils.isEmpty(cn.jiguang.aw.a.f2134c)) {
                String str = cn.jiguang.aw.a.f2134c;
                gVar.f2161a = str;
                gVar.f2163c = InetAddress.getByName(str);
            }
            int i9 = cn.jiguang.aw.a.f2135d;
            if (i9 > 0) {
                gVar.f2162b = i9;
            }
            cn.jiguang.as.d.d("ConnTask", "Open connection with ip=" + gVar.f2163c + ", port:" + gVar.f2162b);
            long uptimeMillis = SystemClock.uptimeMillis();
            cn.jiguang.bc.b bVar = new cn.jiguang.bc.b(8128, 20);
            int a10 = bVar.a(gVar.f2161a, gVar.f2162b);
            if (this.f2145b.a()) {
                cn.jiguang.f.i.a(bVar);
                return null;
            } else if (this.f2147d.f2164a) {
                this.f2145b.a(new cn.jiguang.az.f(-991, null));
                cn.jiguang.f.i.a(bVar);
                return null;
            } else if (a10 == 0) {
                cn.jiguang.g.b.a(this.f2144a.f2176a, cn.jiguang.g.a.c((gVar.f2163c instanceof Inet4Address) || cn.jiguang.f.g.f(gVar.f2161a)).a((cn.jiguang.g.a<String>) gVar.toString()));
                cn.jiguang.as.d.f("ConnTask", "Succeed to open connection - ip:" + gVar.f2163c + ", port:" + gVar.f2162b);
                this.f2145b.a(bVar);
                e.a(this.f2144a.f2176a, gVar, 1, 0L);
                return bVar;
            } else {
                long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
                this.f2144a.a(2, gVar.f2161a, gVar.f2162b, cn.jiguang.d.b.b(this.f2144a.f2176a), uptimeMillis2, a10);
                cn.jiguang.as.d.e("ConnTask", "Failed(" + a10 + ") to open connection - ip:" + gVar.f2163c + ", port:" + gVar.f2162b + ", cost:" + uptimeMillis2);
                e.a(this.f2144a.f2176a, gVar, -1, uptimeMillis2);
                cn.jiguang.f.i.a(bVar);
                return null;
            }
        }
    }
}
