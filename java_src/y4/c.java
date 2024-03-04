package y4;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import com.google.android.play.core.internal.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final g f60112c = new g("MissingSplitsAppComponentsHelper");

    /* renamed from: a  reason: collision with root package name */
    private final Context f60113a;

    /* renamed from: b  reason: collision with root package name */
    private final PackageManager f60114b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, PackageManager packageManager) {
        this.f60113a = context;
        this.f60114b = packageManager;
    }

    private final List d() {
        try {
            ArrayList arrayList = new ArrayList();
            PackageInfo packageInfo = this.f60114b.getPackageInfo(this.f60113a.getPackageName(), 526);
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr != null) {
                Collections.addAll(arrayList, providerInfoArr);
            }
            ActivityInfo[] activityInfoArr = packageInfo.receivers;
            if (activityInfoArr != null) {
                Collections.addAll(arrayList, activityInfoArr);
            }
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                Collections.addAll(arrayList, serviceInfoArr);
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e10) {
            f60112c.e("Failed to resolve own package : %s", e10);
            return Collections.emptyList();
        }
    }

    private final void e(List list, int i9) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ComponentInfo componentInfo = (ComponentInfo) it.next();
            this.f60114b.setComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name), i9, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        f60112c.d("Disabling all non-activity components", new Object[0]);
        e(d(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        f60112c.d("Resetting enabled state of all non-activity components", new Object[0]);
        e(d(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        for (ComponentInfo componentInfo : d()) {
            if (this.f60114b.getComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name)) != 2) {
                f60112c.a("Not all non-activity components are disabled", new Object[0]);
                return false;
            }
        }
        f60112c.a("All non-activity components are disabled", new Object[0]);
        return true;
    }
}
