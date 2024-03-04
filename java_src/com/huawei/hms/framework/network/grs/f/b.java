package com.huawei.hms.framework.network.grs.f;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.AssetsUtil;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, b> f27339b = new ConcurrentHashMap(16);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f27340c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private a f27341a;

    public b(Context context, GrsBaseInfo grsBaseInfo, boolean z10) {
        a(context, z10);
        Map<String, b> map = f27339b;
        map.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
    }

    public static b a(String str, GrsBaseInfo grsBaseInfo) {
        Map<String, b> map = f27339b;
        return map.get(str + grsBaseInfo.uniqueCode());
    }

    public static void a(Context context, GrsBaseInfo grsBaseInfo) {
        b a10 = a(context.getPackageName(), grsBaseInfo);
        if (a10 != null) {
            Logger.i("LocalManagerProxy", "appGrs is not null and clear services.");
            synchronized (f27340c) {
                a10.f27341a.a();
            }
        }
    }

    public com.huawei.hms.framework.network.grs.local.model.a a() {
        return this.f27341a.b();
    }

    public String a(Context context, com.huawei.hms.framework.network.grs.e.a aVar, GrsBaseInfo grsBaseInfo, String str, String str2, boolean z10) {
        synchronized (f27340c) {
            String a10 = this.f27341a.a(context, aVar, grsBaseInfo, str, str2, z10);
            if (TextUtils.isEmpty(a10) && this.f27341a.d()) {
                a(context, true);
                a(grsBaseInfo);
                Map<String, b> map = f27339b;
                map.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
                return this.f27341a.a(context, aVar, grsBaseInfo, str, str2, z10);
            }
            return a10;
        }
    }

    public Map<String, String> a(Context context, com.huawei.hms.framework.network.grs.e.a aVar, GrsBaseInfo grsBaseInfo, String str, boolean z10) {
        synchronized (f27340c) {
            Map<String, String> a10 = this.f27341a.a(context, aVar, grsBaseInfo, str, z10);
            if ((a10 == null || a10.isEmpty()) && this.f27341a.d()) {
                a(context, true);
                a(grsBaseInfo);
                Map<String, b> map = f27339b;
                map.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
                return this.f27341a.a(context, aVar, grsBaseInfo, str, z10);
            }
            return a10;
        }
    }

    public void a(Context context, boolean z10) {
        String[] list = AssetsUtil.list(context, GrsApp.getInstance().getBrand(""));
        List<String> arrayList = list == null ? new ArrayList<>() : Arrays.asList(list);
        String appConfigName = GrsApp.getInstance().getAppConfigName();
        Logger.i("LocalManagerProxy", "appConfigName is" + appConfigName);
        this.f27341a = new d(false, z10);
        if (arrayList.contains("grs_app_global_route_config.json") || !TextUtils.isEmpty(appConfigName)) {
            this.f27341a = new d(context, appConfigName, z10);
        }
        if (!this.f27341a.e() && arrayList.contains("grs_sdk_global_route_config.json")) {
            this.f27341a = new c(context, z10);
        }
        this.f27341a.a(context, arrayList);
    }

    public void a(GrsBaseInfo grsBaseInfo) {
        this.f27341a.a(grsBaseInfo);
    }

    public Set<String> b() {
        return this.f27341a.c();
    }
}
