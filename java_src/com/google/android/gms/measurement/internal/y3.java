package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
final class y3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.s0 f9996a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ServiceConnection f9997b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ z3 f9998c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y3(z3 z3Var, com.google.android.gms.internal.measurement.s0 s0Var, ServiceConnection serviceConnection) {
        this.f9998c = z3Var;
        this.f9996a = s0Var;
        this.f9997b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        z3 z3Var = this.f9998c;
        a4 a4Var = z3Var.f10079b;
        str = z3Var.f10078a;
        com.google.android.gms.internal.measurement.s0 s0Var = this.f9996a;
        ServiceConnection serviceConnection = this.f9997b;
        a4Var.f9262a.a().h();
        Bundle bundle = new Bundle();
        bundle.putString(PushConstants.PACKAGE_NAME, str);
        Bundle bundle2 = null;
        try {
            Bundle a10 = s0Var.a(bundle);
            if (a10 == null) {
                a4Var.f9262a.b().r().a("Install Referrer Service returned a null response");
            } else {
                bundle2 = a10;
            }
        } catch (Exception e10) {
            a4Var.f9262a.b().r().b("Exception occurred while retrieving the Install Referrer", e10.getMessage());
        }
        a4Var.f9262a.a().h();
        n4.t();
        if (bundle2 != null) {
            long j10 = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j10 == 0) {
                a4Var.f9262a.b().w().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string != null && !string.isEmpty()) {
                    a4Var.f9262a.b().v().b("InstallReferrer API result", string);
                    Bundle t02 = a4Var.f9262a.N().t0(Uri.parse("?".concat(string)));
                    if (t02 == null) {
                        a4Var.f9262a.b().r().a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = t02.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j11 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j11 == 0) {
                                a4Var.f9262a.b().r().a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                t02.putLong("click_timestamp", j11);
                            }
                        }
                        if (j10 == a4Var.f9262a.F().f9956f.a()) {
                            a4Var.f9262a.b().v().a("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (a4Var.f9262a.o()) {
                            a4Var.f9262a.F().f9956f.b(j10);
                            a4Var.f9262a.b().v().b("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            t02.putString("_cis", "referrer API v2");
                            a4Var.f9262a.I().t(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_cmp", t02, str);
                        }
                    }
                } else {
                    a4Var.f9262a.b().r().a("No referrer defined in Install Referrer response");
                }
            }
        }
        d4.a.b().c(a4Var.f9262a.f(), serviceConnection);
    }
}
