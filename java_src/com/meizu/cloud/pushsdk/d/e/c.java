package com.meizu.cloud.pushsdk.d.e;

import android.content.Context;
import android.os.Build;
import com.meizu.cloud.pushsdk.d.f.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28660a = "c";

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, String> f28661b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, Object> f28662c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, String> f28663d;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f28664a = null;

        public a a(Context context) {
            this.f28664a = context;
            return this;
        }

        public c a() {
            return new c(this);
        }
    }

    private c(a aVar) {
        this.f28661b = new HashMap<>();
        this.f28662c = new HashMap<>();
        this.f28663d = new HashMap<>();
        d();
        e();
        f();
        g();
        if (aVar.f28664a != null) {
            a(aVar.f28664a);
        }
        com.meizu.cloud.pushsdk.d.f.c.c(f28660a, "Subject created successfully.", new Object[0]);
    }

    private void a(String str, String str2) {
        if (str == null || str2 == null || str.isEmpty() || str2.isEmpty()) {
            return;
        }
        this.f28663d.put(str, str2);
    }

    private void d() {
        a("ot", "android-" + Build.VERSION.RELEASE);
    }

    private void e() {
        a("ov", Build.DISPLAY);
    }

    private void f() {
        a("dm", Build.MODEL);
    }

    private void g() {
        a("df", Build.MANUFACTURER);
    }

    public Map<String, Object> a() {
        return this.f28662c;
    }

    public void a(Context context) {
        b(context);
    }

    public Map<String, String> b() {
        return this.f28663d;
    }

    public void b(Context context) {
        String b10 = e.b(context);
        if (b10 != null) {
            a("ca", b10);
        }
    }

    public Map<String, String> c() {
        return this.f28661b;
    }
}
