package vc;

import android.text.TextUtils;
import java.util.List;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f59105a;

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private List<c> f59106a;

        public f b() {
            return new f(this);
        }

        public b c(List<c> list) {
            this.f59106a = list;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f59107a;

        /* renamed from: b  reason: collision with root package name */
        private final String f59108b;

        /* renamed from: c  reason: collision with root package name */
        private final String f59109c;

        /* renamed from: d  reason: collision with root package name */
        private final String f59110d;

        /* renamed from: e  reason: collision with root package name */
        private final String f59111e;

        /* renamed from: f  reason: collision with root package name */
        private final String f59112f;

        /* renamed from: g  reason: collision with root package name */
        private final String f59113g;

        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private String f59114a;

            /* renamed from: b  reason: collision with root package name */
            private String f59115b;

            /* renamed from: c  reason: collision with root package name */
            private String f59116c;

            /* renamed from: d  reason: collision with root package name */
            private String f59117d;

            /* renamed from: e  reason: collision with root package name */
            private String f59118e;

            /* renamed from: f  reason: collision with root package name */
            private String f59119f;

            /* renamed from: g  reason: collision with root package name */
            private String f59120g;

            public a h(String str) {
                this.f59115b = str;
                return this;
            }

            public c i() {
                return new c(this);
            }

            public a j(String str) {
                this.f59118e = str;
                return this;
            }

            public a k(String str) {
                this.f59117d = str;
                return this;
            }

            public a l(String str) {
                this.f59114a = str;
                return this;
            }

            public a m(String str) {
                this.f59116c = str;
                return this;
            }

            public a n(String str) {
                this.f59119f = str;
                return this;
            }

            public a o(String str) {
                this.f59120g = str;
                return this;
            }
        }

        public String a() {
            return this.f59111e;
        }

        public String b() {
            return this.f59110d;
        }

        public String c() {
            return this.f59112f;
        }

        public String d() {
            return this.f59113g;
        }

        public String toString() {
            return "JWK{keyType='" + this.f59107a + "', algorithm='" + this.f59108b + "', use='" + this.f59109c + "', keyId='" + this.f59110d + "', curve='" + this.f59111e + "', x='" + this.f59112f + "', y='" + this.f59113g + "'}";
        }

        private c(a aVar) {
            this.f59107a = aVar.f59114a;
            this.f59108b = aVar.f59115b;
            this.f59109c = aVar.f59116c;
            this.f59110d = aVar.f59117d;
            this.f59111e = aVar.f59118e;
            this.f59112f = aVar.f59119f;
            this.f59113g = aVar.f59120g;
        }
    }

    public c a(String str) {
        for (c cVar : this.f59105a) {
            if (TextUtils.equals(cVar.b(), str)) {
                return cVar;
            }
        }
        return null;
    }

    public String toString() {
        return "JWKSet{keys=" + this.f59105a + '}';
    }

    private f(b bVar) {
        this.f59105a = bVar.f59106a;
    }
}
