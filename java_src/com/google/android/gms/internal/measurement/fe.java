package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class fe extends j {

    /* renamed from: c  reason: collision with root package name */
    final boolean f8086c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f8087d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ ge f8088e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fe(ge geVar, boolean z10, boolean z11) {
        super("log");
        this.f8088e = geVar;
        this.f8086c = z10;
        this.f8087d = z11;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        ee eeVar;
        ee eeVar2;
        ee eeVar3;
        u5.i("log", 1, list);
        if (list.size() == 1) {
            eeVar3 = this.f8088e.f8105c;
            eeVar3.a(3, t4Var.b((q) list.get(0)).d(), Collections.emptyList(), this.f8086c, this.f8087d);
            return q.U;
        }
        int b10 = u5.b(t4Var.b((q) list.get(0)).a().doubleValue());
        int i9 = b10 != 2 ? b10 != 3 ? b10 != 5 ? b10 != 6 ? 3 : 2 : 5 : 1 : 4;
        String d10 = t4Var.b((q) list.get(1)).d();
        if (list.size() == 2) {
            eeVar2 = this.f8088e.f8105c;
            eeVar2.a(i9, d10, Collections.emptyList(), this.f8086c, this.f8087d);
            return q.U;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 2; i10 < Math.min(list.size(), 5); i10++) {
            arrayList.add(t4Var.b((q) list.get(i10)).d());
        }
        eeVar = this.f8088e.f8105c;
        eeVar.a(i9, d10, arrayList, this.f8086c, this.f8087d);
        return q.U;
    }
}
