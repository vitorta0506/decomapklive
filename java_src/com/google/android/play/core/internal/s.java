package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: o */
    private static final Map f10597o = new HashMap();

    /* renamed from: a */
    private final Context f10598a;

    /* renamed from: b */
    private final g f10599b;

    /* renamed from: c */
    private final String f10600c;

    /* renamed from: g */
    private boolean f10604g;

    /* renamed from: h */
    private final Intent f10605h;

    /* renamed from: i */
    private final n f10606i;
    @Nullable

    /* renamed from: m */
    private ServiceConnection f10610m;
    @Nullable

    /* renamed from: n */
    private IInterface f10611n;

    /* renamed from: d */
    private final List f10601d = new ArrayList();
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: e */
    private final Set f10602e = new HashSet();

    /* renamed from: f */
    private final Object f10603f = new Object();

    /* renamed from: k */
    private final IBinder.DeathRecipient f10608k = new IBinder.DeathRecipient() { // from class: com.google.android.play.core.internal.i
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            s.i(s.this);
        }
    };
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: l */
    private final AtomicInteger f10609l = new AtomicInteger(0);

    /* renamed from: j */
    private final WeakReference f10607j = new WeakReference(null);

    public s(Context context, g gVar, String str, Intent intent, n nVar, @Nullable m mVar) {
        this.f10598a = context;
        this.f10599b = gVar;
        this.f10600c = str;
        this.f10605h = intent;
        this.f10606i = nVar;
    }

    public static /* synthetic */ void i(s sVar) {
        sVar.f10599b.d("reportBinderDeath", new Object[0]);
        m mVar = (m) sVar.f10607j.get();
        if (mVar != null) {
            sVar.f10599b.d("calling onBinderDied", new Object[0]);
            mVar.zza();
        } else {
            sVar.f10599b.d("%s : Binder has died.", sVar.f10600c);
            for (h hVar : sVar.f10601d) {
                hVar.d(sVar.t());
            }
            sVar.f10601d.clear();
        }
        sVar.u();
    }

    public static /* bridge */ /* synthetic */ void n(s sVar, h hVar) {
        if (sVar.f10611n != null || sVar.f10604g) {
            if (sVar.f10604g) {
                sVar.f10599b.d("Waiting to bind to the service.", new Object[0]);
                sVar.f10601d.add(hVar);
                return;
            }
            hVar.run();
            return;
        }
        sVar.f10599b.d("Initiate binding to the service.", new Object[0]);
        sVar.f10601d.add(hVar);
        r rVar = new r(sVar, null);
        sVar.f10610m = rVar;
        sVar.f10604g = true;
        if (sVar.f10598a.bindService(sVar.f10605h, rVar, 1)) {
            return;
        }
        sVar.f10599b.d("Failed to bind to the service.", new Object[0]);
        sVar.f10604g = false;
        for (h hVar2 : sVar.f10601d) {
            hVar2.d(new zzat());
        }
        sVar.f10601d.clear();
    }

    public static /* bridge */ /* synthetic */ void o(s sVar) {
        sVar.f10599b.d("linkToDeath", new Object[0]);
        try {
            sVar.f10611n.asBinder().linkToDeath(sVar.f10608k, 0);
        } catch (RemoteException e10) {
            sVar.f10599b.c(e10, "linkToDeath failed", new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void p(s sVar) {
        sVar.f10599b.d("unlinkToDeath", new Object[0]);
        sVar.f10611n.asBinder().unlinkToDeath(sVar.f10608k, 0);
    }

    private final RemoteException t() {
        return new RemoteException(String.valueOf(this.f10600c).concat(" : Binder has died."));
    }

    public final void u() {
        synchronized (this.f10603f) {
            for (d5.o oVar : this.f10602e) {
                oVar.d(t());
            }
            this.f10602e.clear();
        }
    }

    public final Handler c() {
        Handler handler;
        Map map = f10597o;
        synchronized (map) {
            if (!map.containsKey(this.f10600c)) {
                HandlerThread handlerThread = new HandlerThread(this.f10600c, 10);
                handlerThread.start();
                map.put(this.f10600c, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) map.get(this.f10600c);
        }
        return handler;
    }

    @Nullable
    public final IInterface e() {
        return this.f10611n;
    }

    public final void q(h hVar, @Nullable final d5.o oVar) {
        synchronized (this.f10603f) {
            this.f10602e.add(oVar);
            oVar.a().a(new d5.a() { // from class: com.google.android.play.core.internal.j
                @Override // d5.a
                public final void a(d5.d dVar) {
                    s.this.r(oVar, dVar);
                }
            });
        }
        synchronized (this.f10603f) {
            if (this.f10609l.getAndIncrement() > 0) {
                this.f10599b.a("Already connected to the service.", new Object[0]);
            }
        }
        c().post(new k(this, hVar.c(), hVar));
    }

    public final /* synthetic */ void r(d5.o oVar, d5.d dVar) {
        synchronized (this.f10603f) {
            this.f10602e.remove(oVar);
        }
    }

    public final void s(d5.o oVar) {
        synchronized (this.f10603f) {
            this.f10602e.remove(oVar);
        }
        synchronized (this.f10603f) {
            if (this.f10609l.get() > 0 && this.f10609l.decrementAndGet() > 0) {
                this.f10599b.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            c().post(new l(this));
        }
    }
}
