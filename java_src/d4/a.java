package d4;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.r1;
import e4.m;
import g4.c;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f37912b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f37913c;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public ConcurrentHashMap f37914a = new ConcurrentHashMap();

    private a() {
    }

    @NonNull
    public static a b() {
        if (f37913c == null) {
            synchronized (f37912b) {
                if (f37913c == null) {
                    f37913c = new a();
                }
            }
        }
        a aVar = f37913c;
        p.j(aVar);
        return aVar;
    }

    private static void e(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
        }
    }

    private final boolean f(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i9, boolean z10, Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((c.a(context).c(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (g(serviceConnection)) {
            ServiceConnection serviceConnection2 = (ServiceConnection) this.f37914a.putIfAbsent(serviceConnection, serviceConnection);
            if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                boolean h10 = h(context, intent, serviceConnection, i9, executor);
                if (h10) {
                    return h10;
                }
                return false;
            } finally {
                this.f37914a.remove(serviceConnection, serviceConnection);
            }
        }
        return h(context, intent, serviceConnection, i9, executor);
    }

    private static boolean g(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof r1);
    }

    private static final boolean h(Context context, Intent intent, ServiceConnection serviceConnection, int i9, Executor executor) {
        return (!m.j() || executor == null) ? context.bindService(intent, serviceConnection, i9) : context.bindService(intent, i9, executor, serviceConnection);
    }

    public boolean a(@NonNull Context context, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i9) {
        return f(context, context.getClass().getName(), intent, serviceConnection, i9, true, null);
    }

    public void c(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        if (g(serviceConnection) && this.f37914a.containsKey(serviceConnection)) {
            try {
                e(context, (ServiceConnection) this.f37914a.get(serviceConnection));
                return;
            } finally {
                this.f37914a.remove(serviceConnection);
            }
        }
        e(context, serviceConnection);
    }

    public final boolean d(@NonNull Context context, @NonNull String str, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i9, Executor executor) {
        return f(context, str, intent, serviceConnection, i9, true, executor);
    }
}
