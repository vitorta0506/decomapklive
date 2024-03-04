package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class j8 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f8150a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8151b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j8(Object obj, int i9) {
        this.f8150a = obj;
        this.f8151b = i9;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j8) {
            j8 j8Var = (j8) obj;
            return this.f8150a == j8Var.f8150a && this.f8151b == j8Var.f8151b;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f8150a) * 65535) + this.f8151b;
    }
}
