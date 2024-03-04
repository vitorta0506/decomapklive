package com.xiaomi.push;

import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.push.c1;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
/* loaded from: classes5.dex */
public class y0 extends i1 {
    private Thread D;
    private t0 E;
    private u0 F;
    private byte[] G;

    public y0(XMPushService xMPushService, d1 d1Var) {
        super(xMPushService, d1Var);
    }

    private r0 P(boolean z10) {
        x0 x0Var = new x0();
        if (z10) {
            x0Var.i("1");
        }
        return x0Var;
    }

    private void U() {
        try {
            this.E = new t0(this.f36913u.getInputStream(), this);
            this.F = new u0(this.f36913u.getOutputStream(), this);
            z0 z0Var = new z0(this, "Blob Reader (" + this.f36424m + ")");
            this.D = z0Var;
            z0Var.start();
        } catch (Exception e10) {
            throw new cd("Error to init reader and writer", e10);
        }
    }

    @Override // com.xiaomi.push.i1
    protected synchronized void D() {
        U();
        this.F.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.i1
    public synchronized void E(int i9, Exception exc) {
        t0 t0Var = this.E;
        if (t0Var != null) {
            t0Var.e();
            this.E = null;
        }
        u0 u0Var = this.F;
        if (u0Var != null) {
            try {
                u0Var.c();
            } catch (Exception e10) {
                tf.c.o(e10);
            }
            this.F = null;
        }
        this.G = null;
        super.E(i9, exc);
    }

    @Override // com.xiaomi.push.i1
    protected void J(boolean z10) {
        if (this.F == null) {
            throw new cd("The BlobWriter is null.");
        }
        r0 P = P(z10);
        tf.c.l("[Slim] SND ping id=" + P.w());
        t(P);
        N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(r0 r0Var) {
        if (r0Var == null) {
            return;
        }
        if (r0Var.m()) {
            tf.c.l("[Slim] RCV blob chid=" + r0Var.a() + "; id=" + r0Var.w() + "; errCode=" + r0Var.p() + "; err=" + r0Var.t());
        }
        if (r0Var.a() == 0) {
            if ("PING".equals(r0Var.d())) {
                tf.c.l("[Slim] RCV ping id=" + r0Var.w());
                O();
            } else if ("CLOSE".equals(r0Var.d())) {
                L(13, null);
            }
        }
        for (c1.a aVar : this.f36418g.values()) {
            aVar.a(r0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized byte[] S() {
        if (this.G == null && !TextUtils.isEmpty(this.f36421j)) {
            String f10 = com.xiaomi.push.service.o0.f();
            StringBuilder sb2 = new StringBuilder();
            String str = this.f36421j;
            sb2.append(str.substring(str.length() / 2));
            sb2.append(f10.substring(f10.length() / 2));
            this.G = com.xiaomi.push.service.i0.i(this.f36421j.getBytes(), sb2.toString().getBytes());
        }
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(r1 r1Var) {
        if (r1Var == null) {
            return;
        }
        for (c1.a aVar : this.f36418g.values()) {
            aVar.b(r1Var);
        }
    }

    @Override // com.xiaomi.push.c1
    @Deprecated
    public void j(r1 r1Var) {
        t(r0.b(r1Var, null));
    }

    @Override // com.xiaomi.push.c1
    public synchronized void k(az.b bVar) {
        q0.a(bVar, K(), this);
    }

    @Override // com.xiaomi.push.c1
    public synchronized void m(String str, String str2) {
        q0.b(str, str2, this);
    }

    @Override // com.xiaomi.push.c1
    public void n(r0[] r0VarArr) {
        for (r0 r0Var : r0VarArr) {
            t(r0Var);
        }
    }

    @Override // com.xiaomi.push.c1
    public boolean o() {
        return true;
    }

    @Override // com.xiaomi.push.c1
    public void t(r0 r0Var) {
        u0 u0Var = this.F;
        if (u0Var == null) {
            throw new cd("the writer is null.");
        }
        try {
            int a10 = u0Var.a(r0Var);
            this.f36428q = SystemClock.elapsedRealtime();
            String x10 = r0Var.x();
            if (!TextUtils.isEmpty(x10)) {
                e2.j(this.f36426o, x10, a10, false, true, System.currentTimeMillis());
            }
            for (c1.a aVar : this.f36419h.values()) {
                aVar.a(r0Var);
            }
        } catch (Exception e10) {
            throw new cd(e10);
        }
    }
}
