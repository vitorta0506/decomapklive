package cn.jiguang.ax;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class k {

    /* renamed from: c  reason: collision with root package name */
    private static k f2175c;

    /* renamed from: a  reason: collision with root package name */
    Context f2176a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedList<m> f2177b;

    /* renamed from: d  reason: collision with root package name */
    private int f2178d = 0;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f2179e;

    /* renamed from: f  reason: collision with root package name */
    private int f2180f;

    public k(Context context) {
        this.f2176a = context;
        this.f2177b = m.a((String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.G()));
    }

    public static k a(Context context) {
        if (f2175c == null) {
            synchronized (k.class) {
                if (f2175c == null) {
                    f2175c = new k(context);
                }
            }
        }
        return f2175c;
    }

    private n a(int i9) {
        double d10;
        long j10;
        String e10 = cn.jiguang.d.a.e(this.f2176a);
        long f10 = cn.jiguang.d.a.f(this.f2176a);
        String b10 = cn.jiguang.f.h.b(this.f2176a);
        long currentTimeMillis = System.currentTimeMillis();
        Object a10 = cn.jiguang.az.e.a(this.f2176a, "get_loc_info", null);
        double d11 = 200.0d;
        if (a10 instanceof Bundle) {
            try {
                Bundle bundle = (Bundle) a10;
                double d12 = bundle.getDouble("lat");
                try {
                    d11 = bundle.getDouble("lot");
                    j10 = bundle.getLong(CrashHianalyticsData.TIME);
                    d11 = d12;
                    d10 = d11;
                } catch (Throwable unused) {
                    double d13 = d11;
                    d11 = d12;
                    d10 = d13;
                    j10 = currentTimeMillis;
                    return new n(i9, e10, cn.jiguang.a.a.f1808b, f10, b10, d11, d10, j10);
                }
            } catch (Throwable unused2) {
                d10 = 200.0d;
            }
        } else {
            j10 = currentTimeMillis;
            d10 = 200.0d;
        }
        return new n(i9, e10, cn.jiguang.a.a.f1808b, f10, b10, d11, d10, j10);
    }

    private synchronized void a(m mVar) {
        this.f2177b.add(mVar);
        cn.jiguang.as.d.c("SisConnContext", "addSisReportInfo:" + mVar.a().toString());
        while (this.f2177b.size() > 30) {
            this.f2177b.removeFirst();
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<m> it = this.f2177b.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().a());
        }
        cn.jiguang.g.b.a(this.f2176a, cn.jiguang.g.a.G().a((cn.jiguang.g.a<String>) jSONArray.toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(InetAddress inetAddress, int i9, DatagramSocket datagramSocket, byte[] bArr) {
        try {
            return cn.jiguang.f.i.c(c.a(c.a(datagramSocket, new DatagramPacket(bArr, bArr.length, inetAddress, i9)))) == 0;
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("SisConnContext", "report failed : " + th2);
            return false;
        }
    }

    public l a(long j10) {
        FutureTask futureTask = new FutureTask(new i(this));
        this.f2178d = 0;
        cn.jiguang.av.b.d(futureTask, new int[0]);
        if (j10 < 10) {
            j10 = 10;
        }
        try {
            return (l) futureTask.get(j10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            return null;
        }
    }

    public void a(int i9, String str, int i10, long j10, long j11, int i11) {
        if (g.a(str, i10)) {
            m mVar = new m();
            mVar.f2191a = cn.jiguang.d.a.e(this.f2176a);
            mVar.f2192b = i9;
            mVar.f2193c = new g(str, i10);
            mVar.f2195e = j10;
            mVar.f2196f = j11;
            mVar.f2201k = i11;
            mVar.f2197g = cn.jiguang.f.h.a(this.f2176a);
            mVar.f2194d = cn.jiguang.d.a.f(this.f2176a);
            mVar.f2198h = 200.0d;
            mVar.f2199i = 200.0d;
            mVar.f2200j = System.currentTimeMillis();
            Object a10 = cn.jiguang.az.e.a(this.f2176a, "get_loc_info", null);
            if (a10 instanceof Bundle) {
                try {
                    Bundle bundle = (Bundle) a10;
                    mVar.f2198h = bundle.getDouble("lat");
                    mVar.f2199i = bundle.getDouble("lot");
                    mVar.f2200j = bundle.getLong(CrashHianalyticsData.TIME);
                } catch (Throwable unused) {
                }
            }
            a(mVar);
        }
    }

    public void a(final g gVar) {
        if (((Boolean) cn.jiguang.g.b.a(this.f2176a, cn.jiguang.g.a.L())).booleanValue()) {
            if (cn.jiguang.f.i.a(((Long) cn.jiguang.g.b.a(this.f2176a, cn.jiguang.g.a.N())).longValue(), 3600000L)) {
                cn.jiguang.av.b.b(new cn.jiguang.bg.b("SisConnContext#asyncSisReportIfNeed") { // from class: cn.jiguang.ax.k.1
                    @Override // cn.jiguang.bg.b
                    public void a() {
                        DatagramSocket datagramSocket;
                        Object th2;
                        StringBuilder sb2;
                        try {
                            datagramSocket = new DatagramSocket();
                            try {
                                String str = (String) cn.jiguang.g.b.a(k.this.f2176a, cn.jiguang.g.a.G());
                                if (TextUtils.isEmpty(str)) {
                                    cn.jiguang.as.d.c("SisConnContext", "reportInfo is Empty, quit report");
                                    try {
                                        datagramSocket.close();
                                        return;
                                    } catch (Throwable th3) {
                                        cn.jiguang.as.d.g("SisConnContext", "sisReport ,close udpsocket error:" + th3.getMessage());
                                        return;
                                    }
                                }
                                byte[] a10 = c.a("DG", str);
                                cn.jiguang.as.d.c("SisConnContext", "sis report data(" + a10.length + ") at " + gVar.f2163c + CertificateUtil.DELIMITER + gVar.f2162b);
                                k kVar = k.this;
                                g gVar2 = gVar;
                                if (kVar.a(gVar2.f2163c, gVar2.f2162b, datagramSocket, a10)) {
                                    cn.jiguang.as.d.c("SisConnContext", "report succeed : " + str);
                                    cn.jiguang.g.b.a(k.this.f2176a, cn.jiguang.g.a.N().a((cn.jiguang.g.a<Long>) Long.valueOf(SystemClock.elapsedRealtime())));
                                    cn.jiguang.g.b.a(k.this.f2176a, cn.jiguang.g.a.G().a((cn.jiguang.g.a<String>) null));
                                } else {
                                    cn.jiguang.as.d.g("SisConnContext", "report failed" + str);
                                }
                                try {
                                    datagramSocket.close();
                                } catch (Throwable th4) {
                                    th = th4;
                                    sb2 = new StringBuilder();
                                    sb2.append("sisReport ,close udpsocket error:");
                                    sb2.append(th.getMessage());
                                    cn.jiguang.as.d.g("SisConnContext", sb2.toString());
                                }
                            } catch (Throwable th5) {
                                th2 = th5;
                                try {
                                    cn.jiguang.as.d.g("SisConnContext", "sisReport failed, error:" + th2);
                                    if (datagramSocket != null) {
                                        try {
                                            datagramSocket.close();
                                        } catch (Throwable th6) {
                                            th = th6;
                                            sb2 = new StringBuilder();
                                            sb2.append("sisReport ,close udpsocket error:");
                                            sb2.append(th.getMessage());
                                            cn.jiguang.as.d.g("SisConnContext", sb2.toString());
                                        }
                                    }
                                } catch (Throwable th7) {
                                    if (datagramSocket != null) {
                                        try {
                                            datagramSocket.close();
                                        } catch (Throwable th8) {
                                            cn.jiguang.as.d.g("SisConnContext", "sisReport ,close udpsocket error:" + th8.getMessage());
                                        }
                                    }
                                    throw th7;
                                }
                            }
                        } catch (Throwable th9) {
                            datagramSocket = null;
                            th2 = th9;
                        }
                    }
                }, new int[0]);
            } else {
                cn.jiguang.as.d.c("SisConnContext", "sis report: not yet");
            }
        }
    }

    public void a(boolean z10) {
        this.f2178d = (z10 ? 1 : 2) | this.f2178d;
        cn.jiguang.ba.c.a().a(this.f2176a, this.f2178d);
    }

    public boolean a() {
        return false;
    }

    public byte[] a(Set<String> set) {
        int a10 = cn.jiguang.f.h.a(this.f2176a);
        if (this.f2179e == null || a10 != this.f2180f) {
            this.f2180f = a10;
            try {
                this.f2179e = c.a("UG", a(a10).a(set).toString());
            } catch (Exception e10) {
                throw new cn.jiguang.az.f(2, "Failed to package data - " + e10);
            }
        }
        return this.f2179e;
    }

    public int b() {
        if (this.f2178d == 0) {
            this.f2178d = cn.jiguang.ba.c.a().a(this.f2176a);
        }
        int b10 = cn.jiguang.ba.c.a().b(this.f2178d);
        cn.jiguang.as.d.c("SisConnContext", "ipvsupport=" + this.f2178d + ", prefer=" + b10);
        return b10;
    }
}
