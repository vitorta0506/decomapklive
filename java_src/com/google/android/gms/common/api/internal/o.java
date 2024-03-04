package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
/* loaded from: classes2.dex */
public final class o implements d.a, d.b {

    /* renamed from: b */
    private final a.f f7574b;

    /* renamed from: c */
    private final v3.b f7575c;

    /* renamed from: d */
    private final g f7576d;

    /* renamed from: g */
    private final int f7579g;
    @Nullable

    /* renamed from: h */
    private final v3.a0 f7580h;

    /* renamed from: i */
    private boolean f7581i;

    /* renamed from: m */
    final /* synthetic */ c f7585m;

    /* renamed from: a */
    private final Queue f7573a = new LinkedList();

    /* renamed from: e */
    private final Set f7577e = new HashSet();

    /* renamed from: f */
    private final Map f7578f = new HashMap();

    /* renamed from: j */
    private final List f7582j = new ArrayList();
    @Nullable

    /* renamed from: k */
    private ConnectionResult f7583k = null;

    /* renamed from: l */
    private int f7584l = 0;

    @WorkerThread
    public o(c cVar, com.google.android.gms.common.api.c cVar2) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f7585m = cVar;
        handler = cVar.f7533p;
        a.f o10 = cVar2.o(handler.getLooper(), this);
        this.f7574b = o10;
        this.f7575c = cVar2.c();
        this.f7576d = new g();
        this.f7579g = cVar2.n();
        if (!o10.f()) {
            this.f7580h = null;
            return;
        }
        context = cVar.f7524g;
        handler2 = cVar.f7533p;
        this.f7580h = cVar2.p(context, handler2);
    }

    public static /* bridge */ /* synthetic */ void A(o oVar, p pVar) {
        if (oVar.f7582j.contains(pVar) && !oVar.f7581i) {
            if (oVar.f7574b.isConnected()) {
                oVar.h();
            } else {
                oVar.D();
            }
        }
    }

    public static /* bridge */ /* synthetic */ void B(o oVar, p pVar) {
        Handler handler;
        Handler handler2;
        Feature feature;
        Feature[] g10;
        if (oVar.f7582j.remove(pVar)) {
            handler = oVar.f7585m.f7533p;
            handler.removeMessages(15, pVar);
            handler2 = oVar.f7585m.f7533p;
            handler2.removeMessages(16, pVar);
            feature = pVar.f7587b;
            ArrayList arrayList = new ArrayList(oVar.f7573a.size());
            for (a0 a0Var : oVar.f7573a) {
                if ((a0Var instanceof v3.s) && (g10 = ((v3.s) a0Var).g(oVar)) != null && e4.b.c(g10, feature)) {
                    arrayList.add(a0Var);
                }
            }
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                a0 a0Var2 = (a0) arrayList.get(i9);
                oVar.f7573a.remove(a0Var2);
                a0Var2.b(new UnsupportedApiCallException(feature));
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean M(o oVar, boolean z10) {
        return oVar.p(false);
    }

    @Nullable
    @WorkerThread
    private final Feature c(@Nullable Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] l10 = this.f7574b.l();
            if (l10 == null) {
                l10 = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(l10.length);
            for (Feature feature : l10) {
                arrayMap.put(feature.I(), Long.valueOf(feature.K()));
            }
            for (Feature feature2 : featureArr) {
                Long l11 = (Long) arrayMap.get(feature2.I());
                if (l11 == null || l11.longValue() < feature2.K()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    @WorkerThread
    private final void d(ConnectionResult connectionResult) {
        for (v3.c0 c0Var : this.f7577e) {
            c0Var.b(this.f7575c, connectionResult, com.google.android.gms.common.internal.n.b(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.f7574b.c() : null);
        }
        this.f7577e.clear();
    }

    @WorkerThread
    public final void e(Status status) {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        g(status, null, false);
    }

    @WorkerThread
    private final void g(@Nullable Status status, @Nullable Exception exc, boolean z10) {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        if ((status == null) != (exc == null)) {
            Iterator it = this.f7573a.iterator();
            while (it.hasNext()) {
                a0 a0Var = (a0) it.next();
                if (!z10 || a0Var.f7509a == 2) {
                    if (status != null) {
                        a0Var.a(status);
                    } else {
                        a0Var.b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    @WorkerThread
    private final void h() {
        ArrayList arrayList = new ArrayList(this.f7573a);
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            a0 a0Var = (a0) arrayList.get(i9);
            if (!this.f7574b.isConnected()) {
                return;
            }
            if (n(a0Var)) {
                this.f7573a.remove(a0Var);
            }
        }
    }

    @WorkerThread
    public final void i() {
        C();
        d(ConnectionResult.RESULT_SUCCESS);
        m();
        Iterator it = this.f7578f.values().iterator();
        if (!it.hasNext()) {
            h();
            k();
            return;
        }
        Objects.requireNonNull((v3.w) it.next());
        throw null;
    }

    @WorkerThread
    public final void j(int i9) {
        Handler handler;
        Handler handler2;
        long j10;
        Handler handler3;
        Handler handler4;
        long j11;
        com.google.android.gms.common.internal.g0 g0Var;
        C();
        this.f7581i = true;
        this.f7576d.e(i9, this.f7574b.m());
        c cVar = this.f7585m;
        handler = cVar.f7533p;
        handler2 = cVar.f7533p;
        Message obtain = Message.obtain(handler2, 9, this.f7575c);
        j10 = this.f7585m.f7518a;
        handler.sendMessageDelayed(obtain, j10);
        c cVar2 = this.f7585m;
        handler3 = cVar2.f7533p;
        handler4 = cVar2.f7533p;
        Message obtain2 = Message.obtain(handler4, 11, this.f7575c);
        j11 = this.f7585m.f7519b;
        handler3.sendMessageDelayed(obtain2, j11);
        g0Var = this.f7585m.f7526i;
        g0Var.c();
        for (v3.w wVar : this.f7578f.values()) {
            wVar.f58993a.run();
        }
    }

    private final void k() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j10;
        handler = this.f7585m.f7533p;
        handler.removeMessages(12, this.f7575c);
        c cVar = this.f7585m;
        handler2 = cVar.f7533p;
        handler3 = cVar.f7533p;
        Message obtainMessage = handler3.obtainMessage(12, this.f7575c);
        j10 = this.f7585m.f7520c;
        handler2.sendMessageDelayed(obtainMessage, j10);
    }

    @WorkerThread
    private final void l(a0 a0Var) {
        a0Var.d(this.f7576d, O());
        try {
            a0Var.c(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.f7574b.b("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    @WorkerThread
    private final void m() {
        Handler handler;
        Handler handler2;
        if (this.f7581i) {
            handler = this.f7585m.f7533p;
            handler.removeMessages(11, this.f7575c);
            handler2 = this.f7585m.f7533p;
            handler2.removeMessages(9, this.f7575c);
            this.f7581i = false;
        }
    }

    @WorkerThread
    private final boolean n(a0 a0Var) {
        boolean z10;
        Handler handler;
        Handler handler2;
        long j10;
        Handler handler3;
        Handler handler4;
        long j11;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        long j12;
        if (!(a0Var instanceof v3.s)) {
            l(a0Var);
            return true;
        }
        v3.s sVar = (v3.s) a0Var;
        Feature c10 = c(sVar.g(this));
        if (c10 == null) {
            l(a0Var);
            return true;
        }
        String name = this.f7574b.getClass().getName();
        String I = c10.I();
        long K = c10.K();
        Log.w("GoogleApiManager", name + " could not execute call because it requires feature (" + I + ", " + K + ").");
        z10 = this.f7585m.f7534q;
        if (z10 && sVar.f(this)) {
            p pVar = new p(this.f7575c, c10, null);
            int indexOf = this.f7582j.indexOf(pVar);
            if (indexOf >= 0) {
                p pVar2 = (p) this.f7582j.get(indexOf);
                handler5 = this.f7585m.f7533p;
                handler5.removeMessages(15, pVar2);
                c cVar = this.f7585m;
                handler6 = cVar.f7533p;
                handler7 = cVar.f7533p;
                Message obtain = Message.obtain(handler7, 15, pVar2);
                j12 = this.f7585m.f7518a;
                handler6.sendMessageDelayed(obtain, j12);
                return false;
            }
            this.f7582j.add(pVar);
            c cVar2 = this.f7585m;
            handler = cVar2.f7533p;
            handler2 = cVar2.f7533p;
            Message obtain2 = Message.obtain(handler2, 15, pVar);
            j10 = this.f7585m.f7518a;
            handler.sendMessageDelayed(obtain2, j10);
            c cVar3 = this.f7585m;
            handler3 = cVar3.f7533p;
            handler4 = cVar3.f7533p;
            Message obtain3 = Message.obtain(handler4, 16, pVar);
            j11 = this.f7585m.f7519b;
            handler3.sendMessageDelayed(obtain3, j11);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            if (o(connectionResult)) {
                return false;
            }
            this.f7585m.h(connectionResult, this.f7579g);
            return false;
        }
        sVar.b(new UnsupportedApiCallException(c10));
        return true;
    }

    @WorkerThread
    private final boolean o(@NonNull ConnectionResult connectionResult) {
        Object obj;
        h hVar;
        Set set;
        h hVar2;
        obj = c.f7516t;
        synchronized (obj) {
            c cVar = this.f7585m;
            hVar = cVar.f7530m;
            if (hVar != null) {
                set = cVar.f7531n;
                if (set.contains(this.f7575c)) {
                    hVar2 = this.f7585m.f7530m;
                    hVar2.s(connectionResult, this.f7579g);
                    return true;
                }
            }
            return false;
        }
    }

    @WorkerThread
    public final boolean p(boolean z10) {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        if (this.f7574b.isConnected() && this.f7578f.size() == 0) {
            if (!this.f7576d.g()) {
                this.f7574b.b("Timing out service connection.");
                return true;
            }
            if (z10) {
                k();
            }
            return false;
        }
        return false;
    }

    public static /* bridge */ /* synthetic */ v3.b v(o oVar) {
        return oVar.f7575c;
    }

    public static /* bridge */ /* synthetic */ void x(o oVar, Status status) {
        oVar.e(status);
    }

    @WorkerThread
    public final void C() {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        this.f7583k = null;
    }

    @WorkerThread
    public final void D() {
        Handler handler;
        com.google.android.gms.common.internal.g0 g0Var;
        Context context;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        if (this.f7574b.isConnected() || this.f7574b.isConnecting()) {
            return;
        }
        try {
            c cVar = this.f7585m;
            g0Var = cVar.f7526i;
            context = cVar.f7524g;
            int b10 = g0Var.b(context, this.f7574b);
            if (b10 != 0) {
                ConnectionResult connectionResult = new ConnectionResult(b10, null);
                String name = this.f7574b.getClass().getName();
                String obj = connectionResult.toString();
                Log.w("GoogleApiManager", "The service for " + name + " is not available: " + obj);
                G(connectionResult, null);
                return;
            }
            c cVar2 = this.f7585m;
            a.f fVar = this.f7574b;
            r rVar = new r(cVar2, fVar, this.f7575c);
            if (fVar.f()) {
                ((v3.a0) com.google.android.gms.common.internal.p.j(this.f7580h)).G0(rVar);
            }
            try {
                this.f7574b.d(rVar);
            } catch (SecurityException e10) {
                G(new ConnectionResult(10), e10);
            }
        } catch (IllegalStateException e11) {
            G(new ConnectionResult(10), e11);
        }
    }

    @WorkerThread
    public final void E(a0 a0Var) {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        if (this.f7574b.isConnected()) {
            if (n(a0Var)) {
                k();
                return;
            } else {
                this.f7573a.add(a0Var);
                return;
            }
        }
        this.f7573a.add(a0Var);
        ConnectionResult connectionResult = this.f7583k;
        if (connectionResult != null && connectionResult.M()) {
            G(this.f7583k, null);
        } else {
            D();
        }
    }

    @WorkerThread
    public final void F() {
        this.f7584l++;
    }

    @WorkerThread
    public final void G(@NonNull ConnectionResult connectionResult, @Nullable Exception exc) {
        Handler handler;
        com.google.android.gms.common.internal.g0 g0Var;
        boolean z10;
        Status i9;
        Status i10;
        Status i11;
        Handler handler2;
        Handler handler3;
        long j10;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        v3.a0 a0Var = this.f7580h;
        if (a0Var != null) {
            a0Var.H0();
        }
        C();
        g0Var = this.f7585m.f7526i;
        g0Var.c();
        d(connectionResult);
        if ((this.f7574b instanceof y3.e) && connectionResult.I() != 24) {
            this.f7585m.f7521d = true;
            c cVar = this.f7585m;
            handler5 = cVar.f7533p;
            handler6 = cVar.f7533p;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.I() == 4) {
            status = c.f7515s;
            e(status);
        } else if (this.f7573a.isEmpty()) {
            this.f7583k = connectionResult;
        } else if (exc != null) {
            handler4 = this.f7585m.f7533p;
            com.google.android.gms.common.internal.p.d(handler4);
            g(null, exc, false);
        } else {
            z10 = this.f7585m.f7534q;
            if (z10) {
                i10 = c.i(this.f7575c, connectionResult);
                g(i10, null, true);
                if (this.f7573a.isEmpty() || o(connectionResult) || this.f7585m.h(connectionResult, this.f7579g)) {
                    return;
                }
                if (connectionResult.I() == 18) {
                    this.f7581i = true;
                }
                if (this.f7581i) {
                    c cVar2 = this.f7585m;
                    handler2 = cVar2.f7533p;
                    handler3 = cVar2.f7533p;
                    Message obtain = Message.obtain(handler3, 9, this.f7575c);
                    j10 = this.f7585m.f7518a;
                    handler2.sendMessageDelayed(obtain, j10);
                    return;
                }
                i11 = c.i(this.f7575c, connectionResult);
                e(i11);
                return;
            }
            i9 = c.i(this.f7575c, connectionResult);
            e(i9);
        }
    }

    @WorkerThread
    public final void H(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        a.f fVar = this.f7574b;
        String name = fVar.getClass().getName();
        String valueOf = String.valueOf(connectionResult);
        fVar.b("onSignInFailed for " + name + " with " + valueOf);
        G(connectionResult, null);
    }

    @WorkerThread
    public final void I(v3.c0 c0Var) {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        this.f7577e.add(c0Var);
    }

    @WorkerThread
    public final void J() {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        if (this.f7581i) {
            D();
        }
    }

    @WorkerThread
    public final void K() {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        e(c.f7514r);
        this.f7576d.f();
        for (v3.f fVar : (v3.f[]) this.f7578f.keySet().toArray(new v3.f[0])) {
            E(new z(fVar, new t4.h()));
        }
        d(new ConnectionResult(4));
        if (this.f7574b.isConnected()) {
            this.f7574b.j(new n(this));
        }
    }

    @WorkerThread
    public final void L() {
        Handler handler;
        com.google.android.gms.common.a aVar;
        Context context;
        Status status;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        if (this.f7581i) {
            m();
            c cVar = this.f7585m;
            aVar = cVar.f7525h;
            context = cVar.f7524g;
            if (aVar.g(context) == 18) {
                status = new Status(21, "Connection timed out waiting for Google Play services update to complete.");
            } else {
                status = new Status(22, "API failed to connect while resuming due to an unknown error.");
            }
            e(status);
            this.f7574b.b("Timing out connection while resuming.");
        }
    }

    public final boolean N() {
        return this.f7574b.isConnected();
    }

    public final boolean O() {
        return this.f7574b.f();
    }

    @WorkerThread
    public final boolean a() {
        return p(true);
    }

    @Override // v3.c
    public final void b(@Nullable Bundle bundle) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f7585m.f7533p;
        if (myLooper == handler.getLooper()) {
            i();
            return;
        }
        handler2 = this.f7585m.f7533p;
        handler2.post(new k(this));
    }

    @Override // v3.h
    @WorkerThread
    public final void f(@NonNull ConnectionResult connectionResult) {
        G(connectionResult, null);
    }

    @Override // v3.c
    public final void onConnectionSuspended(int i9) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f7585m.f7533p;
        if (myLooper == handler.getLooper()) {
            j(i9);
            return;
        }
        handler2 = this.f7585m.f7533p;
        handler2.post(new l(this, i9));
    }

    public final int q() {
        return this.f7579g;
    }

    @WorkerThread
    public final int r() {
        return this.f7584l;
    }

    @Nullable
    @WorkerThread
    public final ConnectionResult s() {
        Handler handler;
        handler = this.f7585m.f7533p;
        com.google.android.gms.common.internal.p.d(handler);
        return this.f7583k;
    }

    public final a.f u() {
        return this.f7574b;
    }

    public final Map w() {
        return this.f7578f;
    }
}
