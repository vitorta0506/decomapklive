package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class m extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f27645a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f27646b;

    public m(Context context, String str) {
        this.f27645a = context;
        this.f27646b = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean b10;
        boolean d10;
        String c10;
        if (p.b()) {
            b10 = n.b(this.f27645a);
            if (b10) {
                return;
            }
            String a10 = o.a(this.f27645a);
            if (!TextUtils.isEmpty(a10)) {
                d10 = n.d(this.f27645a, a10, this.f27646b);
                if (!d10) {
                    HMSLog.d("ReportAaidToken", "This time need not report.");
                    return;
                }
                String b11 = sb.a.d(this.f27645a).b("region");
                if (TextUtils.isEmpty(b11)) {
                    HMSLog.i("ReportAaidToken", "The data storage region is empty.");
                    return;
                }
                String a11 = e.a(this.f27645a, "com.huawei.hms.opendevicesdk", "ROOT", null, b11);
                if (TextUtils.isEmpty(a11)) {
                    return;
                }
                c10 = n.c(this.f27645a, a10, this.f27646b);
                Context context = this.f27645a;
                n.b(this.f27645a, d.a(context, a11 + "/rest/appdata/v1/aaid/report", c10, (Map<String, String>) null), a10, this.f27646b);
                return;
            }
            HMSLog.w("ReportAaidToken", "AAID is empty.");
            return;
        }
        HMSLog.d("ReportAaidToken", "Not HW Phone.");
    }
}
