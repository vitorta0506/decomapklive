package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.xiaomi.push.a3;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static a f37123g;

    /* renamed from: h  reason: collision with root package name */
    private static String f37124h = com.xiaomi.push.b2.a(5) + "-";

    /* renamed from: i  reason: collision with root package name */
    private static long f37125i = 0;

    /* renamed from: a  reason: collision with root package name */
    private Context f37126a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37128c;

    /* renamed from: f  reason: collision with root package name */
    private Messenger f37131f;

    /* renamed from: b  reason: collision with root package name */
    private Messenger f37127b = null;

    /* renamed from: d  reason: collision with root package name */
    private List<Message> f37129d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private boolean f37130e = false;

    private a(Context context) {
        this.f37128c = false;
        this.f37126a = context.getApplicationContext();
        if (f()) {
            tf.c.t("use miui push service");
            this.f37128c = true;
        }
    }

    private Message a(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    private synchronized void e(Intent intent) {
        if (this.f37130e) {
            Message a10 = a(intent);
            if (this.f37129d.size() >= 50) {
                this.f37129d.remove(0);
            }
            this.f37129d.add(a10);
            return;
        }
        if (this.f37131f == null) {
            this.f37126a.bindService(intent, new n0(this), 1);
            this.f37130e = true;
            this.f37129d.clear();
            this.f37129d.add(a(intent));
        } else {
            try {
                this.f37131f.send(a(intent));
            } catch (RemoteException unused) {
                this.f37131f = null;
                this.f37130e = false;
            }
        }
    }

    private boolean f() {
        if (a3.f36367f) {
            return false;
        }
        try {
            PackageInfo packageInfo = this.f37126a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 104;
        } catch (Exception unused) {
            return false;
        }
    }

    public static a h(Context context) {
        if (f37123g == null) {
            f37123g = new a(context);
        }
        return f37123g;
    }

    public boolean i(Intent intent) {
        try {
            if (sf.e.h() || Build.VERSION.SDK_INT < 26) {
                this.f37126a.startService(intent);
                return true;
            }
            e(intent);
            return true;
        } catch (Exception e10) {
            tf.c.o(e10);
            return false;
        }
    }
}
