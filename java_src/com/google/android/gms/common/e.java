package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.errorprone.annotations.RestrictedInheritance;
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes2.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static e f7642c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f7643a;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f7644b;

    public e(@NonNull Context context) {
        this.f7643a = context.getApplicationContext();
    }

    @NonNull
    public static e a(@NonNull Context context) {
        com.google.android.gms.common.internal.p.j(context);
        synchronized (e.class) {
            if (f7642c == null) {
                r.d(context);
                f7642c = new e(context);
            }
        }
        return f7642c;
    }

    static final n d(PackageInfo packageInfo, n... nVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        o oVar = new o(packageInfo.signatures[0].toByteArray());
        for (int i9 = 0; i9 < nVarArr.length; i9++) {
            if (nVarArr[i9].equals(oVar)) {
                return nVarArr[i9];
            }
        }
        return null;
    }

    public static final boolean e(@NonNull PackageInfo packageInfo, boolean z10) {
        if (z10 && packageInfo != null && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            z10 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
        }
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z10 ? d(packageInfo, q.f7815a) : d(packageInfo, q.f7815a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    private final w f(String str, boolean z10, boolean z11) {
        w c10;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return w.c("null pkg");
        }
        if (str.equals(this.f7644b)) {
            return w.b();
        }
        if (r.e()) {
            c10 = r.b(str, d.e(this.f7643a), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.f7643a.getPackageManager().getPackageInfo(str, 64);
                boolean e10 = d.e(this.f7643a);
                if (packageInfo == null) {
                    c10 = w.c("null pkg");
                } else {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr != null && signatureArr.length == 1) {
                        o oVar = new o(packageInfo.signatures[0].toByteArray());
                        String str2 = packageInfo.packageName;
                        w a10 = r.a(str2, oVar, e10, false);
                        c10 = (!a10.f7847a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !r.a(str2, oVar, false, true).f7847a) ? a10 : w.c("debuggable release cert app rejected");
                    } else {
                        c10 = w.c("single cert required");
                    }
                }
            } catch (PackageManager.NameNotFoundException e11) {
                return w.d("no pkg ".concat(str), e11);
            }
        }
        if (c10.f7847a) {
            this.f7644b = str;
        }
        return c10;
    }

    public boolean b(@NonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (e(packageInfo, false)) {
            return true;
        }
        if (e(packageInfo, true)) {
            if (d.e(this.f7643a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    public boolean c(int i9) {
        w c10;
        int length;
        String[] packagesForUid = this.f7643a.getPackageManager().getPackagesForUid(i9);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c10 = null;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    c10 = f(packagesForUid[i10], false, false);
                    if (c10.f7847a) {
                        break;
                    }
                    i10++;
                } else {
                    com.google.android.gms.common.internal.p.j(c10);
                    break;
                }
            }
        } else {
            c10 = w.c("no pkgs");
        }
        c10.e();
        return c10.f7847a;
    }
}
