package sf;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes5.dex */
final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f57901a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ComponentName f57902b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, ComponentName componentName) {
        this.f57901a = context;
        this.f57902b = componentName;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageManager packageManager = this.f57901a.getPackageManager();
            if (packageManager.getComponentEnabledSetting(this.f57902b) != 2) {
                packageManager.setComponentEnabledSetting(this.f57902b, 2, 1);
            }
        } catch (Throwable th2) {
            tf.c.l("close static register of network status receiver failed:" + th2);
        }
    }
}
