package cn.jiguang.ax;

import android.content.Context;
import android.os.SystemClock;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class o implements Callable<l> {

    /* renamed from: a  reason: collision with root package name */
    private final k f2212a;

    /* renamed from: b  reason: collision with root package name */
    private final p f2213b;

    /* renamed from: c  reason: collision with root package name */
    private final f f2214c;

    /* renamed from: d  reason: collision with root package name */
    private Set<String> f2215d;

    /* renamed from: e  reason: collision with root package name */
    private g f2216e;

    public o(k kVar, g gVar, Set<String> set) {
        this.f2212a = kVar;
        this.f2213b = null;
        this.f2214c = null;
        this.f2216e = gVar;
        this.f2215d = set;
    }

    public o(k kVar, p pVar, f fVar) {
        this.f2212a = kVar;
        this.f2213b = pVar;
        this.f2214c = fVar;
    }

    private static void a(Context context, l lVar) {
        if (lVar == null || lVar.a()) {
            return;
        }
        String a10 = g.a(lVar.f2183a);
        String a11 = g.a(lVar.f2184b);
        String c10 = cn.jiguang.f.h.c(context);
        cn.jiguang.as.d.c("SisTask", "updateSisInfo ips=" + a10 + " sslIps=" + a11 + " net=" + c10);
        cn.jiguang.g.a[] aVarArr = new cn.jiguang.g.a[8];
        aVarArr[0] = cn.jiguang.g.a.J().a((cn.jiguang.g.a<String>) a10);
        aVarArr[1] = cn.jiguang.g.a.K().a((cn.jiguang.g.a<String>) a11);
        aVarArr[2] = cn.jiguang.g.a.d(false).a((cn.jiguang.g.a<String>) g.a(lVar.f2185c));
        aVarArr[3] = cn.jiguang.g.a.d(true).a((cn.jiguang.g.a<String>) g.a(lVar.f2186d));
        aVarArr[4] = cn.jiguang.g.a.O().a((cn.jiguang.g.a<String>) g.a(lVar.f2187e));
        cn.jiguang.g.a<String> R = cn.jiguang.g.a.R();
        JSONObject jSONObject = lVar.f2188f;
        aVarArr[5] = R.a((cn.jiguang.g.a<String>) (jSONObject != null ? jSONObject.toString() : null));
        aVarArr[6] = cn.jiguang.g.a.L().a((cn.jiguang.g.a<Boolean>) Boolean.valueOf(lVar.f2190h));
        aVarArr[7] = cn.jiguang.g.a.M().a((cn.jiguang.g.a<Long>) Long.valueOf(SystemClock.elapsedRealtime()));
        cn.jiguang.g.b.a(context, aVarArr);
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.F().a((cn.jiguang.g.a<String>) c10));
    }

    private Object[] a(DatagramSocket datagramSocket, InetAddress inetAddress, int i9) {
        Object[] objArr = new Object[2];
        objArr[1] = 0;
        try {
            byte[] a10 = this.f2212a.a(this.f2215d);
            DatagramPacket datagramPacket = new DatagramPacket(a10, a10.length, inetAddress, i9);
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                byte[] a11 = c.a(datagramSocket, datagramPacket);
                objArr[1] = Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis);
                try {
                    l lVar = new l(new String(c.a(a11)));
                    if (lVar.a()) {
                        objArr[0] = 6;
                        return objArr;
                    }
                    a(this.f2212a.f2176a, lVar);
                    lVar.f2189g = new g(inetAddress, i9);
                    objArr[0] = lVar;
                    return objArr;
                } catch (cn.jiguang.az.f e10) {
                    objArr[0] = Integer.valueOf(e10.a());
                    return objArr;
                }
            } catch (Exception unused) {
                objArr[0] = 3;
                objArr[1] = Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis);
                return objArr;
            }
        } catch (cn.jiguang.az.f e11) {
            objArr[0] = Integer.valueOf(e11.a());
            return objArr;
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public l call() {
        try {
            if (this.f2214c != null) {
                return a(this.f2214c.a(this.f2212a.b()));
            }
            return a(this.f2216e);
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("SisTask", "run e:" + th2);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f5, code lost:
        if (r5 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cn.jiguang.ax.l a(cn.jiguang.ax.g r20) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ax.o.a(cn.jiguang.ax.g):cn.jiguang.ax.l");
    }
}
