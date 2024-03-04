package w1;

import w1.e;
/* loaded from: classes.dex */
final class a extends e {

    /* renamed from: b  reason: collision with root package name */
    private final long f59267b;

    /* renamed from: c  reason: collision with root package name */
    private final int f59268c;

    /* renamed from: d  reason: collision with root package name */
    private final int f59269d;

    /* renamed from: e  reason: collision with root package name */
    private final long f59270e;

    /* renamed from: f  reason: collision with root package name */
    private final int f59271f;

    /* loaded from: classes.dex */
    static final class b extends e.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f59272a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f59273b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f59274c;

        /* renamed from: d  reason: collision with root package name */
        private Long f59275d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f59276e;

        @Override // w1.e.a
        e a() {
            String str = "";
            if (this.f59272a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f59273b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f59274c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f59275d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f59276e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f59272a.longValue(), this.f59273b.intValue(), this.f59274c.intValue(), this.f59275d.longValue(), this.f59276e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // w1.e.a
        e.a b(int i9) {
            this.f59274c = Integer.valueOf(i9);
            return this;
        }

        @Override // w1.e.a
        e.a c(long j10) {
            this.f59275d = Long.valueOf(j10);
            return this;
        }

        @Override // w1.e.a
        e.a d(int i9) {
            this.f59273b = Integer.valueOf(i9);
            return this;
        }

        @Override // w1.e.a
        e.a e(int i9) {
            this.f59276e = Integer.valueOf(i9);
            return this;
        }

        @Override // w1.e.a
        e.a f(long j10) {
            this.f59272a = Long.valueOf(j10);
            return this;
        }
    }

    @Override // w1.e
    int b() {
        return this.f59269d;
    }

    @Override // w1.e
    long c() {
        return this.f59270e;
    }

    @Override // w1.e
    int d() {
        return this.f59268c;
    }

    @Override // w1.e
    int e() {
        return this.f59271f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.f59267b == eVar.f() && this.f59268c == eVar.d() && this.f59269d == eVar.b() && this.f59270e == eVar.c() && this.f59271f == eVar.e();
        }
        return false;
    }

    @Override // w1.e
    long f() {
        return this.f59267b;
    }

    public int hashCode() {
        long j10 = this.f59267b;
        long j11 = this.f59270e;
        return this.f59271f ^ ((((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f59268c) * 1000003) ^ this.f59269d) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f59267b + ", loadBatchSize=" + this.f59268c + ", criticalSectionEnterTimeoutMs=" + this.f59269d + ", eventCleanUpAge=" + this.f59270e + ", maxBlobByteSizePerRow=" + this.f59271f + "}";
    }

    private a(long j10, int i9, int i10, long j11, int i11) {
        this.f59267b = j10;
        this.f59268c = i9;
        this.f59269d = i10;
        this.f59270e = j11;
        this.f59271f = i11;
    }
}
