package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y0 {

    /* renamed from: a  reason: collision with root package name */
    static final long f14192a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f14193b = new Object();
    @GuardedBy("WakeLockHolder.syncObject")

    /* renamed from: c  reason: collision with root package name */
    private static s4.a f14194c;

    @GuardedBy("WakeLockHolder.syncObject")
    private static void b(Context context) {
        if (f14194c == null) {
            s4.a aVar = new s4.a(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f14194c = aVar;
            aVar.d(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(@NonNull Intent intent) {
        synchronized (f14193b) {
            if (f14194c != null && d(intent)) {
                g(intent, false);
                f14194c.c();
            }
        }
    }

    @VisibleForTesting
    static boolean d(@NonNull Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(Context context, d1 d1Var, final Intent intent) {
        synchronized (f14193b) {
            b(context);
            boolean d10 = d(intent);
            g(intent, true);
            if (!d10) {
                f14194c.a(f14192a);
            }
            d1Var.c(intent).b(g.f14068a, new t4.c() { // from class: com.google.firebase.messaging.x0
                @Override // t4.c
                public final void a(t4.g gVar) {
                    y0.c(intent);
                }
            });
        }
    }

    private static void g(@NonNull Intent intent, boolean z10) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentName h(@NonNull Context context, @NonNull Intent intent) {
        synchronized (f14193b) {
            b(context);
            boolean d10 = d(intent);
            g(intent, true);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            if (!d10) {
                f14194c.a(f14192a);
            }
            return startService;
        }
    }
}
