package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamite.DynamiteModule;
import t3.l;
import v3.k;
/* loaded from: classes2.dex */
public class b extends com.google.android.gms.common.api.c<GoogleSignInOptions> {

    /* renamed from: k  reason: collision with root package name */
    private static final f f7380k = new f(null);

    /* renamed from: l  reason: collision with root package name */
    static int f7381l = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, o3.a.f55493c, googleSignInOptions, (k) new v3.a());
    }

    private final synchronized int v() {
        int i9;
        i9 = f7381l;
        if (i9 == 1) {
            Context k10 = k();
            com.google.android.gms.common.a m10 = com.google.android.gms.common.a.m();
            int h10 = m10.h(k10, com.google.android.gms.common.d.f7626a);
            if (h10 == 0) {
                f7381l = 4;
                i9 = 4;
            } else if (m10.b(k10, h10, null) != null || DynamiteModule.a(k10, "com.google.android.gms.auth.api.fallback") == 0) {
                f7381l = 2;
                i9 = 2;
            } else {
                f7381l = 3;
                i9 = 3;
            }
        }
        return i9;
    }

    @NonNull
    public Intent s() {
        Context k10 = k();
        int v10 = v();
        int i9 = v10 - 1;
        if (v10 != 0) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return l.b(k10, j());
                }
                return l.c(k10, j());
            }
            return l.a(k10, j());
        }
        throw null;
    }

    @NonNull
    public t4.g<Void> t() {
        return o.b(l.e(e(), k(), v() == 3));
    }

    @NonNull
    public t4.g<Void> u() {
        return o.b(l.f(e(), k(), v() == 3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, o3.a.f55493c, googleSignInOptions, new v3.a());
    }
}
