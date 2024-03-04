package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.pm.PackageManager;
/* loaded from: classes5.dex */
class e1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37238a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(XMPushService xMPushService) {
        this.f37238a = xMPushService;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageManager packageManager = this.f37238a.getApplicationContext().getPackageManager();
            ComponentName componentName = new ComponentName(this.f37238a.getApplicationContext(), "com.xiaomi.push.service.receivers.PingReceiver");
            if (packageManager.getComponentEnabledSetting(componentName) != 2) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            }
        } catch (Throwable th2) {
            tf.c.l("[Alarm] disable ping receiver may be failure. " + th2);
        }
    }
}
