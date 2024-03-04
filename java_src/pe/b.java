package pe;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import java.io.File;
import java.text.Normalizer;
/* loaded from: classes4.dex */
public class b {
    public static String a(@NonNull Context context) {
        return context.getPackageName() + ".fileprovider";
    }

    @Nullable
    public static Uri b(@NonNull Context context, @Nullable File file) {
        if (file == null) {
            return null;
        }
        return FileProvider.getUriForFile(context, a(context), file);
    }

    public static boolean c(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (applicationInfo.enabled) {
                if (packageInfo.versionCode >= 1729) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static String d(String str) {
        String normalize = Normalizer.normalize(str, Normalizer.Form.NFKD);
        int length = normalize.length();
        StringBuilder sb2 = new StringBuilder(length);
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = normalize.charAt(i9);
            if (charAt < 128) {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }
}
