package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class l<V> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final V f3731a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f3732b;

    public l(V v10) {
        this.f3731a = v10;
        this.f3732b = null;
    }

    @Nullable
    public Throwable a() {
        return this.f3732b;
    }

    @Nullable
    public V b() {
        return this.f3731a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (b() == null || !b().equals(lVar.b())) {
                if (a() == null || lVar.a() == null) {
                    return false;
                }
                return a().toString().equals(a().toString());
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public l(Throwable th2) {
        this.f3732b = th2;
        this.f3731a = null;
    }
}
