package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class f7 implements Serializable, c7 {

    /* renamed from: a  reason: collision with root package name */
    final Object f8073a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f7(Object obj) {
        this.f8073a = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f7) {
            Object obj2 = this.f8073a;
            Object obj3 = ((f7) obj).f8073a;
            return obj2 == obj3 || obj2.equals(obj3);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8073a});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.f8073a + ")";
    }

    @Override // com.google.android.gms.internal.measurement.c7
    public final Object zza() {
        return this.f8073a;
    }
}
