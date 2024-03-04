package i5;

import com.google.api.client.util.p;
import com.google.api.client.util.x;
import com.google.api.client.util.z;
import io.jsonwebtoken.Header;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f40965a;

    /* renamed from: b  reason: collision with root package name */
    private final C0453b f40966b;

    /* loaded from: classes2.dex */
    public static class a extends g5.b {
        @p(Header.TYPE)

        /* renamed from: d  reason: collision with root package name */
        private String f40967d;

        @Override // g5.b
        /* renamed from: j */
        public a f() {
            return (a) super.clone();
        }

        @Override // g5.b
        /* renamed from: k */
        public a g(String str, Object obj) {
            return (a) super.e(str, obj);
        }

        public a l(String str) {
            this.f40967d = str;
            return this;
        }
    }

    /* renamed from: i5.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0453b extends g5.b {
        @p("exp")

        /* renamed from: d  reason: collision with root package name */
        private Long f40968d;
        @p("iat")

        /* renamed from: e  reason: collision with root package name */
        private Long f40969e;
        @p("iss")

        /* renamed from: f  reason: collision with root package name */
        private String f40970f;
        @p("aud")

        /* renamed from: g  reason: collision with root package name */
        private Object f40971g;
        @p("sub")

        /* renamed from: h  reason: collision with root package name */
        private String f40972h;

        @Override // g5.b
        /* renamed from: j */
        public C0453b f() {
            return (C0453b) super.clone();
        }

        public final Long k() {
            return this.f40968d;
        }

        @Override // g5.b
        /* renamed from: l */
        public C0453b g(String str, Object obj) {
            return (C0453b) super.e(str, obj);
        }

        public C0453b m(Object obj) {
            this.f40971g = obj;
            return this;
        }

        public C0453b n(Long l10) {
            this.f40968d = l10;
            return this;
        }

        public C0453b o(Long l10) {
            this.f40969e = l10;
            return this;
        }

        public C0453b p(String str) {
            this.f40970f = str;
            return this;
        }

        public C0453b q(String str) {
            this.f40972h = str;
            return this;
        }
    }

    public b(a aVar, C0453b c0453b) {
        this.f40965a = (a) z.d(aVar);
        this.f40966b = (C0453b) z.d(c0453b);
    }

    public a a() {
        return this.f40965a;
    }

    public C0453b b() {
        return this.f40966b;
    }

    public String toString() {
        return x.b(this).a("header", this.f40965a).a("payload", this.f40966b).toString();
    }
}
