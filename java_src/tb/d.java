package tb;

import android.content.Context;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import rb.g;
/* loaded from: classes4.dex */
public class d implements rb.e {

    /* renamed from: a  reason: collision with root package name */
    private final String f58095a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f58096b;

    /* renamed from: c  reason: collision with root package name */
    private final String f58097c;

    /* renamed from: d  reason: collision with root package name */
    private final rb.b f58098d;

    /* renamed from: e  reason: collision with root package name */
    private final f f58099e;

    /* renamed from: f  reason: collision with root package name */
    private final g f58100f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, String> f58101g;

    /* renamed from: h  reason: collision with root package name */
    private final List<ub.a> f58102h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, String> f58103i = new HashMap();

    public d(Context context, String str, rb.b bVar, InputStream inputStream, Map<String, String> map, List<ub.a> list, String str2) {
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f58096b = context;
        str = str == null ? context.getPackageName() : str;
        this.f58097c = str;
        if (inputStream != null) {
            this.f58099e = new j(inputStream, str);
            b.a(inputStream);
        } else {
            this.f58099e = new m(context, str);
        }
        this.f58100f = new g(this.f58099e);
        rb.b bVar2 = rb.b.f57401b;
        if (bVar != bVar2 && "1.0".equals(this.f58099e.a("/configuration_version", null))) {
            throw new RuntimeException("The file version does not match,please download the latest agconnect-services.json from the AGC website.");
        }
        this.f58098d = (bVar == null || bVar == bVar2) ? b.f(this.f58099e.a("/region", null), this.f58099e.a("/agcgw/url", null)) : bVar;
        this.f58101g = b.d(map);
        this.f58102h = list;
        this.f58095a = str2 == null ? f() : str2;
    }

    private String d(String str) {
        Map<String, g.a> a10 = rb.g.a();
        if (a10.containsKey(str)) {
            if (this.f58103i.containsKey(str)) {
                return this.f58103i.get(str);
            }
            g.a aVar = a10.get(str);
            if (aVar == null) {
                return null;
            }
            String a11 = aVar.a(this);
            this.f58103i.put(str, a11);
            return a11;
        }
        return null;
    }

    private String f() {
        return String.valueOf(("{packageName='" + this.f58097c + "', routePolicy=" + this.f58098d + ", reader=" + this.f58099e.toString().hashCode() + ", customConfigMap=" + new JSONObject(this.f58101g).toString().hashCode() + '}').hashCode());
    }

    @Override // rb.e
    public String a() {
        return this.f58095a;
    }

    @Override // rb.e
    public String b(String str) {
        return g(str, null);
    }

    @Override // rb.e
    public rb.b c() {
        rb.b bVar = this.f58098d;
        return bVar == null ? rb.b.f57401b : bVar;
    }

    public List<ub.a> e() {
        return this.f58102h;
    }

    public String g(String str, String str2) {
        if (str == null) {
            return str2;
        }
        String e10 = b.e(str);
        String str3 = this.f58101g.get(e10);
        if (str3 != null) {
            return str3;
        }
        String d10 = d(e10);
        if (d10 != null) {
            return d10;
        }
        String a10 = this.f58099e.a(e10, str2);
        return g.c(a10) ? this.f58100f.a(a10, str2) : a10;
    }

    @Override // rb.e
    public Context getContext() {
        return this.f58096b;
    }
}
