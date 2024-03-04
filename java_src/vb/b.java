package vb;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import rb.e;
import rb.g;
/* loaded from: classes4.dex */
public class b extends rb.d {

    /* renamed from: d  reason: collision with root package name */
    private static List<ub.a> f59077d;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f59078e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static final Map<String, rb.d> f59079f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private static String f59080g;

    /* renamed from: a  reason: collision with root package name */
    private final e f59081a;

    /* renamed from: b  reason: collision with root package name */
    private final d f59082b;

    /* renamed from: c  reason: collision with root package name */
    private final d f59083c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements g.a {
        a() {
        }

        @Override // rb.g.a
        public String a(e eVar) {
            String str;
            if (eVar.c().equals(rb.b.f57402c)) {
                str = "/agcgw_all/CN";
            } else if (eVar.c().equals(rb.b.f57404e)) {
                str = "/agcgw_all/RU";
            } else if (eVar.c().equals(rb.b.f57403d)) {
                str = "/agcgw_all/DE";
            } else if (!eVar.c().equals(rb.b.f57405f)) {
                return null;
            } else {
                str = "/agcgw_all/SG";
            }
            return eVar.b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: vb.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0670b implements g.a {
        C0670b() {
        }

        @Override // rb.g.a
        public String a(e eVar) {
            String str;
            if (eVar.c().equals(rb.b.f57402c)) {
                str = "/agcgw_all/CN_back";
            } else if (eVar.c().equals(rb.b.f57404e)) {
                str = "/agcgw_all/RU_back";
            } else if (eVar.c().equals(rb.b.f57403d)) {
                str = "/agcgw_all/DE_back";
            } else if (!eVar.c().equals(rb.b.f57405f)) {
                return null;
            } else {
                str = "/agcgw_all/SG_back";
            }
            return eVar.b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c implements g.a {
        c() {
        }

        @Override // rb.g.a
        public String a(e eVar) {
            String str;
            if (eVar.c().equals(rb.b.f57402c)) {
                str = "/service/analytics/collector_url_cn";
            } else if (eVar.c().equals(rb.b.f57404e)) {
                str = "/service/analytics/collector_url_ru";
            } else if (eVar.c().equals(rb.b.f57403d)) {
                str = "/service/analytics/collector_url_de";
            } else if (!eVar.c().equals(rb.b.f57405f)) {
                return null;
            } else {
                str = "/service/analytics/collector_url_sg";
            }
            return eVar.b(str);
        }
    }

    public b(e eVar) {
        this.f59081a = eVar;
        if (f59077d == null) {
            Log.e("AGConnectInstance", "please call `initialize()` first");
        }
        this.f59082b = new d(f59077d, eVar.getContext());
        d dVar = new d(null, eVar.getContext());
        this.f59083c = dVar;
        if (eVar instanceof tb.d) {
            dVar.c(((tb.d) eVar).e(), eVar.getContext());
        }
    }

    public static rb.d f() {
        String str = f59080g;
        if (str == null) {
            str = "DEFAULT_INSTANCE";
        }
        return g(str);
    }

    public static rb.d g(String str) {
        rb.d dVar;
        synchronized (f59078e) {
            dVar = f59079f.get(str);
            if (dVar == null) {
                if ("DEFAULT_INSTANCE".equals(str)) {
                    Log.w("AGC_Instance", "please call `initialize()` first");
                } else {
                    Log.w("AGC_Instance", "not find instance for : " + str);
                }
            }
        }
        return dVar;
    }

    public static rb.d h(e eVar) {
        return i(eVar, false);
    }

    private static rb.d i(e eVar, boolean z10) {
        rb.d dVar;
        synchronized (f59078e) {
            Map<String, rb.d> map = f59079f;
            dVar = map.get(eVar.a());
            if (dVar == null || z10) {
                dVar = new b(eVar);
                map.put(eVar.a(), dVar);
            }
        }
        return dVar;
    }

    public static synchronized void j(Context context) {
        synchronized (b.class) {
            if (f59079f.size() > 0) {
                Log.w("AGC_Instance", "Repeated invoking initialize");
            } else {
                k(context, sb.a.d(context));
            }
        }
    }

    private static synchronized void k(Context context, e eVar) {
        synchronized (b.class) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                Log.w("AGC_Instance", "context.getApplicationContext null");
            } else {
                context = applicationContext;
            }
            l();
            m();
            tb.c.a(context);
            if (f59077d == null) {
                f59077d = new vb.c(context).a();
            }
            i(eVar, true);
            f59080g = eVar.a();
            Log.i("AGC_Instance", "AGC SDK initialize end, default route:" + eVar.c().a());
            vb.a.a();
        }
    }

    private static void l() {
        g.b("/agcgw/url", new a());
        g.b("/agcgw/backurl", new C0670b());
    }

    private static void m() {
        g.b("/service/analytics/collector_url", new c());
    }

    @Override // rb.d
    public Context b() {
        return this.f59081a.getContext();
    }

    @Override // rb.d
    public e d() {
        return this.f59081a;
    }
}
