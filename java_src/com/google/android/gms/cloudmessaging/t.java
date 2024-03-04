package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public final class t {
    @Nullable

    /* renamed from: e */
    private static t f7432e;

    /* renamed from: a */
    private final Context f7433a;

    /* renamed from: b */
    private final ScheduledExecutorService f7434b;

    /* renamed from: c */
    private o f7435c = new o(this, null);

    /* renamed from: d */
    private int f7436d = 1;

    @VisibleForTesting
    t(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f7434b = scheduledExecutorService;
        this.f7433a = context.getApplicationContext();
    }

    public static /* bridge */ /* synthetic */ Context a(t tVar) {
        return tVar.f7433a;
    }

    public static synchronized t b(Context context) {
        t tVar;
        synchronized (t.class) {
            if (f7432e == null) {
                l4.e.a();
                f7432e = new t(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new f4.a("MessengerIpcClient"))));
            }
            tVar = f7432e;
        }
        return tVar;
    }

    public static /* bridge */ /* synthetic */ ScheduledExecutorService e(t tVar) {
        return tVar.f7434b;
    }

    private final synchronized int f() {
        int i9;
        i9 = this.f7436d;
        this.f7436d = i9 + 1;
        return i9;
    }

    private final synchronized <T> t4.g<T> g(r<T> rVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(rVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 9);
            sb2.append("Queueing ");
            sb2.append(valueOf);
            Log.d("MessengerIpcClient", sb2.toString());
        }
        if (!this.f7435c.g(rVar)) {
            o oVar = new o(this, null);
            this.f7435c = oVar;
            oVar.g(rVar);
        }
        return rVar.f7429b.a();
    }

    public final t4.g<Void> c(int i9, Bundle bundle) {
        return g(new q(f(), 2, bundle));
    }

    public final t4.g<Bundle> d(int i9, Bundle bundle) {
        return g(new s(f(), 1, bundle));
    }
}
