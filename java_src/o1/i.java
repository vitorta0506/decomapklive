package o1;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
class i implements d {

    /* renamed from: a  reason: collision with root package name */
    private final a f55482a;

    /* renamed from: b  reason: collision with root package name */
    private final g f55483b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, k> f55484c;

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f55485a;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f55486b = null;

        a(Context context) {
            this.f55485a = context;
        }

        private Map<String, String> a(Context context) {
            Bundle d10 = d(context);
            if (d10 == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : d10.keySet()) {
                Object obj = d10.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }

        private Map<String, String> c() {
            if (this.f55486b == null) {
                this.f55486b = a(this.f55485a);
            }
            return this.f55486b;
        }

        private static Bundle d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
                if (serviceInfo == null) {
                    Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
                return null;
            }
        }

        @Nullable
        c b(String str) {
            String str2 = c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (c) Class.forName(str2).asSubclass(c.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e10) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e10);
                return null;
            } catch (IllegalAccessException e11) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e11);
                return null;
            } catch (InstantiationException e12) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e12);
                return null;
            } catch (NoSuchMethodException e13) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e13);
                return null;
            } catch (InvocationTargetException e14) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e14);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, g gVar) {
        this(new a(context), gVar);
    }

    @Override // o1.d
    @Nullable
    public synchronized k get(String str) {
        if (this.f55484c.containsKey(str)) {
            return this.f55484c.get(str);
        }
        c b10 = this.f55482a.b(str);
        if (b10 == null) {
            return null;
        }
        k create = b10.create(this.f55483b.a(str));
        this.f55484c.put(str, create);
        return create;
    }

    i(a aVar, g gVar) {
        this.f55484c = new HashMap();
        this.f55482a = aVar;
        this.f55483b = gVar;
    }
}
