package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Queue;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public class n0 {

    /* renamed from: e  reason: collision with root package name */
    private static n0 f14090e;
    @Nullable
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private String f14091a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f14092b = null;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f14093c = null;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<Intent> f14094d = new ArrayDeque();

    private n0() {
    }

    private int a(Context context, Intent intent) {
        ComponentName startService;
        String f10 = f(context, intent);
        if (f10 != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Restricting intent to a specific service: " + f10);
            }
            intent.setClassName(context.getPackageName(), f10);
        }
        try {
            if (e(context)) {
                startService = y0.h(context, intent);
            } else {
                startService = context.startService(intent);
                Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
            }
            if (startService == null) {
                Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
                return 404;
            }
            return -1;
        } catch (IllegalStateException e10) {
            Log.e("FirebaseMessaging", "Failed to start service while in background: " + e10);
            return 402;
        } catch (SecurityException e11) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e11);
            return 401;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized n0 b() {
        n0 n0Var;
        synchronized (n0.class) {
            if (f14090e == null) {
                f14090e = new n0();
            }
            n0Var = f14090e;
        }
        return n0Var;
    }

    @Nullable
    private synchronized String f(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String str;
        String str2 = this.f14091a;
        if (str2 != null) {
            return str2;
        }
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService != null && (serviceInfo = resolveService.serviceInfo) != null) {
            if (context.getPackageName().equals(serviceInfo.packageName) && (str = serviceInfo.name) != null) {
                if (str.startsWith(".")) {
                    this.f14091a = context.getPackageName() + serviceInfo.name;
                } else {
                    this.f14091a = serviceInfo.name;
                }
                return this.f14091a;
            }
            Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + FileUtils.RES_PREFIX_STORAGE + serviceInfo.name);
            return null;
        }
        Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public Intent c() {
        return this.f14094d.poll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(Context context) {
        if (this.f14093c == null) {
            this.f14093c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f14092b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f14093c.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(Context context) {
        if (this.f14092b == null) {
            this.f14092b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f14092b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f14092b.booleanValue();
    }

    @MainThread
    public int g(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Starting service");
        }
        this.f14094d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return a(context, intent2);
    }
}
