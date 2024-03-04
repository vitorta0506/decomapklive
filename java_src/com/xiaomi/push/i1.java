package com.xiaomi.push;

import android.os.SystemClock;
import com.xiaomi.push.service.XMPushService;
import java.io.IOException;
import java.net.Socket;
/* loaded from: classes5.dex */
public abstract class i1 extends c1 {
    protected volatile long A;
    private int B;
    private long C;

    /* renamed from: t  reason: collision with root package name */
    protected Exception f36912t;

    /* renamed from: u  reason: collision with root package name */
    protected Socket f36913u;

    /* renamed from: v  reason: collision with root package name */
    String f36914v;

    /* renamed from: w  reason: collision with root package name */
    private String f36915w;

    /* renamed from: x  reason: collision with root package name */
    protected XMPushService f36916x;

    /* renamed from: y  reason: collision with root package name */
    protected volatile long f36917y;

    /* renamed from: z  reason: collision with root package name */
    protected volatile long f36918z;

    public i1(XMPushService xMPushService, d1 d1Var) {
        super(xMPushService, d1Var);
        this.f36912t = null;
        this.f36914v = null;
        this.f36917y = 0L;
        this.f36918z = 0L;
        this.A = 0L;
        this.C = 0L;
        this.f36916x = xMPushService;
    }

    private void F(d1 d1Var) {
        H(d1Var.k(), d1Var.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02d5 A[EDGE_INSN: B:105:0x02d5->B:76:0x02d5 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x026a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x030f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void H(java.lang.String r29, int r30) {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.i1.H(java.lang.String, int):void");
    }

    i B(String str) {
        i b10 = m.c().b(str, false);
        if (!b10.u()) {
            c2.b(new l1(this, str));
        }
        return b10;
    }

    public Socket C() {
        return new Socket();
    }

    protected abstract void D();

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void E(int i9, Exception exc) {
        if (a() == 2) {
            return;
        }
        g(2, i9, exc);
        this.f36421j = "";
        try {
            this.f36913u.close();
        } catch (Throwable unused) {
        }
        this.f36917y = 0L;
        this.f36918z = 0L;
    }

    protected void G(Exception exc) {
        if (SystemClock.elapsedRealtime() - this.A < 300000) {
            if (!p3.m(this.f36916x)) {
                return;
            }
            int i9 = this.B + 1;
            this.B = i9;
            if (i9 < 2) {
                return;
            }
            String c10 = c();
            tf.c.l("max short conn time reached, sink down current host:" + c10);
            I(c10, 0L, exc);
        }
        this.B = 0;
    }

    protected void I(String str, long j10, Exception exc) {
        i b10 = m.c().b(d1.b(), false);
        if (b10 != null) {
            b10.t(str, j10, 0L, exc);
            m.c().y();
        }
    }

    protected abstract void J(boolean z10);

    public String K() {
        return this.f36421j;
    }

    public void L(int i9, Exception exc) {
        this.f36916x.a(new k1(this, 2, i9, exc));
    }

    public synchronized void M() {
        try {
            if (!z() && !x()) {
                g(0, 0, null);
                F(this.f36425n);
                return;
            }
            tf.c.l("WARNING: current xmpp has connected");
        } catch (IOException e10) {
            throw new cd(e10);
        }
    }

    public void N() {
        this.f36917y = SystemClock.elapsedRealtime();
    }

    public void O() {
        this.f36918z = SystemClock.elapsedRealtime();
    }

    @Override // com.xiaomi.push.c1
    public String c() {
        return this.f36915w;
    }

    @Override // com.xiaomi.push.c1
    public void s(int i9, Exception exc) {
        E(i9, exc);
        if ((exc != null || i9 == 18) && this.A != 0) {
            G(exc);
        }
    }

    @Override // com.xiaomi.push.c1
    public void w(boolean z10) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        J(z10);
        com.xiaomi.push.service.w1.c(this.f36916x).q();
        if (z10) {
            return;
        }
        this.f36916x.a(new j1(this, 13, elapsedRealtime, currentTimeMillis), 10000L);
    }
}
