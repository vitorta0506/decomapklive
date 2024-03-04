package qe;

import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final Request f57190a;

    /* renamed from: b  reason: collision with root package name */
    public final Response f57191b;

    /* renamed from: qe.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0624b {

        /* renamed from: a  reason: collision with root package name */
        final long f57192a;

        /* renamed from: b  reason: collision with root package name */
        final Request f57193b;

        /* renamed from: c  reason: collision with root package name */
        final Response f57194c;

        /* renamed from: d  reason: collision with root package name */
        private Date f57195d;

        /* renamed from: e  reason: collision with root package name */
        private String f57196e;

        /* renamed from: f  reason: collision with root package name */
        private Date f57197f;

        /* renamed from: g  reason: collision with root package name */
        private String f57198g;

        /* renamed from: h  reason: collision with root package name */
        private Date f57199h;

        /* renamed from: i  reason: collision with root package name */
        private long f57200i;

        /* renamed from: j  reason: collision with root package name */
        private long f57201j;

        /* renamed from: k  reason: collision with root package name */
        private String f57202k;

        /* renamed from: l  reason: collision with root package name */
        private int f57203l;

        public C0624b(long j10, Request request, Response response) {
            this.f57203l = -1;
            this.f57192a = j10;
            this.f57193b = request;
            this.f57194c = response;
            if (response != null) {
                Headers headers = response.headers();
                int size = headers.size();
                for (int i9 = 0; i9 < size; i9++) {
                    String name = headers.name(i9);
                    String value = headers.value(i9);
                    if ("Date".equalsIgnoreCase(name)) {
                        this.f57195d = f.b(value);
                        this.f57196e = value;
                    } else if ("Expires".equalsIgnoreCase(name)) {
                        this.f57199h = f.b(value);
                    } else if ("Last-Modified".equalsIgnoreCase(name)) {
                        this.f57197f = f.b(value);
                        this.f57198g = value;
                    } else if ("ETag".equalsIgnoreCase(name)) {
                        this.f57202k = value;
                    } else if ("Age".equalsIgnoreCase(name)) {
                        this.f57203l = c.a(value, -1);
                    } else if (i.f57277c.equalsIgnoreCase(name)) {
                        this.f57200i = Long.parseLong(value);
                    } else if (i.f57278d.equalsIgnoreCase(name)) {
                        this.f57201j = Long.parseLong(value);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f57195d;
            long max = date != null ? Math.max(0L, this.f57201j - date.getTime()) : 0L;
            int i9 = this.f57203l;
            if (i9 != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i9));
            }
            long j10 = this.f57201j;
            return max + (j10 - this.f57200i) + (this.f57192a - j10);
        }

        private long b() {
            CacheControl cacheControl = this.f57194c.cacheControl();
            if (cacheControl.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
            }
            if (this.f57199h != null) {
                Date date = this.f57195d;
                long time = this.f57199h.getTime() - (date != null ? date.getTime() : this.f57201j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            } else if (this.f57197f == null || this.f57194c.request().httpUrl().query() != null) {
                return 0L;
            } else {
                Date date2 = this.f57195d;
                long time2 = (date2 != null ? date2.getTime() : this.f57200i) - this.f57197f.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
                return 0L;
            }
        }

        private b d() {
            if (this.f57194c == null) {
                return new b(this.f57193b, null);
            }
            if (this.f57193b.isHttps() && this.f57194c.handshake() == null) {
                return new b(this.f57193b, null);
            }
            if (!b.a(this.f57194c, this.f57193b)) {
                return new b(this.f57193b, null);
            }
            CacheControl cacheControl = this.f57193b.cacheControl();
            if (!cacheControl.noCache() && !e(this.f57193b)) {
                long a10 = a();
                long b10 = b();
                if (cacheControl.maxAgeSeconds() != -1) {
                    b10 = Math.min(b10, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                }
                long j10 = 0;
                long millis = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
                CacheControl cacheControl2 = this.f57194c.cacheControl();
                if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                }
                if (!cacheControl2.noCache()) {
                    long j11 = millis + a10;
                    if (j11 < j10 + b10) {
                        Response.Builder newBuilder = this.f57194c.newBuilder();
                        if (j11 >= b10) {
                            newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (a10 > 86400000 && f()) {
                            newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new b(null, newBuilder.build());
                    }
                }
                Request.Builder newBuilder2 = this.f57193b.newBuilder();
                String str = this.f57202k;
                if (str != null) {
                    newBuilder2.header("If-None-Match", str);
                } else if (this.f57197f != null) {
                    newBuilder2.header("If-Modified-Since", this.f57198g);
                } else if (this.f57195d != null) {
                    newBuilder2.header("If-Modified-Since", this.f57196e);
                }
                Request build = newBuilder2.build();
                return e(build) ? new b(build, this.f57194c) : new b(build, null);
            }
            return new b(this.f57193b, null);
        }

        private static boolean e(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        private boolean f() {
            return this.f57194c.cacheControl().maxAgeSeconds() == -1 && this.f57199h == null;
        }

        public b c() {
            b d10 = d();
            return (d10.f57190a == null || !this.f57193b.cacheControl().onlyIfCached()) ? d10 : new b(null, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
        if (r3.cacheControl().isPrivate() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.squareup.okhttp.Response r3, com.squareup.okhttp.Request r4) {
        /*
            int r0 = r3.code()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.header(r0)
            if (r0 != 0) goto L5a
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            int r0 = r0.maxAgeSeconds()
            r1 = -1
            if (r0 != r1) goto L5a
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.isPublic()
            if (r0 != 0) goto L5a
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.isPrivate()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            com.squareup.okhttp.CacheControl r3 = r3.cacheControl()
            boolean r3 = r3.noStore()
            if (r3 != 0) goto L6f
            com.squareup.okhttp.CacheControl r3 = r4.cacheControl()
            boolean r3 = r3.noStore()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: qe.b.a(com.squareup.okhttp.Response, com.squareup.okhttp.Request):boolean");
    }

    private b(Request request, Response response) {
        this.f57190a = request;
        this.f57191b = response;
    }
}
