package ec;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f38557a = "h";

    public static String a(String str) {
        Context a10 = c.a();
        if (a10 == null) {
            return "";
        }
        try {
            return a10.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            String str2 = f38557a;
            f.d(str2, "getVersion NameNotFoundException : " + e10.getMessage());
            return "";
        } catch (Exception e11) {
            String str3 = f38557a;
            f.d(str3, "getVersion: " + e11.getMessage());
            return "";
        } catch (Throwable unused) {
            f.d(f38557a, "throwable");
            return "";
        }
    }
}
