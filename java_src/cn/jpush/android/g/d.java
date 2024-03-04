package cn.jpush.android.g;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import cn.asus.push.DataBuffer;
/* loaded from: classes.dex */
public final class d extends a {

    /* renamed from: b */
    private cn.asus.push.d f3081b = null;

    public static /* synthetic */ cn.asus.push.d a(d dVar, cn.asus.push.d dVar2) {
        dVar.f3081b = null;
        return null;
    }

    @Override // cn.jpush.android.g.a
    public final void a(String str, String str2) {
        String str3;
        if (this.f3081b != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("JPUSH_CONTENT", str2);
                this.f3081b.r0(new DataBuffer(str, bundle), new b());
                return;
            } catch (Throwable th2) {
                str3 = "send data fail:" + th2;
            }
        } else {
            str3 = "send data fail, please init first.";
        }
        cn.jpush.android.i.b.g("ServiceConnection", str3);
    }

    @Override // cn.jpush.android.g.a
    public final boolean a() {
        if (a.f3080a.get()) {
            cn.jpush.android.i.b.b("ServiceConnection", "already connecting.");
            return false;
        }
        a.f3080a.set(true);
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(cn.jpush.android.f.c.f3064e, "cn.jpush.android.service.PushManagerService"));
            e eVar = new e(this, (byte) 0);
            boolean bindService = cn.jpush.android.f.c.f3060a.bindService(intent, eVar, 1);
            cn.jpush.android.i.b.b("ServiceConnection", "connect--" + bindService);
            if (bindService) {
                this.f3081b = cn.asus.push.c.b(eVar.f3082a.take());
            } else {
                a.f3080a.set(false);
            }
            return bindService;
        } catch (Throwable th2) {
            cn.jpush.android.i.b.g("ServiceConnection", "init fail:" + th2);
            a.f3080a.set(false);
            return false;
        }
    }

    @Override // cn.jpush.android.g.a
    public final boolean b() {
        cn.asus.push.d dVar = this.f3081b;
        if (dVar == null) {
            return false;
        }
        return dVar.asBinder().isBinderAlive();
    }
}
