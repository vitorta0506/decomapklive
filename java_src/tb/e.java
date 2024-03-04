package tb;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.light.utils.IOUtils;
import rb.g;
/* loaded from: classes4.dex */
public class e extends sb.a {

    /* renamed from: c  reason: collision with root package name */
    private final Context f58104c;

    /* renamed from: d  reason: collision with root package name */
    private final String f58105d;

    /* renamed from: e  reason: collision with root package name */
    private volatile f f58106e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f58107f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private rb.b f58108g = rb.b.f57401b;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, String> f58109h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private volatile g f58110i;

    public e(Context context, String str) {
        this.f58104c = context;
        this.f58105d = str;
    }

    private static String f(String str) {
        int i9 = 0;
        if (str.length() > 0) {
            while (str.charAt(i9) == '/') {
                i9++;
            }
        }
        return IOUtils.DIR_SEPARATOR_UNIX + str.substring(i9);
    }

    private void g() {
        if (this.f58106e == null) {
            synchronized (this.f58107f) {
                if (this.f58106e == null) {
                    this.f58106e = new m(this.f58104c, this.f58105d);
                    this.f58110i = new g(this.f58106e);
                }
                i();
            }
        }
    }

    private String h(String str) {
        g.a aVar;
        Map<String, g.a> a10 = rb.g.a();
        if (a10.containsKey(str) && (aVar = a10.get(str)) != null) {
            return aVar.a(this);
        }
        return null;
    }

    private void i() {
        if (this.f58108g == rb.b.f57401b) {
            if (this.f58106e != null) {
                this.f58108g = b.f(this.f58106e.a("/region", null), this.f58106e.a("/agcgw/url", null));
            } else {
                Log.w("AGConnectServiceConfig", "get route fail , config not ready");
            }
        }
    }

    @Override // rb.e
    public String a() {
        return "DEFAULT_INSTANCE";
    }

    @Override // rb.e
    public String b(String str) {
        return j(str, null);
    }

    @Override // rb.e
    public rb.b c() {
        if (this.f58108g == null) {
            this.f58108g = rb.b.f57401b;
        }
        rb.b bVar = this.f58108g;
        rb.b bVar2 = rb.b.f57401b;
        if (bVar == bVar2 && this.f58106e == null) {
            g();
        }
        rb.b bVar3 = this.f58108g;
        return bVar3 == null ? bVar2 : bVar3;
    }

    @Override // rb.e
    public Context getContext() {
        return this.f58104c;
    }

    public String j(String str, String str2) {
        Objects.requireNonNull(str, "path must not be null.");
        if (this.f58106e == null) {
            g();
        }
        String f10 = f(str);
        String str3 = this.f58109h.get(f10);
        if (str3 != null) {
            return str3;
        }
        String h10 = h(f10);
        if (h10 != null) {
            return h10;
        }
        String a10 = this.f58106e.a(f10, str2);
        return g.c(a10) ? this.f58110i.a(a10, str2) : a10;
    }
}
