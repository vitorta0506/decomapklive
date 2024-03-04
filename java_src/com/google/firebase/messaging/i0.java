package com.google.firebase.messaging;

import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.WorkerThread;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i0 {
    private static boolean b(Context context) {
        return Binder.getCallingUid() == context.getApplicationInfo().uid;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void c(Context context) {
        if (j0.b(context)) {
            return;
        }
        e(g.f14068a, context, f(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Context context, boolean z10, t4.h hVar) {
        try {
            if (!b(context)) {
                Log.e("FirebaseMessaging", "error configuring notification delegate for package " + context.getPackageName());
                return;
            }
            j0.c(context, true);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (z10) {
                notificationManager.setNotificationDelegate("com.google.android.gms");
            } else if ("com.google.android.gms".equals(notificationManager.getNotificationDelegate())) {
                notificationManager.setNotificationDelegate(null);
            }
        } finally {
            hVar.e(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t4.g<Void> e(Executor executor, final Context context, final boolean z10) {
        if (!e4.m.j()) {
            return t4.j.e(null);
        }
        final t4.h hVar = new t4.h();
        executor.execute(new Runnable() { // from class: com.google.firebase.messaging.h0
            @Override // java.lang.Runnable
            public final void run() {
                i0.d(context, z10, hVar);
            }
        });
        return hVar.a();
    }

    private static boolean f(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            Context applicationContext = context.getApplicationContext();
            PackageManager packageManager = applicationContext.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_notification_delegation_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_messaging_notification_delegation_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }
}
