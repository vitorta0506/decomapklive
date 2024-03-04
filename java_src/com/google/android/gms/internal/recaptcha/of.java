package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class of {

    /* renamed from: a  reason: collision with root package name */
    private final Object f8949a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8950b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public of(Object obj, int i9) {
        this.f8949a = obj;
        this.f8950b = i9;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof of) {
            of ofVar = (of) obj;
            return this.f8949a == ofVar.f8949a && this.f8950b == ofVar.f8950b;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f8949a) * 65535) + this.f8950b;
    }
}
