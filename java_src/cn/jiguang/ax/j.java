package cn.jiguang.ax;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.imsdk.BaseConstants;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public class j {

    /* renamed from: b  reason: collision with root package name */
    private k f2170b;

    /* renamed from: c  reason: collision with root package name */
    private h f2171c;

    /* renamed from: f  reason: collision with root package name */
    private o f2174f;

    /* renamed from: a  reason: collision with root package name */
    private LinkedHashSet<g> f2169a = new LinkedHashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private p f2172d = new p(5, 2000, null, "ssn");

    /* renamed from: e  reason: collision with root package name */
    private f f2173e = new f();

    public j(k kVar) {
        this.f2170b = kVar;
    }

    private void a(LinkedHashSet<g> linkedHashSet) {
        linkedHashSet.removeAll(this.f2169a);
        if (linkedHashSet.isEmpty()) {
            return;
        }
        LinkedHashSet<g> a10 = e.a(this.f2170b.f2176a, linkedHashSet, 0L);
        cn.jiguang.as.d.c("SisConn", "connect: last good sis info" + a10);
        Iterator<g> it = a10.iterator();
        while (it.hasNext() && !a(it.next())) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.LinkedHashSet<cn.jiguang.ax.g> r13, long r14) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ax.j.a(java.util.LinkedHashSet, long):void");
    }

    private boolean a() {
        return (a(this.f2170b.f2176a, cn.jiguang.f.h.c(this.f2170b.f2176a)) || cn.jiguang.f.i.a(((Long) cn.jiguang.g.b.a(this.f2170b.f2176a, cn.jiguang.g.a.M())).longValue(), 180000L)) ? false : true;
    }

    private static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String str2 = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.F());
        cn.jiguang.as.d.c("SisConn", "newType=" + str + " last=" + str2);
        return !str.equalsIgnoreCase(str2);
    }

    private boolean a(g gVar) {
        cn.jiguang.az.f fVar;
        if (!this.f2171c.f2164a) {
            if (this.f2172d.a()) {
                return true;
            }
            if (gVar != null && gVar.a() && !this.f2169a.contains(gVar)) {
                cn.jiguang.ba.b a10 = cn.jiguang.ba.b.a();
                k kVar = this.f2170b;
                InetAddress[] b10 = a10.b(kVar.f2176a, gVar.f2161a, 3000L, kVar.a());
                if (b10 != null && b10.length != 0) {
                    Iterator it = cn.jiguang.f.i.a(Arrays.asList(b10)).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        InetAddress inetAddress = (InetAddress) it.next();
                        if (!this.f2171c.f2164a) {
                            if (!this.f2172d.a()) {
                                g gVar2 = new g(inetAddress, gVar.f2162b);
                                if (!this.f2169a.contains(gVar2) && this.f2173e.a(gVar2)) {
                                    this.f2169a.add(gVar2);
                                    p pVar = this.f2172d;
                                    pVar.a((Callable<?>) new b(this.f2170b, pVar, this.f2173e, this.f2171c));
                                    break;
                                }
                            } else {
                                return true;
                            }
                        } else {
                            fVar = new cn.jiguang.az.f(-991, null);
                            break;
                        }
                    }
                    this.f2169a.add(gVar);
                }
            }
            return false;
        }
        fVar = new cn.jiguang.az.f(-991, null);
        this.f2172d.a(fVar);
        return true;
    }

    private void b() {
        g a10 = g.a((String) cn.jiguang.g.b.a(this.f2170b.f2176a, cn.jiguang.g.a.c(true)));
        cn.jiguang.as.d.c("SisConn", "connect: use last good v4 address=" + a10);
        if (a(a10)) {
            return;
        }
        g a11 = g.a((String) cn.jiguang.g.b.a(this.f2170b.f2176a, cn.jiguang.g.a.c(false)));
        cn.jiguang.as.d.c("SisConn", "connect: use last good v6 address=" + a11);
        if (a(a11)) {
            return;
        }
        LinkedHashSet<g> c10 = c();
        if (c10 != null) {
            c10.removeAll(this.f2169a);
        }
        LinkedList a12 = cn.jiguang.f.i.a(c10);
        cn.jiguang.as.d.c("SisConn", "connect: use defaultConn=" + a12);
        Iterator it = a12.iterator();
        while (it.hasNext()) {
            if (a((g) it.next())) {
                return;
            }
        }
        LinkedHashSet<g> a13 = cn.jiguang.ay.l.a().a(cn.jiguang.aw.a.b(this.f2170b.f2176a), 10000L);
        a12.clear();
        if (a13 != null) {
            a13.removeAll(this.f2169a);
            a12 = cn.jiguang.f.i.a(a13);
        }
        cn.jiguang.as.d.c("SisConn", "connect: use srv address" + a12);
        Iterator it2 = a12.iterator();
        while (it2.hasNext() && !a((g) it2.next())) {
        }
    }

    private LinkedHashSet<g> c() {
        String a10;
        LinkedList a11;
        try {
            a10 = cn.jiguang.aw.a.a(this.f2170b.f2176a);
            cn.jiguang.as.d.c("SisConn", "load Default Conn, from host=" + a10);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(a10)) {
            return null;
        }
        cn.jiguang.ba.b a12 = cn.jiguang.ba.b.a();
        k kVar = this.f2170b;
        InetAddress[] b10 = a12.b(kVar.f2176a, a10, 3000L, kVar.a());
        if (b10 != null && b10.length != 0 && (a11 = cn.jiguang.f.i.a(Arrays.asList(b10))) != null && !a11.isEmpty()) {
            String hostAddress = ((InetAddress) a11.get(0)).getHostAddress();
            LinkedHashSet<g> linkedHashSet = new LinkedHashSet<>();
            linkedHashSet.add(new g(hostAddress, 7000));
            linkedHashSet.add(new g(hostAddress, 7002));
            linkedHashSet.add(new g(hostAddress, (int) BaseConstants.ERR_SDK_COMM_INVALID_IDENTIFIER));
            linkedHashSet.add(new g(hostAddress, (int) BaseConstants.ERR_SDK_COMM_FILE_NOT_FOUND));
            linkedHashSet.add(new g(hostAddress, (int) BaseConstants.ERR_SDK_COMM_FILE_TOO_LARGE));
            linkedHashSet.add(new g(hostAddress, (int) BaseConstants.ERR_SDK_COMM_FILE_SIZE_EMPTY));
            linkedHashSet.add(new g(hostAddress, (int) BaseConstants.ERR_SDK_COMM_FILE_OPEN_FAILED));
            linkedHashSet.add(new g(hostAddress, (int) BaseConstants.ERR_SDK_COMM_API_CALL_FREQUENCY_LIMIT));
            linkedHashSet.add(new g(hostAddress, 7009));
            return linkedHashSet;
        }
        return null;
    }

    public cn.jiguang.bc.a a(h hVar) {
        this.f2171c = hVar;
        cn.jiguang.as.d.c("SisConn", "start sisAndConnect...");
        this.f2173e = new f();
        long uptimeMillis = SystemClock.uptimeMillis() + 12000;
        LinkedHashSet<g> b10 = g.b((String) cn.jiguang.g.b.a(this.f2170b.f2176a, cn.jiguang.g.a.J()));
        boolean z10 = (b10 == null || b10.isEmpty()) ? false : true;
        boolean a10 = a();
        if (z10 && a10) {
            a(b10);
        }
        l a11 = this.f2170b.a(12000L);
        LinkedHashSet<g> linkedHashSet = a11 != null ? a11.f2183a : null;
        if (linkedHashSet != null && !linkedHashSet.isEmpty()) {
            this.f2170b.a(a11.f2189g);
            a(linkedHashSet, uptimeMillis);
        } else if (z10 && !a10) {
            a(b10);
        }
        b();
        cn.jiguang.as.d.c("SisConn", "wait final result...");
        Object a12 = this.f2172d.a(60000L);
        this.f2172d.a(false);
        if (a12 instanceof cn.jiguang.bc.a) {
            cn.jiguang.as.d.c("SisConn", "connect succeed");
            return (cn.jiguang.bc.a) a12;
        } else if (a12 instanceof Exception) {
            cn.jiguang.as.d.c("SisConn", "all sis and connect failed, e:" + a12);
            throw ((Exception) a12);
        } else {
            cn.jiguang.as.d.g("SisConn", "all sis and connect failed:" + a12);
            throw new cn.jiguang.az.f(1, null);
        }
    }
}
