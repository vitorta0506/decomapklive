package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i7 extends n {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y7 f9490e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i7(y7 y7Var, i5 i5Var) {
        super(i5Var);
        this.f9490e = y7Var;
    }

    @Override // com.google.android.gms.measurement.internal.n
    public final void c() {
        y7 y7Var = this.f9490e;
        y7Var.h();
        if (y7Var.z()) {
            y7Var.f9432a.b().v().a("Inactivity, disconnecting from the service");
            y7Var.Q();
        }
    }
}
