package com.meizu.cloud.pushsdk.a;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.d.f.e;
import com.meizu.cloud.pushsdk.notification.model.BrightRemindSetting;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28173a = "b";

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, String> f28174b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, Object> f28175c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, Object> f28176d;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f28177a = null;

        public a a(Context context) {
            this.f28177a = context;
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    private b(a aVar) {
        this.f28174b = new HashMap<>();
        this.f28175c = new HashMap<>();
        this.f28176d = new HashMap<>();
        d();
        if (aVar.f28177a != null) {
            b(aVar.f28177a);
            a(aVar.f28177a);
            c(aVar.f28177a);
            d(aVar.f28177a);
        }
        DebugLogger.i(f28173a, "Subject created successfully.");
    }

    private void a(String str, int i9, int i10) {
        this.f28174b.put(str, i9 + "." + i10);
    }

    private void a(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        if ((obj instanceof String) && ((String) obj).isEmpty()) {
            return;
        }
        this.f28175c.put(str, obj);
    }

    private void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f28174b.put(str, str2);
    }

    private void b(Context context) {
        a("op", e.c(context));
    }

    private void b(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        if ((obj instanceof String) && ((String) obj).isEmpty()) {
            return;
        }
        this.f28176d.put(str, obj);
    }

    private void c(Context context) {
        b("nt", MzSystemUtils.getNetWorkType(context));
    }

    private void d() {
        a(BrightRemindSetting.BRIGHT_REMIND, Build.BRAND);
        a("dc", Build.MODEL);
        a("ot", Build.VERSION.RELEASE);
        a("ov", Build.DISPLAY);
        a("ll", MzSystemUtils.getCurrentLanguage());
    }

    private void d(Context context) {
        a("pn", (Object) context.getPackageName());
        a("pv", (Object) MzSystemUtils.getAppVersionName(context));
        a("pvc", Integer.valueOf(MzSystemUtils.getAppVersionCode(context)));
        a("st", Integer.valueOf(!TextUtils.isEmpty(MzSystemUtils.findReceiver(context, "com.meizu.ups.push.intent.MESSAGE", context.getPackageName())) ? 1 : 0));
    }

    public Map<String, String> a() {
        return this.f28174b;
    }

    public void a(Context context) {
        Point d10 = e.d(context);
        if (d10 == null) {
            DebugLogger.e(f28173a, "screen information not available.");
        } else {
            a("ss", d10.x, d10.y);
        }
    }

    public Map<String, Object> b() {
        return this.f28175c;
    }

    public Map<String, Object> c() {
        return this.f28176d;
    }
}
