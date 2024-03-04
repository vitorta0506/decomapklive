package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class l {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f14080c = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private static d1 f14081d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f14082a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f14083b = g.f14068a;

    public l(Context context) {
        this.f14082a = context;
    }

    private static t4.g<Integer> d(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        if (n0.b().e(context)) {
            y0.f(context, e(context, "com.google.firebase.MESSAGING_EVENT"), intent);
        } else {
            e(context, "com.google.firebase.MESSAGING_EVENT").c(intent);
        }
        return t4.j.e(-1);
    }

    private static d1 e(Context context, String str) {
        d1 d1Var;
        synchronized (f14080c) {
            if (f14081d == null) {
                f14081d = new d1(context, str);
            }
            d1Var = f14081d;
        }
        return d1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer f(Context context, Intent intent) throws Exception {
        return Integer.valueOf(n0.b().g(context, intent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer g(t4.g gVar) throws Exception {
        return 403;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t4.g h(Context context, Intent intent, t4.g gVar) throws Exception {
        return (e4.m.h() && ((Integer) gVar.k()).intValue() == 402) ? d(context, intent).h(g.f14068a, new t4.a() { // from class: com.google.firebase.messaging.k
            @Override // t4.a
            public final Object a(t4.g gVar2) {
                Integer g10;
                g10 = l.g(gVar2);
                return g10;
            }
        }) : gVar;
    }

    public t4.g<Integer> i(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return j(this.f14082a, intent);
    }

    public t4.g<Integer> j(final Context context, final Intent intent) {
        boolean z10 = e4.m.h() && context.getApplicationInfo().targetSdkVersion >= 26;
        boolean z11 = (intent.getFlags() & 268435456) != 0;
        if (z10 && !z11) {
            return d(context, intent);
        }
        return t4.j.c(this.f14083b, new Callable() { // from class: com.google.firebase.messaging.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer f10;
                f10 = l.f(context, intent);
                return f10;
            }
        }).i(this.f14083b, new t4.a() { // from class: com.google.firebase.messaging.j
            @Override // t4.a
            public final Object a(t4.g gVar) {
                t4.g h10;
                h10 = l.h(context, intent, gVar);
                return h10;
            }
        });
    }
}
