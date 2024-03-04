package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2.dex */
final class d7 implements Serializable, c7 {

    /* renamed from: a  reason: collision with root package name */
    final c7 f8029a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient boolean f8030b;

    /* renamed from: c  reason: collision with root package name */
    transient Object f8031c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d7(c7 c7Var) {
        Objects.requireNonNull(c7Var);
        this.f8029a = c7Var;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Suppliers.memoize(");
        if (this.f8030b) {
            obj = "<supplier that returned " + this.f8031c + ">";
        } else {
            obj = this.f8029a;
        }
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.c7
    public final Object zza() {
        if (!this.f8030b) {
            synchronized (this) {
                if (!this.f8030b) {
                    Object zza = this.f8029a.zza();
                    this.f8031c = zza;
                    this.f8030b = true;
                    return zza;
                }
            }
        }
        return this.f8031c;
    }
}
