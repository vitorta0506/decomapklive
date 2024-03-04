package cn.jiguang.o;

import android.content.Context;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: cn.jiguang.o.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0042a extends e {

        /* renamed from: c  reason: collision with root package name */
        private Context f2687c;

        /* renamed from: d  reason: collision with root package name */
        private String f2688d;

        /* renamed from: e  reason: collision with root package name */
        private Bundle f2689e;

        C0042a(Context context, String str, Bundle bundle) {
            this.f2687c = context;
            this.f2688d = str;
            this.f2689e = bundle;
            this.f2707b = str + "#BundleAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            try {
                a.this.a(this.f2687c, this.f2688d, this.f2689e);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommon", "BundleAction failed:" + th2.getMessage());
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: c  reason: collision with root package name */
        private Context f2691c;

        /* renamed from: d  reason: collision with root package name */
        private String f2692d;

        b(Context context, String str) {
            this.f2691c = context;
            this.f2692d = str;
            this.f2707b = str + "#CommonAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            try {
                cn.jiguang.i.a.a().a(this.f2692d);
                a.this.e(this.f2691c, this.f2692d);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommon", "dealAction failed:" + th2.getMessage());
            }
        }
    }

    /* loaded from: classes.dex */
    public class c extends e {

        /* renamed from: c  reason: collision with root package name */
        private Context f2694c;

        /* renamed from: d  reason: collision with root package name */
        private String f2695d;

        /* renamed from: e  reason: collision with root package name */
        private JSONObject f2696e;

        c(Context context, String str, JSONObject jSONObject) {
            this.f2694c = context;
            this.f2695d = str;
            this.f2696e = jSONObject;
            this.f2707b = str + "#JsonAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            try {
                a.this.a(this.f2694c, this.f2695d, this.f2696e);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommon", "JsonAction-deal failed:" + th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, Bundle bundle) {
        a(str, bundle);
        boolean d10 = d();
        cn.jiguang.al.a.a("JCommon", str + " isActionBundleEnable:" + d10);
        if (d10) {
            b(context, str);
            d(context, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, JSONObject jSONObject) {
        a(str, jSONObject);
        if (jSONObject.optInt("cmd") != 45) {
            boolean b10 = b();
            cn.jiguang.al.a.a("JCommon", str + " isActionCommandEnable:" + b10);
            if (b10) {
                b(context, str);
                d(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context, String str) {
        boolean a10 = a(context, str);
        cn.jiguang.al.a.a("JCommon", str + " isBusinessEnable:" + a10);
        if (a10) {
            b(context, str);
        }
        boolean c10 = c(context, str);
        cn.jiguang.al.a.a("JCommon", str + " isReportEnable:" + c10);
        if (c10) {
            d(context, str);
        }
    }

    private boolean f(Context context, String str) {
        boolean c10 = c();
        boolean b10 = b();
        boolean d10 = d(context);
        boolean z10 = c10 && b10 && d10;
        cn.jiguang.al.a.a("JCommon", str + " isActionEnable:" + z10 + ",actionUserEnable:" + c10 + ",actionCommandEnable:" + b10 + ",actionUidEnable:" + d10);
        return z10;
    }

    protected abstract String a(Context context);

    public void a(Context context, int i9) {
        String a10 = a(context);
        cn.jiguang.al.a.a("JCommon", "executeActionSingle: [" + a10 + "] from heartBeat, will delay " + i9 + "ms execute");
        boolean f10 = f(context, a10);
        boolean a11 = a(context, a10);
        cn.jiguang.al.a.a("JCommon", a10 + " isActionEnable:" + f10 + ", isBusinessEnable:" + a11);
        if (f10 && a11) {
            d.a(new b(context, a10), i9);
        }
    }

    public void a(Context context, Bundle bundle) {
        String a10 = a(context);
        cn.jiguang.al.a.a("JCommon", "executeBundleAction: [" + a10 + "] from bundle");
        boolean c10 = c();
        cn.jiguang.al.a.a("JCommon", a10 + " isActionUserEnable:" + c10);
        if (c10) {
            d.a(new C0042a(context, a10, bundle));
        }
    }

    public void a(Context context, JSONObject jSONObject) {
        String a10 = a(context);
        cn.jiguang.al.a.a("JCommon", "executeCommandActionSingle: [" + a10 + "] from cmd");
        boolean c10 = c();
        cn.jiguang.al.a.a("JCommon", a10 + " isActionUserEnable:" + c10);
        if (c10) {
            d.a(new c(context, a10, jSONObject));
        }
    }

    protected void a(String str, Bundle bundle) {
        if (bundle != null) {
            cn.jiguang.al.a.a("JCommon", str + " parseJson:" + bundle.toString());
        }
    }

    protected void a(String str, JSONObject jSONObject) {
    }

    protected boolean a(Context context, String str) {
        return cn.jiguang.o.b.a(context, str);
    }

    public void b(Context context) {
        try {
            String a10 = a(context);
            cn.jiguang.al.a.a("JCommon", "executeAction: [" + a10 + "] from heartBeat");
            boolean f10 = f(context, a10);
            boolean a11 = a(context, a10);
            cn.jiguang.al.a.a("JCommon", a10 + " - isActionEnable:" + f10 + ", isBusinessEnable:" + a11);
            if (f10 && a11) {
                d.a(new b(context, a10));
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.a("JCommon", "executeAction failed, error:" + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Context context, String str) {
        cn.jiguang.o.b.e(context, str);
    }

    protected boolean b() {
        return true;
    }

    public void c(Context context) {
        String a10 = a(context);
        cn.jiguang.al.a.a("JCommon", "executeCommandAction: [" + a10 + "] from cmd");
        boolean f10 = f(context, a10);
        cn.jiguang.al.a.a("JCommon", a10 + " - isActionEnable:" + f10);
        if (f10) {
            d.a(new b(context, a10));
        }
    }

    protected boolean c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(Context context, String str) {
        return cn.jiguang.o.b.c(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(Context context, String str) {
        cn.jiguang.o.b.h(context, str);
    }

    protected boolean d() {
        return true;
    }

    protected boolean d(Context context) {
        return d.c(context) > 0;
    }

    public Object e(Context context) {
        return null;
    }
}
