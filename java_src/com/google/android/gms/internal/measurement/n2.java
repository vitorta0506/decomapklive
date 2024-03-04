package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class n2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Bundle f8219e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Activity f8220f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ v2 f8221g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n2(v2 v2Var, Bundle bundle, Activity activity) {
        super(v2Var.f8379a, true);
        this.f8221g = v2Var;
        this.f8219e = bundle;
        this.f8220f = activity;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        Bundle bundle;
        e1 e1Var;
        if (this.f8219e != null) {
            bundle = new Bundle();
            if (this.f8219e.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f8219e.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        e1Var = this.f8221g.f8379a.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).onActivityCreated(h4.b.E0(this.f8220f), bundle, this.f8176b);
    }
}
