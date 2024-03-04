package g4;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e4.m;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f39951a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f39952b;

    public static synchronized boolean a(@NonNull Context context) {
        Boolean bool;
        synchronized (a.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f39951a;
            if (context2 != null && (bool = f39952b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f39952b = null;
            if (m.h()) {
                f39952b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f39952b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f39952b = Boolean.FALSE;
                }
            }
            f39951a = applicationContext;
            return f39952b.booleanValue();
        }
    }
}
