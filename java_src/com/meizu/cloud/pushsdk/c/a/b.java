package com.meizu.cloud.pushsdk.c.a;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.meizu.cloud.pushsdk.c.a.b;
import com.meizu.cloud.pushsdk.c.c.b;
import com.meizu.cloud.pushsdk.c.c.c;
import com.meizu.cloud.pushsdk.c.c.f;
import com.meizu.cloud.pushsdk.c.c.g;
import com.meizu.cloud.pushsdk.c.c.h;
import com.meizu.cloud.pushsdk.c.c.j;
import com.meizu.cloud.pushsdk.c.c.k;
import java.io.File;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b<T extends b> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28267a = "b";

    /* renamed from: w  reason: collision with root package name */
    private static final g f28268w = g.a("application/json; charset=utf-8");

    /* renamed from: x  reason: collision with root package name */
    private static final g f28269x = g.a("text/x-markdown; charset=utf-8");

    /* renamed from: z  reason: collision with root package name */
    private static final Object f28270z = new Object();
    private com.meizu.cloud.pushsdk.c.c.a A;
    private int B;
    private boolean C;
    private int D;
    private com.meizu.cloud.pushsdk.c.d.a E;
    private Bitmap.Config F;
    private int G;
    private int H;
    private ImageView.ScaleType I;
    private final Executor J;
    private String K;
    private Type L;

    /* renamed from: b  reason: collision with root package name */
    private final int f28271b;

    /* renamed from: c  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.c.a.d f28272c;

    /* renamed from: d  reason: collision with root package name */
    private final int f28273d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28274e;

    /* renamed from: f  reason: collision with root package name */
    private int f28275f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f28276g;

    /* renamed from: h  reason: collision with root package name */
    private e f28277h;

    /* renamed from: i  reason: collision with root package name */
    private final HashMap<String, String> f28278i;

    /* renamed from: j  reason: collision with root package name */
    private HashMap<String, String> f28279j;

    /* renamed from: k  reason: collision with root package name */
    private HashMap<String, String> f28280k;

    /* renamed from: l  reason: collision with root package name */
    private HashMap<String, String> f28281l;

    /* renamed from: m  reason: collision with root package name */
    private final HashMap<String, String> f28282m;

    /* renamed from: n  reason: collision with root package name */
    private final HashMap<String, String> f28283n;

    /* renamed from: o  reason: collision with root package name */
    private HashMap<String, File> f28284o;

    /* renamed from: p  reason: collision with root package name */
    private String f28285p;

    /* renamed from: q  reason: collision with root package name */
    private String f28286q;

    /* renamed from: r  reason: collision with root package name */
    private JSONObject f28287r;

    /* renamed from: s  reason: collision with root package name */
    private JSONArray f28288s;

    /* renamed from: t  reason: collision with root package name */
    private String f28289t;

    /* renamed from: u  reason: collision with root package name */
    private byte[] f28290u;

    /* renamed from: v  reason: collision with root package name */
    private File f28291v;

    /* renamed from: y  reason: collision with root package name */
    private g f28292y;

    /* renamed from: com.meizu.cloud.pushsdk.c.a.b$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f28294a;

        static {
            int[] iArr = new int[e.values().length];
            f28294a = iArr;
            try {
                iArr[e.JSON_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28294a[e.JSON_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28294a[e.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28294a[e.BITMAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28294a[e.PREFETCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class a<T extends a> {

        /* renamed from: b  reason: collision with root package name */
        private final String f28296b;

        /* renamed from: c  reason: collision with root package name */
        private Object f28297c;

        /* renamed from: g  reason: collision with root package name */
        private final String f28301g;

        /* renamed from: h  reason: collision with root package name */
        private final String f28302h;

        /* renamed from: j  reason: collision with root package name */
        private Executor f28304j;

        /* renamed from: k  reason: collision with root package name */
        private String f28305k;

        /* renamed from: a  reason: collision with root package name */
        private com.meizu.cloud.pushsdk.c.a.d f28295a = com.meizu.cloud.pushsdk.c.a.d.MEDIUM;

        /* renamed from: d  reason: collision with root package name */
        private final HashMap<String, String> f28298d = new HashMap<>();

        /* renamed from: e  reason: collision with root package name */
        private final HashMap<String, String> f28299e = new HashMap<>();

        /* renamed from: f  reason: collision with root package name */
        private final HashMap<String, String> f28300f = new HashMap<>();

        /* renamed from: i  reason: collision with root package name */
        private int f28303i = 0;

        public a(String str, String str2, String str3) {
            this.f28296b = str;
            this.f28301g = str2;
            this.f28302h = str3;
        }

        public b a() {
            return new b(this);
        }
    }

    /* renamed from: com.meizu.cloud.pushsdk.c.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0279b<T extends C0279b> {

        /* renamed from: c  reason: collision with root package name */
        private final String f28308c;

        /* renamed from: d  reason: collision with root package name */
        private Object f28309d;

        /* renamed from: e  reason: collision with root package name */
        private Bitmap.Config f28310e;

        /* renamed from: f  reason: collision with root package name */
        private int f28311f;

        /* renamed from: g  reason: collision with root package name */
        private int f28312g;

        /* renamed from: h  reason: collision with root package name */
        private ImageView.ScaleType f28313h;

        /* renamed from: l  reason: collision with root package name */
        private Executor f28317l;

        /* renamed from: m  reason: collision with root package name */
        private String f28318m;

        /* renamed from: a  reason: collision with root package name */
        private com.meizu.cloud.pushsdk.c.a.d f28306a = com.meizu.cloud.pushsdk.c.a.d.MEDIUM;

        /* renamed from: i  reason: collision with root package name */
        private final HashMap<String, String> f28314i = new HashMap<>();

        /* renamed from: j  reason: collision with root package name */
        private final HashMap<String, String> f28315j = new HashMap<>();

        /* renamed from: k  reason: collision with root package name */
        private final HashMap<String, String> f28316k = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private final int f28307b = 0;

        public C0279b(String str) {
            this.f28308c = str;
        }

        public T a(HashMap<String, String> hashMap) {
            if (hashMap != null) {
                for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                    this.f28315j.put(entry.getKey(), entry.getValue());
                }
            }
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class c<T extends c> {

        /* renamed from: b  reason: collision with root package name */
        private final String f28320b;

        /* renamed from: c  reason: collision with root package name */
        private Object f28321c;

        /* renamed from: j  reason: collision with root package name */
        private Executor f28328j;

        /* renamed from: k  reason: collision with root package name */
        private String f28329k;

        /* renamed from: l  reason: collision with root package name */
        private String f28330l;

        /* renamed from: a  reason: collision with root package name */
        private com.meizu.cloud.pushsdk.c.a.d f28319a = com.meizu.cloud.pushsdk.c.a.d.MEDIUM;

        /* renamed from: d  reason: collision with root package name */
        private final HashMap<String, String> f28322d = new HashMap<>();

        /* renamed from: e  reason: collision with root package name */
        private final HashMap<String, String> f28323e = new HashMap<>();

        /* renamed from: f  reason: collision with root package name */
        private final HashMap<String, String> f28324f = new HashMap<>();

        /* renamed from: g  reason: collision with root package name */
        private final HashMap<String, String> f28325g = new HashMap<>();

        /* renamed from: h  reason: collision with root package name */
        private final HashMap<String, File> f28326h = new HashMap<>();

        /* renamed from: i  reason: collision with root package name */
        private int f28327i = 0;

        public c(String str) {
            this.f28320b = str;
        }

        public T a(String str, File file) {
            this.f28326h.put(str, file);
            return this;
        }

        public T a(HashMap<String, String> hashMap) {
            if (hashMap != null) {
                for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                    this.f28323e.put(entry.getKey(), entry.getValue());
                }
            }
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class d<T extends d> {

        /* renamed from: c  reason: collision with root package name */
        private final String f28333c;

        /* renamed from: d  reason: collision with root package name */
        private Object f28334d;

        /* renamed from: o  reason: collision with root package name */
        private Executor f28345o;

        /* renamed from: p  reason: collision with root package name */
        private String f28346p;

        /* renamed from: q  reason: collision with root package name */
        private String f28347q;

        /* renamed from: a  reason: collision with root package name */
        private com.meizu.cloud.pushsdk.c.a.d f28331a = com.meizu.cloud.pushsdk.c.a.d.MEDIUM;

        /* renamed from: e  reason: collision with root package name */
        private JSONObject f28335e = null;

        /* renamed from: f  reason: collision with root package name */
        private JSONArray f28336f = null;

        /* renamed from: g  reason: collision with root package name */
        private String f28337g = null;

        /* renamed from: h  reason: collision with root package name */
        private byte[] f28338h = null;

        /* renamed from: i  reason: collision with root package name */
        private File f28339i = null;

        /* renamed from: j  reason: collision with root package name */
        private final HashMap<String, String> f28340j = new HashMap<>();

        /* renamed from: k  reason: collision with root package name */
        private final HashMap<String, String> f28341k = new HashMap<>();

        /* renamed from: l  reason: collision with root package name */
        private final HashMap<String, String> f28342l = new HashMap<>();

        /* renamed from: m  reason: collision with root package name */
        private final HashMap<String, String> f28343m = new HashMap<>();

        /* renamed from: n  reason: collision with root package name */
        private final HashMap<String, String> f28344n = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private final int f28332b = 1;

        public d(String str) {
            this.f28333c = str;
        }

        public T a(HashMap<String, String> hashMap) {
            if (hashMap != null) {
                for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                    this.f28341k.put(entry.getKey(), entry.getValue());
                }
            }
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    public b(a aVar) {
        this.f28279j = new HashMap<>();
        this.f28280k = new HashMap<>();
        this.f28281l = new HashMap<>();
        this.f28284o = new HashMap<>();
        this.f28287r = null;
        this.f28288s = null;
        this.f28289t = null;
        this.f28290u = null;
        this.f28291v = null;
        this.f28292y = null;
        this.D = 0;
        this.L = null;
        this.f28273d = 1;
        this.f28271b = 0;
        this.f28272c = aVar.f28295a;
        this.f28274e = aVar.f28296b;
        this.f28276g = aVar.f28297c;
        this.f28285p = aVar.f28301g;
        this.f28286q = aVar.f28302h;
        this.f28278i = aVar.f28298d;
        this.f28282m = aVar.f28299e;
        this.f28283n = aVar.f28300f;
        this.D = aVar.f28303i;
        this.J = aVar.f28304j;
        this.K = aVar.f28305k;
    }

    public b(C0279b c0279b) {
        this.f28279j = new HashMap<>();
        this.f28280k = new HashMap<>();
        this.f28281l = new HashMap<>();
        this.f28284o = new HashMap<>();
        this.f28287r = null;
        this.f28288s = null;
        this.f28289t = null;
        this.f28290u = null;
        this.f28291v = null;
        this.f28292y = null;
        this.D = 0;
        this.L = null;
        this.f28273d = 0;
        this.f28271b = c0279b.f28307b;
        this.f28272c = c0279b.f28306a;
        this.f28274e = c0279b.f28308c;
        this.f28276g = c0279b.f28309d;
        this.f28278i = c0279b.f28314i;
        this.F = c0279b.f28310e;
        this.H = c0279b.f28312g;
        this.G = c0279b.f28311f;
        this.I = c0279b.f28313h;
        this.f28282m = c0279b.f28315j;
        this.f28283n = c0279b.f28316k;
        this.J = c0279b.f28317l;
        this.K = c0279b.f28318m;
    }

    public b(c cVar) {
        this.f28279j = new HashMap<>();
        this.f28280k = new HashMap<>();
        this.f28281l = new HashMap<>();
        this.f28284o = new HashMap<>();
        this.f28287r = null;
        this.f28288s = null;
        this.f28289t = null;
        this.f28290u = null;
        this.f28291v = null;
        this.f28292y = null;
        this.D = 0;
        this.L = null;
        this.f28273d = 2;
        this.f28271b = 1;
        this.f28272c = cVar.f28319a;
        this.f28274e = cVar.f28320b;
        this.f28276g = cVar.f28321c;
        this.f28278i = cVar.f28322d;
        this.f28282m = cVar.f28324f;
        this.f28283n = cVar.f28325g;
        this.f28281l = cVar.f28323e;
        this.f28284o = cVar.f28326h;
        this.D = cVar.f28327i;
        this.J = cVar.f28328j;
        this.K = cVar.f28329k;
        if (cVar.f28330l != null) {
            this.f28292y = g.a(cVar.f28330l);
        }
    }

    public b(d dVar) {
        this.f28279j = new HashMap<>();
        this.f28280k = new HashMap<>();
        this.f28281l = new HashMap<>();
        this.f28284o = new HashMap<>();
        this.f28287r = null;
        this.f28288s = null;
        this.f28289t = null;
        this.f28290u = null;
        this.f28291v = null;
        this.f28292y = null;
        this.D = 0;
        this.L = null;
        this.f28273d = 0;
        this.f28271b = dVar.f28332b;
        this.f28272c = dVar.f28331a;
        this.f28274e = dVar.f28333c;
        this.f28276g = dVar.f28334d;
        this.f28278i = dVar.f28340j;
        this.f28279j = dVar.f28341k;
        this.f28280k = dVar.f28342l;
        this.f28282m = dVar.f28343m;
        this.f28283n = dVar.f28344n;
        this.f28287r = dVar.f28335e;
        this.f28288s = dVar.f28336f;
        this.f28289t = dVar.f28337g;
        this.f28291v = dVar.f28339i;
        this.f28290u = dVar.f28338h;
        this.J = dVar.f28345o;
        this.K = dVar.f28346p;
        if (dVar.f28347q != null) {
            this.f28292y = g.a(dVar.f28347q);
        }
    }

    public com.meizu.cloud.pushsdk.c.a.c a() {
        this.f28277h = e.STRING;
        return com.meizu.cloud.pushsdk.c.e.c.a(this);
    }

    public com.meizu.cloud.pushsdk.c.a.c a(k kVar) {
        com.meizu.cloud.pushsdk.c.a.c<Bitmap> a10;
        int i9 = AnonymousClass2.f28294a[this.f28277h.ordinal()];
        if (i9 == 1) {
            try {
                return com.meizu.cloud.pushsdk.c.a.c.a(new JSONArray(com.meizu.cloud.pushsdk.c.g.g.a(kVar.b().a()).h()));
            } catch (Exception e10) {
                return com.meizu.cloud.pushsdk.c.a.c.a(com.meizu.cloud.pushsdk.c.h.b.b(new com.meizu.cloud.pushsdk.c.b.a(e10)));
            }
        } else if (i9 == 2) {
            try {
                return com.meizu.cloud.pushsdk.c.a.c.a(new JSONObject(com.meizu.cloud.pushsdk.c.g.g.a(kVar.b().a()).h()));
            } catch (Exception e11) {
                return com.meizu.cloud.pushsdk.c.a.c.a(com.meizu.cloud.pushsdk.c.h.b.b(new com.meizu.cloud.pushsdk.c.b.a(e11)));
            }
        } else if (i9 == 3) {
            try {
                return com.meizu.cloud.pushsdk.c.a.c.a(com.meizu.cloud.pushsdk.c.g.g.a(kVar.b().a()).h());
            } catch (Exception e12) {
                return com.meizu.cloud.pushsdk.c.a.c.a(com.meizu.cloud.pushsdk.c.h.b.b(new com.meizu.cloud.pushsdk.c.b.a(e12)));
            }
        } else if (i9 != 4) {
            if (i9 != 5) {
                return null;
            }
            return com.meizu.cloud.pushsdk.c.a.c.a("prefetch");
        } else {
            synchronized (f28270z) {
                try {
                    try {
                        a10 = com.meizu.cloud.pushsdk.c.h.b.a(kVar, this.G, this.H, this.F, this.I);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                } catch (Exception e13) {
                    return com.meizu.cloud.pushsdk.c.a.c.a(com.meizu.cloud.pushsdk.c.h.b.b(new com.meizu.cloud.pushsdk.c.b.a(e13)));
                }
            }
            return a10;
        }
    }

    public com.meizu.cloud.pushsdk.c.b.a a(com.meizu.cloud.pushsdk.c.b.a aVar) {
        try {
            if (aVar.a() != null && aVar.a().b() != null && aVar.a().b().a() != null) {
                aVar.b(com.meizu.cloud.pushsdk.c.g.g.a(aVar.a().b().a()).h());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar;
    }

    public void a(com.meizu.cloud.pushsdk.c.c.a aVar) {
        this.A = aVar;
    }

    public void a(String str) {
        this.K = str;
    }

    public com.meizu.cloud.pushsdk.c.a.c b() {
        this.f28277h = e.BITMAP;
        return com.meizu.cloud.pushsdk.c.e.c.a(this);
    }

    public com.meizu.cloud.pushsdk.c.a.c c() {
        return com.meizu.cloud.pushsdk.c.e.c.a(this);
    }

    public int d() {
        return this.f28271b;
    }

    public String e() {
        String str = this.f28274e;
        for (Map.Entry<String, String> entry : this.f28283n.entrySet()) {
            str = str.replace("{" + entry.getKey() + "}", String.valueOf(entry.getValue()));
        }
        f.a f10 = f.c(str).f();
        for (Map.Entry<String, String> entry2 : this.f28282m.entrySet()) {
            f10.a(entry2.getKey(), entry2.getValue());
        }
        return f10.b().toString();
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public e f() {
        return this.f28277h;
    }

    public int g() {
        return this.f28273d;
    }

    public String h() {
        return this.K;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public com.meizu.cloud.pushsdk.c.d.a i() {
        return new com.meizu.cloud.pushsdk.c.d.a() { // from class: com.meizu.cloud.pushsdk.c.a.b.1
            @Override // com.meizu.cloud.pushsdk.c.d.a
            public void a(long j10, long j11) {
                b.this.B = (int) ((100 * j10) / j11);
                if (b.this.E == null || b.this.C) {
                    return;
                }
                b.this.E.a(j10, j11);
            }
        };
    }

    public String j() {
        return this.f28285p;
    }

    public String k() {
        return this.f28286q;
    }

    public com.meizu.cloud.pushsdk.c.c.a l() {
        return this.A;
    }

    public j m() {
        JSONObject jSONObject = this.f28287r;
        if (jSONObject != null) {
            g gVar = this.f28292y;
            return gVar != null ? j.a(gVar, jSONObject.toString()) : j.a(f28268w, jSONObject.toString());
        }
        JSONArray jSONArray = this.f28288s;
        if (jSONArray != null) {
            g gVar2 = this.f28292y;
            return gVar2 != null ? j.a(gVar2, jSONArray.toString()) : j.a(f28268w, jSONArray.toString());
        }
        String str = this.f28289t;
        if (str != null) {
            g gVar3 = this.f28292y;
            return gVar3 != null ? j.a(gVar3, str) : j.a(f28269x, str);
        }
        File file = this.f28291v;
        if (file != null) {
            g gVar4 = this.f28292y;
            return gVar4 != null ? j.a(gVar4, file) : j.a(f28269x, file);
        }
        byte[] bArr = this.f28290u;
        if (bArr != null) {
            g gVar5 = this.f28292y;
            return gVar5 != null ? j.a(gVar5, bArr) : j.a(f28269x, bArr);
        }
        b.a aVar = new b.a();
        try {
            for (Map.Entry<String, String> entry : this.f28279j.entrySet()) {
                if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                    aVar.a(entry.getKey(), entry.getValue());
                }
            }
            for (Map.Entry<String, String> entry2 : this.f28280k.entrySet()) {
                if (!TextUtils.isEmpty(entry2.getKey()) && !TextUtils.isEmpty(entry2.getValue())) {
                    aVar.b(entry2.getKey(), entry2.getValue());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar.a();
    }

    public j n() {
        h.a a10 = new h.a().a(h.f28412e);
        try {
            for (Map.Entry<String, String> entry : this.f28281l.entrySet()) {
                a10.a(com.meizu.cloud.pushsdk.c.c.c.a("Content-Disposition", "form-data; name=\"" + entry.getKey() + "\""), j.a((g) null, entry.getValue()));
            }
            for (Map.Entry<String, File> entry2 : this.f28284o.entrySet()) {
                if (entry2.getValue() != null) {
                    String name = entry2.getValue().getName();
                    j a11 = j.a(g.a(com.meizu.cloud.pushsdk.c.h.b.a(name)), entry2.getValue());
                    a10.a(com.meizu.cloud.pushsdk.c.c.c.a("Content-Disposition", "form-data; name=\"" + entry2.getKey() + "\"; filename=\"" + name + "\""), a11);
                    g gVar = this.f28292y;
                    if (gVar != null) {
                        a10.a(gVar);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return a10.a();
    }

    public com.meizu.cloud.pushsdk.c.c.c o() {
        c.a aVar = new c.a();
        try {
            for (Map.Entry<String, String> entry : this.f28278i.entrySet()) {
                aVar.a(entry.getKey(), entry.getValue());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar.a();
    }

    public String toString() {
        return "ANRequest{sequenceNumber='" + this.f28275f + ", mMethod=" + this.f28271b + ", mPriority=" + this.f28272c + ", mRequestType=" + this.f28273d + ", mUrl=" + this.f28274e + '}';
    }
}
