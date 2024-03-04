package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
@KeepName
/* loaded from: classes2.dex */
public abstract class BasePendingResult<R extends com.google.android.gms.common.api.i> extends com.google.android.gms.common.api.f<R> {

    /* renamed from: o */
    static final ThreadLocal f7487o = new f0();

    /* renamed from: p */
    public static final /* synthetic */ int f7488p = 0;

    /* renamed from: a */
    private final Object f7489a;
    @NonNull

    /* renamed from: b */
    protected final a f7490b;
    @NonNull

    /* renamed from: c */
    protected final WeakReference f7491c;

    /* renamed from: d */
    private final CountDownLatch f7492d;

    /* renamed from: e */
    private final ArrayList f7493e;
    @Nullable

    /* renamed from: f */
    private com.google.android.gms.common.api.j f7494f;

    /* renamed from: g */
    private final AtomicReference f7495g;
    @Nullable

    /* renamed from: h */
    private com.google.android.gms.common.api.i f7496h;

    /* renamed from: i */
    private Status f7497i;

    /* renamed from: j */
    private volatile boolean f7498j;

    /* renamed from: k */
    private boolean f7499k;

    /* renamed from: l */
    private boolean f7500l;
    @Nullable

    /* renamed from: m */
    private com.google.android.gms.common.internal.j f7501m;
    @KeepName
    private g0 mResultGuardian;

    /* renamed from: n */
    private boolean f7502n;

    /* loaded from: classes2.dex */
    public static class a<R extends com.google.android.gms.common.api.i> extends k4.h {
        public a(@NonNull Looper looper) {
            super(looper);
        }

        public final void a(@NonNull com.google.android.gms.common.api.j jVar, @NonNull com.google.android.gms.common.api.i iVar) {
            int i9 = BasePendingResult.f7488p;
            sendMessage(obtainMessage(1, new Pair((com.google.android.gms.common.api.j) com.google.android.gms.common.internal.p.j(jVar), iVar)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(@NonNull Message message) {
            int i9 = message.what;
            if (i9 == 1) {
                Pair pair = (Pair) message.obj;
                com.google.android.gms.common.api.j jVar = (com.google.android.gms.common.api.j) pair.first;
                com.google.android.gms.common.api.i iVar = (com.google.android.gms.common.api.i) pair.second;
                try {
                    jVar.a(iVar);
                } catch (RuntimeException e10) {
                    BasePendingResult.k(iVar);
                    throw e10;
                }
            } else if (i9 != 2) {
                Log.wtf("BasePendingResult", "Don't know how to handle message: " + i9, new Exception());
            } else {
                ((BasePendingResult) message.obj).d(Status.RESULT_TIMEOUT);
            }
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f7489a = new Object();
        this.f7492d = new CountDownLatch(1);
        this.f7493e = new ArrayList();
        this.f7495g = new AtomicReference();
        this.f7502n = false;
        this.f7490b = new a(Looper.getMainLooper());
        this.f7491c = new WeakReference(null);
    }

    private final com.google.android.gms.common.api.i g() {
        com.google.android.gms.common.api.i iVar;
        synchronized (this.f7489a) {
            com.google.android.gms.common.internal.p.o(!this.f7498j, "Result has already been consumed.");
            com.google.android.gms.common.internal.p.o(e(), "Result is not ready.");
            iVar = this.f7496h;
            this.f7496h = null;
            this.f7494f = null;
            this.f7498j = true;
        }
        if (((w) this.f7495g.getAndSet(null)) == null) {
            return (com.google.android.gms.common.api.i) com.google.android.gms.common.internal.p.j(iVar);
        }
        throw null;
    }

    private final void h(com.google.android.gms.common.api.i iVar) {
        this.f7496h = iVar;
        this.f7497i = iVar.getStatus();
        this.f7501m = null;
        this.f7492d.countDown();
        if (this.f7499k) {
            this.f7494f = null;
        } else {
            com.google.android.gms.common.api.j jVar = this.f7494f;
            if (jVar == null) {
                if (this.f7496h instanceof com.google.android.gms.common.api.h) {
                    this.mResultGuardian = new g0(this, null);
                }
            } else {
                this.f7490b.removeMessages(2);
                this.f7490b.a(jVar, g());
            }
        }
        ArrayList arrayList = this.f7493e;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((f.a) arrayList.get(i9)).a(this.f7497i);
        }
        this.f7493e.clear();
    }

    public static void k(@Nullable com.google.android.gms.common.api.i iVar) {
        if (iVar instanceof com.google.android.gms.common.api.h) {
            try {
                ((com.google.android.gms.common.api.h) iVar).release();
            } catch (RuntimeException e10) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(iVar)), e10);
            }
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(@NonNull f.a aVar) {
        com.google.android.gms.common.internal.p.b(aVar != null, "Callback cannot be null.");
        synchronized (this.f7489a) {
            if (e()) {
                aVar.a(this.f7497i);
            } else {
                this.f7493e.add(aVar);
            }
        }
    }

    @Override // com.google.android.gms.common.api.f
    @NonNull
    public final R b(long j10, @NonNull TimeUnit timeUnit) {
        if (j10 > 0) {
            com.google.android.gms.common.internal.p.i("await must not be called on the UI thread when time is greater than zero.");
        }
        com.google.android.gms.common.internal.p.o(!this.f7498j, "Result has already been consumed.");
        com.google.android.gms.common.internal.p.o(true, "Cannot await if then() has been called.");
        try {
            if (!this.f7492d.await(j10, timeUnit)) {
                d(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException unused) {
            d(Status.RESULT_INTERRUPTED);
        }
        com.google.android.gms.common.internal.p.o(e(), "Result is not ready.");
        return (R) g();
    }

    @NonNull
    public abstract R c(@NonNull Status status);

    @Deprecated
    public final void d(@NonNull Status status) {
        synchronized (this.f7489a) {
            if (!e()) {
                f(c(status));
                this.f7500l = true;
            }
        }
    }

    public final boolean e() {
        return this.f7492d.getCount() == 0;
    }

    public final void f(@NonNull R r10) {
        synchronized (this.f7489a) {
            if (!this.f7500l && !this.f7499k) {
                e();
                com.google.android.gms.common.internal.p.o(!e(), "Results have already been set");
                com.google.android.gms.common.internal.p.o(!this.f7498j, "Result has already been consumed");
                h(r10);
                return;
            }
            k(r10);
        }
    }

    public final void j() {
        boolean z10 = true;
        if (!this.f7502n && !((Boolean) f7487o.get()).booleanValue()) {
            z10 = false;
        }
        this.f7502n = z10;
    }

    public BasePendingResult(@Nullable com.google.android.gms.common.api.d dVar) {
        this.f7489a = new Object();
        this.f7492d = new CountDownLatch(1);
        this.f7493e = new ArrayList();
        this.f7495g = new AtomicReference();
        this.f7502n = false;
        this.f7490b = new a(dVar != null ? dVar.c() : Looper.getMainLooper());
        this.f7491c = new WeakReference(dVar);
    }
}
