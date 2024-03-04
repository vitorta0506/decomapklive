package com.tencent.liteav.audio.earmonitor.a.b.a;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f30763b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f30764c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f30765d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static final Object f30766e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static b f30767f;

    /* renamed from: a  reason: collision with root package name */
    e f30768a = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public static b a() {
        b bVar;
        synchronized (f30764c) {
            if (f30767f == null) {
                f30767f = new b();
            }
            bVar = f30767f;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends a> T a(int i9, Context context) {
        if (context != null && i9 == 1) {
            c cVar = new c(context);
            cVar.a(context);
            return cVar;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, ServiceConnection serviceConnection, String str) {
        synchronized (f30765d) {
            if (context == null) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.huawei.multimedia.audioengine", str);
            try {
                context.bindService(intent, serviceConnection, 1);
            } catch (SecurityException e10) {
                LiteavLog.e("HwAudioKit.FeatureKitManager", "bindService, SecurityException, %s", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, ServiceConnection serviceConnection) {
        synchronized (f30766e) {
            if (context != null) {
                context.unbindService(serviceConnection);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                return packageManager.getPackageInfo("com.huawei.multimedia.audioengine", 0) != null;
            } catch (PackageManager.NameNotFoundException unused) {
                LiteavLog.e("HwAudioKit.FeatureKitManager", "isAudioKitSupport ,NameNotFoundException");
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i9) {
        synchronized (f30763b) {
            e eVar = this.f30768a;
            if (eVar != null) {
                eVar.a(i9);
            }
        }
    }
}
