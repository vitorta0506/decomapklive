package k3;

import java.util.Arrays;
/* loaded from: classes2.dex */
final class e {

    /* renamed from: c  reason: collision with root package name */
    private boolean f53534c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f53535d;

    /* renamed from: f  reason: collision with root package name */
    private int f53537f;

    /* renamed from: a  reason: collision with root package name */
    private a f53532a = new a();

    /* renamed from: b  reason: collision with root package name */
    private a f53533b = new a();

    /* renamed from: e  reason: collision with root package name */
    private long f53536e = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f53538a;

        /* renamed from: b  reason: collision with root package name */
        private long f53539b;

        /* renamed from: c  reason: collision with root package name */
        private long f53540c;

        /* renamed from: d  reason: collision with root package name */
        private long f53541d;

        /* renamed from: e  reason: collision with root package name */
        private long f53542e;

        /* renamed from: f  reason: collision with root package name */
        private long f53543f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean[] f53544g = new boolean[15];

        /* renamed from: h  reason: collision with root package name */
        private int f53545h;

        private static int c(long j10) {
            return (int) (j10 % 15);
        }

        public long a() {
            long j10 = this.f53542e;
            if (j10 == 0) {
                return 0L;
            }
            return this.f53543f / j10;
        }

        public long b() {
            return this.f53543f;
        }

        public boolean d() {
            long j10 = this.f53541d;
            if (j10 == 0) {
                return false;
            }
            return this.f53544g[c(j10 - 1)];
        }

        public boolean e() {
            return this.f53541d > 15 && this.f53545h == 0;
        }

        public void f(long j10) {
            long j11 = this.f53541d;
            if (j11 == 0) {
                this.f53538a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f53538a;
                this.f53539b = j12;
                this.f53543f = j12;
                this.f53542e = 1L;
            } else {
                long j13 = j10 - this.f53540c;
                int c10 = c(j11);
                if (Math.abs(j13 - this.f53539b) <= 1000000) {
                    this.f53542e++;
                    this.f53543f += j13;
                    boolean[] zArr = this.f53544g;
                    if (zArr[c10]) {
                        zArr[c10] = false;
                        this.f53545h--;
                    }
                } else {
                    boolean[] zArr2 = this.f53544g;
                    if (!zArr2[c10]) {
                        zArr2[c10] = true;
                        this.f53545h++;
                    }
                }
            }
            this.f53541d++;
            this.f53540c = j10;
        }

        public void g() {
            this.f53541d = 0L;
            this.f53542e = 0L;
            this.f53543f = 0L;
            this.f53545h = 0;
            Arrays.fill(this.f53544g, false);
        }
    }

    public long a() {
        if (e()) {
            return this.f53532a.a();
        }
        return -9223372036854775807L;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f53532a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f53537f;
    }

    public long d() {
        if (e()) {
            return this.f53532a.b();
        }
        return -9223372036854775807L;
    }

    public boolean e() {
        return this.f53532a.e();
    }

    public void f(long j10) {
        this.f53532a.f(j10);
        if (this.f53532a.e() && !this.f53535d) {
            this.f53534c = false;
        } else if (this.f53536e != -9223372036854775807L) {
            if (!this.f53534c || this.f53533b.d()) {
                this.f53533b.g();
                this.f53533b.f(this.f53536e);
            }
            this.f53534c = true;
            this.f53533b.f(j10);
        }
        if (this.f53534c && this.f53533b.e()) {
            a aVar = this.f53532a;
            this.f53532a = this.f53533b;
            this.f53533b = aVar;
            this.f53534c = false;
            this.f53535d = false;
        }
        this.f53536e = j10;
        this.f53537f = this.f53532a.e() ? 0 : this.f53537f + 1;
    }

    public void g() {
        this.f53532a.g();
        this.f53533b.g();
        this.f53534c = false;
        this.f53536e = -9223372036854775807L;
        this.f53537f = 0;
    }
}
