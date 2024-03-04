package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.annotation.GuardedBy;
import com.facebook.internal.security.CertificateUtil;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14059a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private String f14060b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private String f14061c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private int f14062d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private int f14063e = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(Context context) {
        this.f14059a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(com.google.firebase.d dVar) {
        String d10 = dVar.o().d();
        if (d10 != null) {
            return d10;
        }
        String c10 = dVar.o().c();
        if (c10.startsWith("1:")) {
            String[] split = c10.split(CertificateUtil.DELIMITER);
            if (split.length < 2) {
                return null;
            }
            String str = split[1];
            if (str.isEmpty()) {
                return null;
            }
            return str;
        }
        return c10;
    }

    private PackageInfo f(String str) {
        try {
            return this.f14059a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Failed to find package " + e10);
            return null;
        }
    }

    private synchronized void h() {
        PackageInfo f10 = f(this.f14059a.getPackageName());
        if (f10 != null) {
            this.f14060b = Integer.toString(f10.versionCode);
            this.f14061c = f10.versionName;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a() {
        if (this.f14060b == null) {
            h();
        }
        return this.f14060b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String b() {
        if (this.f14061c == null) {
            h();
        }
        return this.f14061c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int d() {
        PackageInfo f10;
        if (this.f14062d == 0 && (f10 = f("com.google.android.gms")) != null) {
            this.f14062d = f10.versionCode;
        }
        return this.f14062d;
    }

    synchronized int e() {
        int i9 = this.f14063e;
        if (i9 != 0) {
            return i9;
        }
        PackageManager packageManager = this.f14059a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!e4.m.h()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.f14063e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
            this.f14063e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (e4.m.h()) {
            this.f14063e = 2;
        } else {
            this.f14063e = 1;
        }
        return this.f14063e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return e() != 0;
    }
}
