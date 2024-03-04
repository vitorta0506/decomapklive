package com.tencent.thumbplayer.tplayer.a.b;

import androidx.annotation.NonNull;
import com.guochao.faceshow.utils.PushUtils;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class a implements Serializable {
    @InterfaceC0352a(a = "flowid")

    /* renamed from: a  reason: collision with root package name */
    private String f34121a = "";
    @InterfaceC0352a(a = TPDownloadProxyEnum.USER_GUID)

    /* renamed from: b  reason: collision with root package name */
    private String f34122b = "";
    @InterfaceC0352a(a = "seq")

    /* renamed from: c  reason: collision with root package name */
    private int f34123c = -1;
    @InterfaceC0352a(a = "platformtype")

    /* renamed from: d  reason: collision with root package name */
    private int f34124d = -1;
    @InterfaceC0352a(a = "devtype")

    /* renamed from: e  reason: collision with root package name */
    private int f34125e = -1;
    @InterfaceC0352a(a = "networktype")

    /* renamed from: f  reason: collision with root package name */
    private int f34126f = -1;
    @InterfaceC0352a(a = "devicename")

    /* renamed from: g  reason: collision with root package name */
    private String f34127g = "";
    @InterfaceC0352a(a = "osver")

    /* renamed from: h  reason: collision with root package name */
    private String f34128h = "";
    @InterfaceC0352a(a = "appname")

    /* renamed from: i  reason: collision with root package name */
    private String f34129i = "";
    @InterfaceC0352a(a = "appver")

    /* renamed from: j  reason: collision with root package name */
    private String f34130j = "";
    @InterfaceC0352a(a = "playerver")

    /* renamed from: k  reason: collision with root package name */
    private String f34131k = "";
    @InterfaceC0352a(a = "reportprotocolver")

    /* renamed from: l  reason: collision with root package name */
    private String f34132l = "";
    @InterfaceC0352a(a = "durationms")

    /* renamed from: m  reason: collision with root package name */
    private long f34133m = -1;
    @InterfaceC0352a(a = "hlssourcetype")

    /* renamed from: n  reason: collision with root package name */
    private int f34134n = -1;
    @InterfaceC0352a(a = "playertype")

    /* renamed from: o  reason: collision with root package name */
    private int f34135o = -1;
    @InterfaceC0352a(a = "urlprotocol")

    /* renamed from: p  reason: collision with root package name */
    private int f34136p = -1;
    @InterfaceC0352a(a = "containerformat")

    /* renamed from: q  reason: collision with root package name */
    private String f34137q = "";
    @InterfaceC0352a(a = "videoencodefmt")

    /* renamed from: r  reason: collision with root package name */
    private int f34138r = -1;
    @InterfaceC0352a(a = "audioencodefmt")

    /* renamed from: s  reason: collision with root package name */
    private int f34139s = -1;
    @InterfaceC0352a(a = "subtitleencodefmt")

    /* renamed from: t  reason: collision with root package name */
    private int f34140t = -1;
    @InterfaceC0352a(a = "streambitratekbps")

    /* renamed from: u  reason: collision with root package name */
    private long f34141u = -1;
    @InterfaceC0352a(a = "videoframerate")

    /* renamed from: v  reason: collision with root package name */
    private float f34142v = -1.0f;
    @InterfaceC0352a(a = "url")

    /* renamed from: w  reason: collision with root package name */
    private String f34143w = "";
    @InterfaceC0352a(a = "resolution")

    /* renamed from: x  reason: collision with root package name */
    private String f34144x = "";
    @InterfaceC0352a(a = "datatransportver")

    /* renamed from: y  reason: collision with root package name */
    private String f34145y = "";
    @InterfaceC0352a(a = "speedkbps")

    /* renamed from: z  reason: collision with root package name */
    private int f34146z = -1;
    @InterfaceC0352a(a = "usedatatransport")
    private int A = -1;
    @InterfaceC0352a(a = "datatransportprotocolver")
    private String B = "";
    @InterfaceC0352a(a = "cdnuip")
    private String C = "";
    @InterfaceC0352a(a = "cdnip")
    private String D = "";
    @InterfaceC0352a(a = "platform")
    private int E = -1;
    @InterfaceC0352a(a = "playerconfig")
    private String F = "";
    @InterfaceC0352a(a = "drmability")
    private int G = -1;
    private Map<String, String> H = null;
    private Map<String, String> I = null;
    private Map<String, String> J = null;
    private Map<String, String> K = null;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.tencent.thumbplayer.tplayer.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public @interface InterfaceC0352a {
        String a() default "";
    }

    private String a(Field field) {
        try {
            field.setAccessible(true);
        } catch (Exception e10) {
            TPLogUtil.e(getClass().getName(), e10);
        }
        if (field.getType() == Integer.TYPE) {
            return String.valueOf(field.getInt(this));
        }
        if (field.getType() == Long.TYPE) {
            return String.valueOf(field.getLong(this));
        }
        if (field.getType() == Float.TYPE) {
            return String.valueOf(field.getFloat(this));
        }
        if (field.getType() == Boolean.TYPE) {
            return String.valueOf(field.getBoolean(this));
        }
        if (field.getType() == String.class) {
            return (String) field.get(this);
        }
        String name = getClass().getName();
        TPLogUtil.e(name, "getFieldValue field:" + field.getName() + " is not match.");
        return PushUtils.CHAT_PUSH_TYPE;
    }

    private Map<String, String> a(Field[] fieldArr) {
        HashMap hashMap = new HashMap();
        for (Field field : fieldArr) {
            InterfaceC0352a interfaceC0352a = (InterfaceC0352a) field.getAnnotation(InterfaceC0352a.class);
            if (interfaceC0352a != null) {
                hashMap.put(interfaceC0352a.a(), a(field));
            }
        }
        return hashMap;
    }

    private static void a(@NonNull Map<String, String> map, @NonNull Map<String, String> map2) {
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            if (map.containsKey(entry.getKey())) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
    }

    private void c() {
        Map<String, String> map;
        Map<String, String> map2 = this.H;
        if (map2 == null || (map = this.J) == null) {
            return;
        }
        a(map2, map);
    }

    private void d() {
        Map<String, String> map;
        Map<String, String> map2 = this.I;
        if (map2 == null || (map = this.K) == null) {
            return;
        }
        a(map2, map);
    }

    public String a() {
        return this.f34121a;
    }

    public void a(float f10) {
        this.f34142v = f10;
    }

    public void a(int i9) {
        this.f34123c = i9;
    }

    public void a(long j10) {
        this.f34133m = j10;
    }

    public void a(a aVar) {
        this.f34121a = aVar.f34121a;
        this.f34122b = aVar.f34122b;
        this.f34123c = aVar.f34123c;
        this.f34124d = aVar.f34124d;
        this.f34125e = aVar.f34125e;
        this.f34126f = aVar.f34126f;
        this.f34127g = aVar.f34127g;
        this.f34128h = aVar.f34128h;
        this.f34129i = aVar.f34129i;
        this.f34131k = aVar.f34131k;
        this.f34130j = aVar.f34130j;
        this.f34132l = aVar.f34132l;
        this.f34133m = aVar.f34133m;
        this.f34134n = aVar.f34134n;
        this.f34135o = aVar.f34135o;
        this.f34136p = aVar.f34136p;
        this.f34137q = aVar.f34137q;
        this.f34138r = aVar.f34138r;
        this.f34139s = aVar.f34139s;
        this.f34140t = aVar.f34140t;
        this.f34141u = aVar.f34141u;
        this.f34142v = aVar.f34142v;
        this.f34143w = aVar.f34143w;
        this.f34144x = aVar.f34144x;
        this.f34145y = aVar.f34145y;
        this.f34146z = aVar.f34146z;
        this.A = aVar.A;
        this.C = aVar.C;
        this.D = aVar.D;
        this.B = aVar.B;
        this.E = aVar.E;
        this.F = aVar.F;
        this.H = aVar.H;
        this.I = aVar.I;
        this.J = aVar.J;
        this.K = aVar.K;
        this.G = aVar.G;
    }

    public void a(String str) {
        this.f34121a = str;
    }

    public void a(Map<String, String> map) {
        this.H = map;
    }

    public Map<String, String> b() {
        HashMap hashMap = new HashMap();
        Class<? super Object> superclass = getClass().getSuperclass();
        if (superclass != null) {
            hashMap.putAll(a(superclass.getDeclaredFields()));
        }
        hashMap.putAll(a(getClass().getDeclaredFields()));
        c();
        d();
        Map<String, String> map = this.H;
        if (map != null) {
            hashMap.putAll(map);
        }
        Map<String, String> map2 = this.J;
        if (map2 != null) {
            hashMap.putAll(map2);
        }
        Map<String, String> map3 = this.I;
        if (map3 != null) {
            hashMap.putAll(map3);
        }
        Map<String, String> map4 = this.K;
        if (map4 != null) {
            hashMap.putAll(map4);
        }
        return hashMap;
    }

    public void b(int i9) {
        this.f34124d = i9;
    }

    public void b(long j10) {
        this.f34141u = j10;
    }

    public void b(String str) {
        this.f34122b = str;
    }

    public void b(Map<String, String> map) {
        this.I = map;
    }

    public void c(int i9) {
        this.f34125e = i9;
    }

    public void c(String str) {
        this.f34127g = str;
    }

    public void c(Map<String, String> map) {
        this.J = map;
    }

    public void d(int i9) {
        this.f34126f = i9;
    }

    public void d(String str) {
        this.f34128h = str;
    }

    public void d(Map<String, String> map) {
        this.K = map;
    }

    public void e(int i9) {
        this.f34134n = i9;
    }

    public void e(String str) {
        this.f34129i = str;
    }

    public void f(int i9) {
        this.f34135o = i9;
    }

    public void f(String str) {
        this.f34131k = str;
    }

    public void g(int i9) {
        this.f34136p = i9;
    }

    public void g(String str) {
        this.f34130j = str;
    }

    public void h(int i9) {
        this.f34138r = i9;
    }

    public void h(String str) {
        this.f34132l = str;
    }

    public void i(int i9) {
        this.f34139s = i9;
    }

    public void i(String str) {
        this.f34137q = str;
    }

    public void j(int i9) {
        this.f34140t = i9;
    }

    public void j(String str) {
        this.f34143w = str;
    }

    public void k(int i9) {
        this.f34146z = i9;
    }

    public void k(String str) {
        this.f34144x = str;
    }

    public void l(int i9) {
        this.A = i9;
    }

    public void l(String str) {
        this.f34145y = str;
    }

    public void m(int i9) {
        this.E = i9;
    }

    public void m(String str) {
        this.C = str;
    }

    public void n(int i9) {
        this.G = i9;
    }

    public void n(String str) {
        this.D = str;
    }

    public void o(String str) {
        this.B = str;
    }

    public void p(String str) {
        this.F = str;
    }
}
