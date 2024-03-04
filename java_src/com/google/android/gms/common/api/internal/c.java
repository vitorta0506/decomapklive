package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class c implements Handler.Callback {
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public static final Status f7514r = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: s  reason: collision with root package name */
    private static final Status f7515s = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: t  reason: collision with root package name */
    private static final Object f7516t = new Object();
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static c f7517u;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private TelemetryData f7522e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.gms.common.internal.t f7523f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f7524g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.gms.common.a f7525h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.gms.common.internal.g0 f7526i;

    /* renamed from: p  reason: collision with root package name */
    private final Handler f7533p;

    /* renamed from: q  reason: collision with root package name */
    private volatile boolean f7534q;

    /* renamed from: a  reason: collision with root package name */
    private long f7518a = 5000;

    /* renamed from: b  reason: collision with root package name */
    private long f7519b = 120000;

    /* renamed from: c  reason: collision with root package name */
    private long f7520c = 10000;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7521d = false;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicInteger f7527j = new AtomicInteger(1);

    /* renamed from: k  reason: collision with root package name */
    private final AtomicInteger f7528k = new AtomicInteger(0);

    /* renamed from: l  reason: collision with root package name */
    private final Map f7529l = new ConcurrentHashMap(5, 0.75f, 1);
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private h f7530m = null;

    /* renamed from: n  reason: collision with root package name */
    private final Set f7531n = new ArraySet();

    /* renamed from: o  reason: collision with root package name */
    private final Set f7532o = new ArraySet();

    private c(Context context, Looper looper, com.google.android.gms.common.a aVar) {
        this.f7534q = true;
        this.f7524g = context;
        k4.h hVar = new k4.h(looper, this);
        this.f7533p = hVar;
        this.f7525h = aVar;
        this.f7526i = new com.google.android.gms.common.internal.g0(aVar);
        if (e4.h.a(context)) {
            this.f7534q = false;
        }
        hVar.sendMessage(hVar.obtainMessage(6));
    }

    public static void a() {
        synchronized (f7516t) {
            c cVar = f7517u;
            if (cVar != null) {
                cVar.f7528k.incrementAndGet();
                Handler handler = cVar.f7533p;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status i(v3.b bVar, ConnectionResult connectionResult) {
        String b10 = bVar.b();
        String valueOf = String.valueOf(connectionResult);
        return new Status(connectionResult, "API: " + b10 + " is not available on this device. Connection failed with: " + valueOf);
    }

    @WorkerThread
    private final o j(com.google.android.gms.common.api.c cVar) {
        v3.b c10 = cVar.c();
        o oVar = (o) this.f7529l.get(c10);
        if (oVar == null) {
            oVar = new o(this, cVar);
            this.f7529l.put(c10, oVar);
        }
        if (oVar.O()) {
            this.f7532o.add(c10);
        }
        oVar.D();
        return oVar;
    }

    @WorkerThread
    private final com.google.android.gms.common.internal.t k() {
        if (this.f7523f == null) {
            this.f7523f = com.google.android.gms.common.internal.s.a(this.f7524g);
        }
        return this.f7523f;
    }

    @WorkerThread
    private final void l() {
        TelemetryData telemetryData = this.f7522e;
        if (telemetryData != null) {
            if (telemetryData.I() > 0 || g()) {
                k().a(telemetryData);
            }
            this.f7522e = null;
        }
    }

    private final void m(t4.h hVar, int i9, com.google.android.gms.common.api.c cVar) {
        s b10;
        if (i9 == 0 || (b10 = s.b(this, i9, cVar.c())) == null) {
            return;
        }
        t4.g a10 = hVar.a();
        final Handler handler = this.f7533p;
        handler.getClass();
        a10.b(new Executor() { // from class: v3.o
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, b10);
    }

    @NonNull
    public static c y(@NonNull Context context) {
        c cVar;
        synchronized (f7516t) {
            if (f7517u == null) {
                f7517u = new c(context.getApplicationContext(), com.google.android.gms.common.internal.g.c().getLooper(), com.google.android.gms.common.a.m());
            }
            cVar = f7517u;
        }
        return cVar;
    }

    public final void E(@NonNull com.google.android.gms.common.api.c cVar, int i9, @NonNull b bVar) {
        x xVar = new x(i9, bVar);
        Handler handler = this.f7533p;
        handler.sendMessage(handler.obtainMessage(4, new v3.v(xVar, this.f7528k.get(), cVar)));
    }

    public final void F(@NonNull com.google.android.gms.common.api.c cVar, int i9, @NonNull d dVar, @NonNull t4.h hVar, @NonNull v3.k kVar) {
        m(hVar, dVar.d(), cVar);
        y yVar = new y(i9, dVar, hVar, kVar);
        Handler handler = this.f7533p;
        handler.sendMessage(handler.obtainMessage(4, new v3.v(yVar, this.f7528k.get(), cVar)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void G(MethodInvocation methodInvocation, int i9, long j10, int i10) {
        Handler handler = this.f7533p;
        handler.sendMessage(handler.obtainMessage(18, new t(methodInvocation, i9, j10, i10)));
    }

    public final void H(@NonNull ConnectionResult connectionResult, int i9) {
        if (h(connectionResult, i9)) {
            return;
        }
        Handler handler = this.f7533p;
        handler.sendMessage(handler.obtainMessage(5, i9, 0, connectionResult));
    }

    public final void b() {
        Handler handler = this.f7533p;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void c(@NonNull com.google.android.gms.common.api.c cVar) {
        Handler handler = this.f7533p;
        handler.sendMessage(handler.obtainMessage(7, cVar));
    }

    public final void d(@NonNull h hVar) {
        synchronized (f7516t) {
            if (this.f7530m != hVar) {
                this.f7530m = hVar;
                this.f7531n.clear();
            }
            this.f7531n.addAll(hVar.t());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(@NonNull h hVar) {
        synchronized (f7516t) {
            if (this.f7530m == hVar) {
                this.f7530m = null;
                this.f7531n.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean g() {
        if (this.f7521d) {
            return false;
        }
        RootTelemetryConfiguration a10 = com.google.android.gms.common.internal.q.b().a();
        if (a10 == null || a10.L()) {
            int a11 = this.f7526i.a(this.f7524g, 203400000);
            return a11 == -1 || a11 == 0;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h(ConnectionResult connectionResult, int i9) {
        return this.f7525h.w(this.f7524g, connectionResult, i9);
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(@NonNull Message message) {
        o oVar;
        v3.b bVar;
        v3.b bVar2;
        v3.b bVar3;
        v3.b bVar4;
        int i9 = message.what;
        switch (i9) {
            case 1:
                this.f7520c = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.f7533p.removeMessages(12);
                for (v3.b bVar5 : this.f7529l.keySet()) {
                    Handler handler = this.f7533p;
                    handler.sendMessageDelayed(handler.obtainMessage(12, bVar5), this.f7520c);
                }
                break;
            case 2:
                v3.c0 c0Var = (v3.c0) message.obj;
                Iterator it = c0Var.a().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        v3.b bVar6 = (v3.b) it.next();
                        o oVar2 = (o) this.f7529l.get(bVar6);
                        if (oVar2 == null) {
                            c0Var.b(bVar6, new ConnectionResult(13), null);
                            break;
                        } else if (oVar2.N()) {
                            c0Var.b(bVar6, ConnectionResult.RESULT_SUCCESS, oVar2.u().c());
                        } else {
                            ConnectionResult s10 = oVar2.s();
                            if (s10 != null) {
                                c0Var.b(bVar6, s10, null);
                            } else {
                                oVar2.I(c0Var);
                                oVar2.D();
                            }
                        }
                    }
                }
            case 3:
                for (o oVar3 : this.f7529l.values()) {
                    oVar3.C();
                    oVar3.D();
                }
                break;
            case 4:
            case 8:
            case 13:
                v3.v vVar = (v3.v) message.obj;
                o oVar4 = (o) this.f7529l.get(vVar.f58992c.c());
                if (oVar4 == null) {
                    oVar4 = j(vVar.f58992c);
                }
                if (oVar4.O() && this.f7528k.get() != vVar.f58991b) {
                    vVar.f58990a.a(f7514r);
                    oVar4.K();
                    break;
                } else {
                    oVar4.E(vVar.f58990a);
                    break;
                }
            case 5:
                int i10 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it2 = this.f7529l.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        o oVar5 = (o) it2.next();
                        oVar = oVar5.q() == i10 ? oVar5 : null;
                    }
                }
                if (oVar == null) {
                    Log.wtf("GoogleApiManager", "Could not find API instance " + i10 + " while trying to fail enqueued calls.", new Exception());
                    break;
                } else if (connectionResult.I() == 13) {
                    String e10 = this.f7525h.e(connectionResult.I());
                    String K = connectionResult.K();
                    o.x(oVar, new Status(17, "Error resolution was canceled by the user, original error message: " + e10 + ": " + K));
                    break;
                } else {
                    o.x(oVar, i(o.v(oVar), connectionResult));
                    break;
                }
            case 6:
                if (this.f7524g.getApplicationContext() instanceof Application) {
                    a.c((Application) this.f7524g.getApplicationContext());
                    a.b().a(new j(this));
                    if (!a.b().e(true)) {
                        this.f7520c = 300000L;
                        break;
                    }
                }
                break;
            case 7:
                j((com.google.android.gms.common.api.c) message.obj);
                break;
            case 9:
                if (this.f7529l.containsKey(message.obj)) {
                    ((o) this.f7529l.get(message.obj)).J();
                    break;
                }
                break;
            case 10:
                for (v3.b bVar7 : this.f7532o) {
                    o oVar6 = (o) this.f7529l.remove(bVar7);
                    if (oVar6 != null) {
                        oVar6.K();
                    }
                }
                this.f7532o.clear();
                break;
            case 11:
                if (this.f7529l.containsKey(message.obj)) {
                    ((o) this.f7529l.get(message.obj)).L();
                    break;
                }
                break;
            case 12:
                if (this.f7529l.containsKey(message.obj)) {
                    ((o) this.f7529l.get(message.obj)).a();
                    break;
                }
                break;
            case 14:
                i iVar = (i) message.obj;
                v3.b a10 = iVar.a();
                if (!this.f7529l.containsKey(a10)) {
                    iVar.b().c(Boolean.FALSE);
                    break;
                } else {
                    iVar.b().c(Boolean.valueOf(o.M((o) this.f7529l.get(a10), false)));
                    break;
                }
            case 15:
                p pVar = (p) message.obj;
                Map map = this.f7529l;
                bVar = pVar.f7586a;
                if (map.containsKey(bVar)) {
                    Map map2 = this.f7529l;
                    bVar2 = pVar.f7586a;
                    o.A((o) map2.get(bVar2), pVar);
                    break;
                }
                break;
            case 16:
                p pVar2 = (p) message.obj;
                Map map3 = this.f7529l;
                bVar3 = pVar2.f7586a;
                if (map3.containsKey(bVar3)) {
                    Map map4 = this.f7529l;
                    bVar4 = pVar2.f7586a;
                    o.B((o) map4.get(bVar4), pVar2);
                    break;
                }
                break;
            case 17:
                l();
                break;
            case 18:
                t tVar = (t) message.obj;
                if (tVar.f7603c == 0) {
                    k().a(new TelemetryData(tVar.f7602b, Arrays.asList(tVar.f7601a)));
                    break;
                } else {
                    TelemetryData telemetryData = this.f7522e;
                    if (telemetryData != null) {
                        List K2 = telemetryData.K();
                        if (telemetryData.I() == tVar.f7602b && (K2 == null || K2.size() < tVar.f7604d)) {
                            this.f7522e.L(tVar.f7601a);
                        } else {
                            this.f7533p.removeMessages(17);
                            l();
                        }
                    }
                    if (this.f7522e == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(tVar.f7601a);
                        this.f7522e = new TelemetryData(tVar.f7602b, arrayList);
                        Handler handler2 = this.f7533p;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), tVar.f7603c);
                        break;
                    }
                }
                break;
            case 19:
                this.f7521d = false;
                break;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i9);
                return false;
        }
        return true;
    }

    public final int n() {
        return this.f7527j.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final o x(v3.b bVar) {
        return (o) this.f7529l.get(bVar);
    }
}
