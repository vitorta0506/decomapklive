package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.internal.x0;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class d {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final int f7626a = 12451000;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7628c = false;

    /* renamed from: d  reason: collision with root package name */
    static boolean f7629d = false;

    /* renamed from: b  reason: collision with root package name */
    static final AtomicBoolean f7627b = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicBoolean f7630e = new AtomicBoolean();

    @Deprecated
    public static int a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @NonNull
    @Deprecated
    public static String b(int i9) {
        return ConnectionResult.R(i9);
    }

    @Nullable
    public static Context c(@NonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Nullable
    public static Resources d(@NonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean e(@NonNull Context context) {
        try {
            if (!f7629d) {
                PackageInfo e10 = g4.c.a(context).e("com.google.android.gms", 64);
                e.a(context);
                if (e10 == null || e.e(e10, false) || !e.e(e10, true)) {
                    f7628c = false;
                } else {
                    f7628c = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e11) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e11);
        } finally {
            f7629d = true;
        }
        return f7628c || !e4.h.b();
    }

    @Deprecated
    public static int f(@NonNull Context context, int i9) {
        PackageInfo packageInfo;
        try {
            context.getResources().getString(R$string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f7630e.get()) {
            int a10 = x0.a(context);
            if (a10 != 0) {
                if (a10 != f7626a) {
                    throw new GooglePlayServicesIncorrectManifestValueException(a10);
                }
            } else {
                throw new GooglePlayServicesMissingManifestValueException();
            }
        }
        boolean z10 = (e4.h.d(context) || e4.h.f(context)) ? false : true;
        com.google.android.gms.common.internal.p.a(i9 >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z10) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            e.a(context);
            if (!e.e(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else {
                if (z10) {
                    com.google.android.gms.common.internal.p.j(packageInfo);
                    if (!e.e(packageInfo, true)) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    }
                }
                if (z10 && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                } else if (e4.r.a(packageInfo2.versionCode) < e4.r.a(i9)) {
                    int i10 = packageInfo2.versionCode;
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i9 + " but found " + i10);
                    return 2;
                } else {
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e10) {
                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e10);
                            return 1;
                        }
                    }
                    return !applicationInfo.enabled ? 3 : 0;
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    @Deprecated
    public static boolean g(@NonNull Context context, int i9) {
        if (i9 == 18) {
            return true;
        }
        if (i9 == 1) {
            return k(context, "com.google.android.gms");
        }
        return false;
    }

    public static boolean h(@NonNull Context context) {
        if (e4.m.c()) {
            Object systemService = context.getSystemService("user");
            com.google.android.gms.common.internal.p.j(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            return applicationRestrictions != null && ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(applicationRestrictions.getString("restricted_profile"));
        }
        return false;
    }

    @Deprecated
    public static boolean i(int i9) {
        return i9 == 1 || i9 == 2 || i9 == 3 || i9 == 9;
    }

    @Deprecated
    public static boolean j(@NonNull Context context, int i9, @NonNull String str) {
        return e4.p.b(context, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean k(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        if (e4.m.f()) {
            try {
                for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        return applicationInfo.enabled && !h(context);
    }
}
