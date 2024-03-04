package com.google.android.gms.internal.measurement;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class oa extends j {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ nc f8239c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oa(ob obVar, String str, nc ncVar) {
        super("getValue");
        this.f8239c = ncVar;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        u5.h("getValue", 2, list);
        q b10 = t4Var.b((q) list.get(0));
        q b11 = t4Var.b((q) list.get(1));
        String b12 = this.f8239c.b(b10.d());
        return b12 != null ? new u(b12) : b11;
    }
}
