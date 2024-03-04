package cn.jiguang.ak;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e extends cn.jiguang.o.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile e f1936b;

    /* renamed from: a  reason: collision with root package name */
    private Context f1937a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends cn.jiguang.o.e {

        /* renamed from: c  reason: collision with root package name */
        private Context f1939c;

        public a(Context context) {
            this.f1939c = context;
            this.f2707b = "JLocationv2#RequestConfigAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            String b10 = d.a().b(this.f1939c);
            cn.jiguang.o.b.e(this.f1939c, "JLocationv2_cfg");
            if (TextUtils.isEmpty(b10)) {
                return;
            }
            d.a(this.f1939c, b10);
            cn.jiguang.o.b.z(this.f1939c, b10);
            e.this.b(this.f1939c, "JLocationv2");
        }
    }

    public static e a() {
        if (f1936b == null) {
            synchronized (e.class) {
                if (f1936b == null) {
                    f1936b = new e();
                }
            }
        }
        return f1936b;
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f1937a = context;
        if (cn.jiguang.i.a.a().a(1500)) {
            try {
                String k10 = cn.jiguang.o.b.k(context);
                cn.jiguang.al.a.a("JLocationv2", "locationConfig:" + k10);
                d.a(context, k10);
                if (System.currentTimeMillis() - cn.jiguang.o.b.f(context, "JLocationv2_cfg") > 86400000) {
                    b(context, cn.jiguang.i.a.a().b(1500));
                }
            } catch (Throwable unused) {
            }
            return "JLocationv2";
        }
        return "JLocationv2";
    }

    @Override // cn.jiguang.o.a
    protected boolean a(Context context, String str) {
        return cn.jiguang.i.a.a().a(1500);
    }

    public void b(Context context, int i9) {
        if (c()) {
            try {
                cn.jiguang.o.d.a(new a(context), i9);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JLocationv2", "[requestConfig failed] " + th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        if (cn.jiguang.i.a.a().a(1500)) {
            cn.jiguang.al.a.a("JLocationv2", " doBusiness , gpsEnanble:" + c.f1917b + ",wifiEnanble :" + c.f1916a + ",cellEnanble:" + c.f1918c);
            if (c.f1917b && cn.jiguang.i.a.a().d(1502)) {
                f.a(context).b();
                if (cn.jiguang.o.b.b(context, "JLocationv2_g")) {
                    f.a(context).c();
                    cn.jiguang.o.b.e(context, "JLocationv2_g");
                }
            }
            if (cn.jiguang.o.b.b(context, "JLocationv2_w") && c.f1916a && cn.jiguang.i.a.a().d(1505)) {
                f.a(context).a();
                cn.jiguang.o.b.e(context, "JLocationv2_w");
            }
            if (cn.jiguang.o.b.b(context, "JLocationv2_c") && c.f1918c && cn.jiguang.i.a.a().d(1501)) {
                f.a(context).d();
                cn.jiguang.o.b.e(context, "JLocationv2_c");
            }
        }
    }

    @Override // cn.jiguang.o.a
    protected boolean b() {
        return cn.jiguang.o.b.k(this.f1937a, "JLocationv2");
    }

    @Override // cn.jiguang.o.a
    protected boolean c() {
        if (cn.jiguang.i.a.a().a(1500)) {
            return cn.jiguang.o.b.l(this.f1937a, "JLocation");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public boolean c(Context context, String str) {
        if (cn.jiguang.i.a.a().a(1500)) {
            return cn.jiguang.o.b.d(context, str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        if (cn.jiguang.i.a.a().a(1500)) {
            JSONObject e10 = f.a(context).e();
            if (e10 == null) {
                cn.jiguang.al.a.a("JLocationv2", "there are no data to report");
                return;
            }
            cn.jiguang.o.d.a(context, e10, "loc_info_v2");
            cn.jiguang.o.d.a(context, (Object) e10);
            cn.jiguang.al.a.a("JLocationv2", "clean cache");
            f.a(context).f();
            super.d(context, str);
        }
    }
}
