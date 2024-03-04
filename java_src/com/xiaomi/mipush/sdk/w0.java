package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.guochao.faceshow.utils.PushUtils;
import com.xiaomi.push.cz;
import com.xiaomi.push.dc;
import com.xiaomi.push.df;
import com.xiaomi.push.dn;
import com.xiaomi.push.dt;
import com.xiaomi.push.f3;
import com.xiaomi.push.h2;
/* loaded from: classes5.dex */
public class w0 extends f3.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f36316a;

    public w0(Context context) {
        this.f36316a = context;
    }

    @Override // com.xiaomi.push.f3.a
    public String b() {
        return "2";
    }

    @Override // java.lang.Runnable
    public void run() {
        com.xiaomi.push.service.u c10 = com.xiaomi.push.service.u.c(this.f36316a);
        dn dnVar = new dn();
        dnVar.a(com.xiaomi.push.service.v.a(c10, dc.MISC_CONFIG));
        dnVar.b(com.xiaomi.push.service.v.a(c10, dc.PLUGIN_CONFIG));
        dt dtVar = new dt(PushUtils.CHAT_PUSH_TYPE, false);
        dtVar.c(df.DailyCheckClientConfig.f42a);
        dtVar.a(h2.d(dnVar));
        w.h(this.f36316a).u(dtVar, cz.Notification, null);
    }
}
