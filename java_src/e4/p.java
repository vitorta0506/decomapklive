package e4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public final class p {
    public static boolean a(@NonNull Context context, int i9) {
        if (b(context, i9, "com.google.android.gms")) {
            try {
                return com.google.android.gms.common.e.a(context).b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                }
                return false;
            }
        }
        return false;
    }

    public static boolean b(@NonNull Context context, int i9, @NonNull String str) {
        return g4.c.a(context).g(i9, str);
    }
}
