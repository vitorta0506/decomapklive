package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes4.dex */
public class p extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public Context f27762a;

    /* renamed from: b  reason: collision with root package name */
    public k f27763b;

    public p(Context context, k kVar) {
        this.f27762a = context;
        this.f27763b = kVar;
    }

    public static Intent a(Context context, k kVar) {
        if (kVar == null) {
            return null;
        }
        Intent b10 = q.b(context, kVar.d());
        if (kVar.n() != null) {
            try {
                Intent parseUri = Intent.parseUri(kVar.n(), 0);
                parseUri.setSelector(null);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Intent.parseUri(msg.intentUri, 0), action:");
                sb2.append(parseUri.getAction());
                HMSLog.d("PushSelfShowLog", sb2.toString());
                return q.a(context, kVar.d(), parseUri).booleanValue() ? parseUri : b10;
            } catch (Exception e10) {
                HMSLog.w("PushSelfShowLog", "intentUri error," + e10.toString());
                return b10;
            }
        }
        if (kVar.a() != null) {
            Intent intent = new Intent(kVar.a());
            if (q.a(context, kVar.d(), intent).booleanValue()) {
                b10 = intent;
            }
        }
        b10.setPackage(kVar.d());
        return b10;
    }

    public final boolean b(Context context) {
        if ("cosa".equals(this.f27763b.i())) {
            return a(context);
        }
        return true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        HMSLog.i("PushSelfShowLog", "enter run()");
        try {
            if (!b(this.f27762a) || b(this.f27762a, this.f27763b)) {
                return;
            }
            o.a(this.f27762a, this.f27763b);
        } catch (Exception e10) {
            HMSLog.e("PushSelfShowLog", e10.toString());
        }
    }

    public final boolean b(Context context, k kVar) {
        if ("cosa".equals(kVar.i()) && a(context, kVar) == null) {
            HMSLog.d("PushSelfShowLog", "launchCosaApp,intent == null");
            return true;
        }
        return false;
    }

    public final boolean a(Context context) {
        return q.c(context, this.f27763b.d());
    }
}
