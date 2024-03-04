package com.tencent.liteav.base.system;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.s;
/* loaded from: classes4.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final s<PackageInfo> f30967a = new s<>(b.a());

    public static String a() {
        PackageInfo a10 = f30967a.a();
        return a10 == null ? "" : a10.packageName;
    }

    public static String b() {
        PackageInfo a10;
        Context applicationContext = ContextUtils.getApplicationContext();
        return (applicationContext == null || (a10 = f30967a.a()) == null) ? "" : applicationContext.getPackageManager().getApplicationLabel(a10.applicationInfo).toString();
    }

    public static String c() {
        PackageInfo a10 = f30967a.a();
        return a10 == null ? "" : a10.versionName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ PackageInfo d() throws Exception {
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
    }
}
