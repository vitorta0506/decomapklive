package com.tencent.bugly.crashreport.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
/* loaded from: classes4.dex */
public class BuglyBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: d  reason: collision with root package name */
    private static BuglyBroadcastReceiver f30252d;

    /* renamed from: b  reason: collision with root package name */
    private Context f30254b;

    /* renamed from: c  reason: collision with root package name */
    private String f30255c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f30256e = true;

    /* renamed from: a  reason: collision with root package name */
    private IntentFilter f30253a = new IntentFilter();

    public static synchronized BuglyBroadcastReceiver getInstance() {
        BuglyBroadcastReceiver buglyBroadcastReceiver;
        synchronized (BuglyBroadcastReceiver.class) {
            if (f30252d == null) {
                f30252d = new BuglyBroadcastReceiver();
            }
            buglyBroadcastReceiver = f30252d;
        }
        return buglyBroadcastReceiver;
    }

    public synchronized void addFilter(String str) {
        if (!this.f30253a.hasAction(str)) {
            this.f30253a.addAction(str);
        }
        x.c("add action %s", str);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    public synchronized void register(Context context) {
        this.f30254b = context;
        z.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    x.a(BuglyBroadcastReceiver.f30252d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
                    synchronized (this) {
                        BuglyBroadcastReceiver.this.f30254b.registerReceiver(BuglyBroadcastReceiver.f30252d, BuglyBroadcastReceiver.this.f30253a, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        });
    }

    public synchronized void unregister(Context context) {
        try {
            x.a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.f30254b = context;
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f30256e) {
                    this.f30256e = false;
                    return true;
                }
                String b10 = com.tencent.bugly.crashreport.common.info.b.b(this.f30254b);
                x.c("is Connect BC " + b10, new Object[0]);
                x.a("network %s changed to %s", this.f30255c, b10);
                if (b10 == null) {
                    this.f30255c = null;
                    return true;
                }
                String str = this.f30255c;
                this.f30255c = b10;
                long currentTimeMillis = System.currentTimeMillis();
                com.tencent.bugly.crashreport.common.strategy.a a10 = com.tencent.bugly.crashreport.common.strategy.a.a();
                u a11 = u.a();
                com.tencent.bugly.crashreport.common.info.a a12 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a10 != null && a11 != null && a12 != null) {
                    if (!b10.equals(str) && currentTimeMillis - a11.a(c.f30336a) > 30000) {
                        x.a("try to upload crash on network changed.", new Object[0]);
                        c a13 = c.a();
                        if (a13 != null) {
                            a13.a(0L);
                        }
                        x.a("try to upload userinfo on network changed.", new Object[0]);
                        com.tencent.bugly.crashreport.biz.b.f30161a.b();
                    }
                    return true;
                }
                x.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
