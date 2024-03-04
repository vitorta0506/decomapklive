package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.List;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final Context f7437a;

    /* renamed from: b  reason: collision with root package name */
    private int f7438b;

    /* renamed from: c  reason: collision with root package name */
    private int f7439c = 0;

    public u(Context context) {
        this.f7437a = context;
    }

    public final synchronized int a() {
        PackageInfo packageInfo;
        if (this.f7438b == 0) {
            try {
                packageInfo = g4.c.a(this.f7437a).e("com.google.android.gms", 0);
            } catch (PackageManager.NameNotFoundException e10) {
                String valueOf = String.valueOf(e10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 23);
                sb2.append("Failed to find package ");
                sb2.append(valueOf);
                Log.w("Metadata", sb2.toString());
                packageInfo = null;
            }
            if (packageInfo != null) {
                this.f7438b = packageInfo.versionCode;
            }
        }
        return this.f7438b;
    }

    public final synchronized int b() {
        int i9 = this.f7439c;
        if (i9 != 0) {
            return i9;
        }
        PackageManager packageManager = this.f7437a.getPackageManager();
        if (g4.c.a(this.f7437a).b("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("Metadata", "Google Play services missing or without correct permission.");
            return 0;
        }
        int i10 = 1;
        if (!e4.m.h()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.f7439c = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
            this.f7439c = 2;
            return 2;
        }
        Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
        if (e4.m.h()) {
            this.f7439c = 2;
            i10 = 2;
        } else {
            this.f7439c = 1;
        }
        return i10;
    }
}
