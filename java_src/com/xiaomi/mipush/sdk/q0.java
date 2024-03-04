package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class q0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f36284a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(Context context) {
        this.f36284a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageInfo packageInfo = this.f36284a.getPackageManager().getPackageInfo(this.f36284a.getPackageName(), 4612);
            p.j(this.f36284a);
            p.l(this.f36284a, packageInfo);
            p.k(this.f36284a, packageInfo);
        } catch (Throwable th2) {
            Log.e("ManifestChecker", "", th2);
        }
    }
}
