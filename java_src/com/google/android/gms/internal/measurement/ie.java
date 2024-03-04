package com.google.android.gms.internal.measurement;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
/* loaded from: classes2.dex */
public final class ie extends j {

    /* renamed from: c  reason: collision with root package name */
    private final me f8137c;

    public ie(me meVar) {
        super("internal.registerCallback");
        this.f8137c = meVar;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        u5.h(this.f8138a, 3, list);
        String d10 = t4Var.b((q) list.get(0)).d();
        q b10 = t4Var.b((q) list.get(1));
        if (b10 instanceof p) {
            q b11 = t4Var.b((q) list.get(2));
            if (b11 instanceof n) {
                n nVar = (n) b11;
                if (nVar.m("type")) {
                    this.f8137c.a(d10, nVar.m(RemoteMessageConst.Notification.PRIORITY) ? u5.b(nVar.x(RemoteMessageConst.Notification.PRIORITY).a().doubleValue()) : 1000, (p) b10, nVar.x("type").d());
                    return q.U;
                }
                throw new IllegalArgumentException("Undefined rule type");
            }
            throw new IllegalArgumentException("Invalid callback params");
        }
        throw new IllegalArgumentException("Invalid callback type");
    }
}
