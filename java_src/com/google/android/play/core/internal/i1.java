package com.google.android.play.core.internal;

import java.util.Objects;
/* loaded from: classes2.dex */
public final class i1 implements k1, g1 {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f10573c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile k1 f10574a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f10575b = f10573c;

    private i1(k1 k1Var) {
        this.f10574a = k1Var;
    }

    public static g1 a(k1 k1Var) {
        if (k1Var instanceof g1) {
            return (g1) k1Var;
        }
        Objects.requireNonNull(k1Var);
        return new i1(k1Var);
    }

    public static k1 b(k1 k1Var) {
        Objects.requireNonNull(k1Var);
        return k1Var instanceof i1 ? k1Var : new i1(k1Var);
    }

    @Override // com.google.android.play.core.internal.k1
    public final Object zza() {
        Object obj = this.f10575b;
        Object obj2 = f10573c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f10575b;
                if (obj == obj2) {
                    obj = this.f10574a.zza();
                    Object obj3 = this.f10575b;
                    if (obj3 != obj2 && obj3 != obj) {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(obj);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                        sb2.append("Scoped provider was invoked recursively returning different results: ");
                        sb2.append(valueOf);
                        sb2.append(" & ");
                        sb2.append(valueOf2);
                        sb2.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb2.toString());
                    }
                    this.f10575b = obj;
                    this.f10574a = null;
                }
            }
        }
        return obj;
    }
}
