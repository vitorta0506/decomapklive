package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes2.dex */
final class e7 implements c7 {

    /* renamed from: a  reason: collision with root package name */
    volatile c7 f8046a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f8047b;

    /* renamed from: c  reason: collision with root package name */
    Object f8048c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e7(c7 c7Var) {
        Objects.requireNonNull(c7Var);
        this.f8046a = c7Var;
    }

    public final String toString() {
        Object obj = this.f8046a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Suppliers.memoize(");
        if (obj == null) {
            obj = "<supplier that returned " + this.f8048c + ">";
        }
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.c7
    public final Object zza() {
        if (!this.f8047b) {
            synchronized (this) {
                if (!this.f8047b) {
                    c7 c7Var = this.f8046a;
                    c7Var.getClass();
                    Object zza = c7Var.zza();
                    this.f8048c = zza;
                    this.f8047b = true;
                    this.f8046a = null;
                    return zza;
                }
            }
        }
        return this.f8048c;
    }
}
