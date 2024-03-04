package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class k8 {

    /* renamed from: b  reason: collision with root package name */
    private static volatile k8 f8167b;

    /* renamed from: c  reason: collision with root package name */
    static final k8 f8168c = new k8(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map f8169a;

    k8() {
        this.f8169a = new HashMap();
    }

    public static k8 a() {
        k8 k8Var = f8167b;
        if (k8Var != null) {
            return k8Var;
        }
        synchronized (k8.class) {
            k8 k8Var2 = f8167b;
            if (k8Var2 != null) {
                return k8Var2;
            }
            k8 b10 = r8.b(k8.class);
            f8167b = b10;
            return b10;
        }
    }

    public final w8 b(z9 z9Var, int i9) {
        return (w8) this.f8169a.get(new j8(z9Var, i9));
    }

    k8(boolean z10) {
        this.f8169a = Collections.emptyMap();
    }
}
