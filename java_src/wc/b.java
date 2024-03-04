package wc;

import com.linecorp.linesdk.LineIdToken;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: f  reason: collision with root package name */
    private static final long f59429f = TimeUnit.MINUTES.toMillis(5);

    /* renamed from: a  reason: collision with root package name */
    private final LineIdToken f59430a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59431b;

    /* renamed from: c  reason: collision with root package name */
    private final String f59432c;

    /* renamed from: d  reason: collision with root package name */
    private final String f59433d;

    /* renamed from: e  reason: collision with root package name */
    private final String f59434e;

    /* renamed from: wc.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0681b {

        /* renamed from: a  reason: collision with root package name */
        private LineIdToken f59435a;

        /* renamed from: b  reason: collision with root package name */
        private String f59436b;

        /* renamed from: c  reason: collision with root package name */
        private String f59437c;

        /* renamed from: d  reason: collision with root package name */
        private String f59438d;

        /* renamed from: e  reason: collision with root package name */
        private String f59439e;

        public b f() {
            return new b(this);
        }

        public C0681b g(String str) {
            this.f59438d = str;
            return this;
        }

        public C0681b h(String str) {
            this.f59436b = str;
            return this;
        }

        public C0681b i(String str) {
            this.f59439e = str;
            return this;
        }

        public C0681b j(String str) {
            this.f59437c = str;
            return this;
        }

        public C0681b k(LineIdToken lineIdToken) {
            this.f59435a = lineIdToken;
            return this;
        }
    }

    private static void a(String str, Object obj, Object obj2) {
        throw new RuntimeException(str + " expected: " + obj + ", but received: " + obj2);
    }

    private void c() {
        String a10 = this.f59430a.a();
        if (this.f59433d.equals(a10)) {
            return;
        }
        a("OpenId audience does not match.", this.f59433d, a10);
    }

    private void d() {
        String d10 = this.f59430a.d();
        if (this.f59431b.equals(d10)) {
            return;
        }
        a("OpenId issuer does not match.", this.f59431b, d10);
    }

    private void e() {
        String e10 = this.f59430a.e();
        String str = this.f59434e;
        if (str == null && e10 == null) {
            return;
        }
        if (str == null || !str.equals(e10)) {
            a("OpenId nonce does not match.", this.f59434e, e10);
        }
    }

    private void f() {
        String f10 = this.f59430a.f();
        String str = this.f59432c;
        if (str == null || str.equals(f10)) {
            return;
        }
        a("OpenId subject does not match.", this.f59432c, f10);
    }

    private void g() {
        Date date = new Date();
        long time = this.f59430a.c().getTime();
        long time2 = date.getTime();
        long j10 = f59429f;
        if (time <= time2 + j10) {
            if (this.f59430a.b().getTime() >= date.getTime() - j10) {
                return;
            }
            throw new RuntimeException("OpenId expiresAt is before current time: " + this.f59430a.b());
        }
        throw new RuntimeException("OpenId issuedAt is after current time: " + this.f59430a.c());
    }

    public void b() {
        d();
        f();
        c();
        e();
        g();
    }

    private b(C0681b c0681b) {
        this.f59430a = c0681b.f59435a;
        this.f59431b = c0681b.f59436b;
        this.f59432c = c0681b.f59437c;
        this.f59433d = c0681b.f59438d;
        this.f59434e = c0681b.f59439e;
    }
}
