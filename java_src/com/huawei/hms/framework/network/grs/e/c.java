package com.huawei.hms.framework.network.grs.e;

import android.content.Context;
import android.content.pm.PackageManager;
import com.huawei.hms.framework.common.ContextHolder;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.PLSharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f27329b = "c";

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, PLSharedPreferences> f27330c = new ConcurrentHashMap(16);

    /* renamed from: a  reason: collision with root package name */
    private final PLSharedPreferences f27331a;

    public c(Context context, String str) {
        String packageName = context.getPackageName();
        Logger.d(f27329b, "get pkgname from context is{%s}", packageName);
        Map<String, PLSharedPreferences> map = f27330c;
        if (map.containsKey(str + packageName)) {
            this.f27331a = map.get(str + packageName);
        } else {
            PLSharedPreferences pLSharedPreferences = new PLSharedPreferences(context, str + packageName);
            this.f27331a = pLSharedPreferences;
            map.put(str + packageName, pLSharedPreferences);
        }
        a(context);
    }

    private void a(Context context) {
        String str = f27329b;
        Logger.i(str, "ContextHolder.getAppContext() from GRS is:" + ContextHolder.getAppContext());
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        try {
            String l10 = Long.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode);
            String a10 = a("version", "");
            if (l10.equals(a10)) {
                return;
            }
            Logger.i(str, "app version changed! old version{%s} and new version{%s}", a10, l10);
            b();
            b("version", l10);
        } catch (PackageManager.NameNotFoundException unused) {
            Logger.w(f27329b, "get app version failed and catch NameNotFoundException");
        }
    }

    public String a(String str, String str2) {
        String string;
        PLSharedPreferences pLSharedPreferences = this.f27331a;
        if (pLSharedPreferences == null) {
            return str2;
        }
        synchronized (pLSharedPreferences) {
            string = this.f27331a.getString(str, str2);
        }
        return string;
    }

    public Map<String, ?> a() {
        Map<String, ?> all;
        PLSharedPreferences pLSharedPreferences = this.f27331a;
        if (pLSharedPreferences == null) {
            return new HashMap();
        }
        synchronized (pLSharedPreferences) {
            all = this.f27331a.getAll();
        }
        return all;
    }

    public void a(String str) {
        PLSharedPreferences pLSharedPreferences = this.f27331a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f27331a.remove(str);
        }
    }

    public void b() {
        PLSharedPreferences pLSharedPreferences = this.f27331a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f27331a.clear();
        }
    }

    public void b(String str, String str2) {
        PLSharedPreferences pLSharedPreferences = this.f27331a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f27331a.putString(str, str2);
        }
    }
}
