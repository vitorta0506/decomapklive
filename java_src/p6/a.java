package p6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.ContextCompat;
import h6.c;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f56744a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f56745b;

    /* renamed from: c  reason: collision with root package name */
    private final c f56746c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56747d;

    public a(Context context, String str, c cVar) {
        Context a10 = a(context);
        this.f56744a = a10;
        this.f56745b = a10.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f56746c = cVar;
        this.f56747d = c();
    }

    private static Context a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : ContextCompat.createDeviceProtectedStorageContext(context);
    }

    private boolean c() {
        if (this.f56745b.contains("firebase_data_collection_default_enabled")) {
            return this.f56745b.getBoolean("firebase_data_collection_default_enabled", true);
        }
        return d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f56744a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f56744a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized boolean b() {
        return this.f56747d;
    }
}
