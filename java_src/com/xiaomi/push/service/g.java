package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.dt;
import com.xiaomi.push.service.q0;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g extends q0.a {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ XMPushService f37244c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ z1 f37245d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(String str, long j10, XMPushService xMPushService, z1 z1Var) {
        super(str, j10);
        this.f37244c = xMPushService;
        this.f37245d = z1Var;
    }

    @Override // com.xiaomi.push.service.q0.a
    void b(q0 q0Var) {
        String str;
        String d10 = q0Var.d("GAID", "gaid");
        String g10 = sf.b.g(this.f37244c);
        if (!sf.b.d(this.f37244c) && !TextUtils.isEmpty(d10)) {
            q0Var.g("GAID", "gaid", "");
            dt dtVar = new dt();
            dtVar.b(this.f37245d.f37429d);
            dtVar.c(df.ClientInfoUpdate.f42a);
            dtVar.a(x.a());
            dtVar.a(new HashMap());
            dtVar.m1471a().put("rm_gpid", "1");
            byte[] d11 = com.xiaomi.push.h2.d(f.d(this.f37244c.getPackageName(), this.f37245d.f37429d, dtVar, cz.Notification));
            XMPushService xMPushService = this.f37244c;
            xMPushService.a(xMPushService.getPackageName(), d11, true);
            str = "not low upload gpid";
        } else if (TextUtils.isEmpty(g10) || TextUtils.equals(d10, g10)) {
            return;
        } else {
            q0Var.g("GAID", "gaid", g10);
            dt dtVar2 = new dt();
            dtVar2.b(this.f37245d.f37429d);
            dtVar2.c(df.ClientInfoUpdate.f42a);
            dtVar2.a(x.a());
            dtVar2.a(new HashMap());
            dtVar2.m1471a().put("gaid", g10);
            byte[] d12 = com.xiaomi.push.h2.d(f.d(this.f37244c.getPackageName(), this.f37245d.f37429d, dtVar2, cz.Notification));
            XMPushService xMPushService2 = this.f37244c;
            xMPushService2.a(xMPushService2.getPackageName(), d12, true);
            str = "upload gaid. ";
        }
        tf.c.s(str);
    }
}
