package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f14056a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14057b;

    /* renamed from: c  reason: collision with root package name */
    private final f0 f14058c;

    public e(Context context, f0 f0Var, ExecutorService executorService) {
        this.f14056a = executorService;
        this.f14057b = context;
        this.f14058c = f0Var;
    }

    private boolean b() {
        if (((KeyguardManager) this.f14057b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!e4.m.f()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f14057b.getSystemService(PushConstants.INTENT_ACTIVITY_NAME)).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.importance == 100;
                }
            }
            return false;
        }
        return false;
    }

    private void c(c.a aVar) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) this.f14057b.getSystemService(RemoteMessageConst.NOTIFICATION)).notify(aVar.f14043b, aVar.f14044c, aVar.f14042a.build());
    }

    @Nullable
    private b0 d() {
        b0 h10 = b0.h(this.f14058c.p("gcm.n.image"));
        if (h10 != null) {
            h10.o(this.f14056a);
        }
        return h10;
    }

    private void e(NotificationCompat.Builder builder, @Nullable b0 b0Var) {
        if (b0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) t4.j.b(b0Var.j(), 5L, TimeUnit.SECONDS);
            builder.setLargeIcon(bitmap);
            builder.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).bigLargeIcon(null));
        } catch (InterruptedException unused) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            b0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e10) {
            Log.w("FirebaseMessaging", "Failed to download image: " + e10.getCause());
        } catch (TimeoutException unused2) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            b0Var.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        if (this.f14058c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        b0 d10 = d();
        c.a f10 = c.f(this.f14057b, this.f14058c);
        e(f10.f14042a, d10);
        c(f10);
        return true;
    }
}
