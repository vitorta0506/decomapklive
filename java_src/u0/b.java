package u0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<String, e0.b> f58292a = new ConcurrentHashMap();

    @Nullable
    private static PackageInfo a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e10);
            return null;
        }
    }

    @NonNull
    private static String b(@Nullable PackageInfo packageInfo) {
        if (packageInfo != null) {
            return String.valueOf(packageInfo.versionCode);
        }
        return UUID.randomUUID().toString();
    }

    @NonNull
    public static e0.b c(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, e0.b> concurrentMap = f58292a;
        e0.b bVar = concurrentMap.get(packageName);
        if (bVar == null) {
            e0.b d10 = d(context);
            e0.b putIfAbsent = concurrentMap.putIfAbsent(packageName, d10);
            return putIfAbsent == null ? d10 : putIfAbsent;
        }
        return bVar;
    }

    @NonNull
    private static e0.b d(@NonNull Context context) {
        return new d(b(a(context)));
    }
}
