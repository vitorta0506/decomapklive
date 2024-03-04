package com.xiaomi.push.service;

import android.content.SharedPreferences;
import com.xiaomi.push.i3;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class o0 {

    /* renamed from: d  reason: collision with root package name */
    private static String f37320d;

    /* renamed from: e  reason: collision with root package name */
    private static o0 f37321e = new o0();

    /* renamed from: a  reason: collision with root package name */
    private List<a> f37322a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private com.xiaomi.push.v f37323b;

    /* renamed from: c  reason: collision with root package name */
    private i3.b f37324c;

    /* loaded from: classes5.dex */
    public static abstract class a {
        public void b(com.xiaomi.push.v vVar) {
        }

        public void c(com.xiaomi.push.x xVar) {
        }
    }

    private o0() {
    }

    public static o0 e() {
        return f37321e;
    }

    public static synchronized String f() {
        String str;
        synchronized (o0.class) {
            if (f37320d == null) {
                SharedPreferences sharedPreferences = sf.j.b().getSharedPreferences("XMPushServiceConfig", 0);
                String string = sharedPreferences.getString("DeviceUUID", null);
                f37320d = string;
                if (string == null) {
                    String c10 = sf.b.c(sf.j.b());
                    f37320d = c10;
                    if (c10 != null) {
                        sharedPreferences.edit().putString("DeviceUUID", f37320d).commit();
                    }
                }
            }
            str = f37320d;
        }
        return str;
    }

    private void l() {
        if (this.f37323b == null) {
            n();
        }
    }

    private void m() {
        if (this.f37324c != null) {
            return;
        }
        p0 p0Var = new p0(this);
        this.f37324c = p0Var;
        com.xiaomi.push.c2.a(p0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = sf.j.b()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L27
            java.lang.String r2 = "XMCloudCfg"
            java.io.FileInputStream r1 = r1.openFileInput(r2)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L27
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L27
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L27
            com.xiaomi.push.l0 r0 = com.xiaomi.push.l0.f(r2)     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L4f
            com.xiaomi.push.v r0 = com.xiaomi.push.v.r(r0)     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L4f
            r4.f37323b = r0     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L4f
            r2.close()     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L4f
        L1d:
            com.xiaomi.push.y2.b(r2)
            goto L43
        L21:
            r0 = move-exception
            goto L2a
        L23:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L50
        L27:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L2a:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f
            r1.<init>()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r3 = "load config failure: "
            r1.append(r3)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L4f
            r1.append(r0)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> L4f
            tf.c.l(r0)     // Catch: java.lang.Throwable -> L4f
            goto L1d
        L43:
            com.xiaomi.push.v r0 = r4.f37323b
            if (r0 != 0) goto L4e
            com.xiaomi.push.v r0 = new com.xiaomi.push.v
            r0.<init>()
            r4.f37323b = r0
        L4e:
            return
        L4f:
            r0 = move-exception
        L50:
            com.xiaomi.push.y2.b(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.o0.n():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            if (this.f37323b != null) {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(sf.j.b().openFileOutput("XMCloudCfg", 0));
                com.xiaomi.push.c n9 = com.xiaomi.push.c.n(bufferedOutputStream);
                this.f37323b.e(n9);
                n9.q();
                bufferedOutputStream.close();
            }
        } catch (Exception e10) {
            tf.c.l("save config failure: " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        l();
        com.xiaomi.push.v vVar = this.f37323b;
        if (vVar != null) {
            return vVar.u();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void h() {
        this.f37322a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(com.xiaomi.push.x xVar) {
        a[] aVarArr;
        if (xVar.u() && xVar.t() > a()) {
            m();
        }
        synchronized (this) {
            List<a> list = this.f37322a;
            aVarArr = (a[]) list.toArray(new a[list.size()]);
        }
        for (a aVar : aVarArr) {
            aVar.c(xVar);
        }
    }

    public synchronized void j(a aVar) {
        this.f37322a.add(aVar);
    }
}
