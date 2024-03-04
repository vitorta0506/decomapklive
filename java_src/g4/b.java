package g4;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import e4.m;
/* loaded from: classes2.dex */
public class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final Context f39953a;

    public b(@NonNull Context context) {
        this.f39953a = context;
    }

    public int a(@NonNull String str) {
        return this.f39953a.checkCallingOrSelfPermission(str);
    }

    public int b(@NonNull String str, @NonNull String str2) {
        return this.f39953a.getPackageManager().checkPermission(str, str2);
    }

    @NonNull
    public ApplicationInfo c(@NonNull String str, int i9) throws PackageManager.NameNotFoundException {
        return this.f39953a.getPackageManager().getApplicationInfo(str, i9);
    }

    @NonNull
    public CharSequence d(@NonNull String str) throws PackageManager.NameNotFoundException {
        return this.f39953a.getPackageManager().getApplicationLabel(this.f39953a.getPackageManager().getApplicationInfo(str, 0));
    }

    @NonNull
    public PackageInfo e(@NonNull String str, int i9) throws PackageManager.NameNotFoundException {
        return this.f39953a.getPackageManager().getPackageInfo(str, i9);
    }

    public boolean f() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f39953a);
        }
        if (!m.h() || (nameForUid = this.f39953a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f39953a.getPackageManager().isInstantApp(nameForUid);
    }

    public final boolean g(int i9, @NonNull String str) {
        if (m.d()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f39953a.getSystemService("appops");
                if (appOpsManager != null) {
                    appOpsManager.checkPackage(i9, str);
                    return true;
                }
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.f39953a.getPackageManager().getPackagesForUid(i9);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
