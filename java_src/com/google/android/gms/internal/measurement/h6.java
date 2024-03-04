package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h6 implements e6 {
    @GuardedBy("GservicesLoader.class")

    /* renamed from: c  reason: collision with root package name */
    private static h6 f8111c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8112a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentObserver f8113b;

    private h6() {
        this.f8112a = null;
        this.f8113b = null;
    }

    private h6(Context context) {
        this.f8112a = context;
        g6 g6Var = new g6(this, null);
        this.f8113b = g6Var;
        context.getContentResolver().registerContentObserver(t5.f8338a, true, g6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h6 b(Context context) {
        h6 h6Var;
        h6 h6Var2;
        synchronized (h6.class) {
            if (f8111c == null) {
                if (PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                    h6Var2 = new h6(context);
                } else {
                    h6Var2 = new h6();
                }
                f8111c = h6Var2;
            }
            h6Var = f8111c;
        }
        return h6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void e() {
        Context context;
        synchronized (h6.class) {
            h6 h6Var = f8111c;
            if (h6Var != null && (context = h6Var.f8112a) != null && h6Var.f8113b != null) {
                context.getContentResolver().unregisterContentObserver(f8111c.f8113b);
            }
            f8111c = null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.e6
    /* renamed from: c */
    public final String a(final String str) {
        Context context = this.f8112a;
        if (context != null && !v5.a(context)) {
            try {
                return (String) c6.a(new d6() { // from class: com.google.android.gms.internal.measurement.f6
                    @Override // com.google.android.gms.internal.measurement.d6
                    public final Object zza() {
                        return h6.this.d(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e10) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e10);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String d(String str) {
        return t5.a(this.f8112a.getContentResolver(), str, null);
    }
}
