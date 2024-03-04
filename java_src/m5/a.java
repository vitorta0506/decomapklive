package m5;

import m5.k;
/* loaded from: classes2.dex */
final class a extends k {

    /* renamed from: b  reason: collision with root package name */
    private final int f54781b;

    /* renamed from: c  reason: collision with root package name */
    private final int f54782c;

    /* renamed from: d  reason: collision with root package name */
    private final int f54783d;

    /* renamed from: e  reason: collision with root package name */
    private final int f54784e;

    /* renamed from: f  reason: collision with root package name */
    private final int f54785f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f54786g;

    /* loaded from: classes2.dex */
    static final class b extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private Integer f54787a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f54788b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f54789c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f54790d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f54791e;

        /* renamed from: f  reason: collision with root package name */
        private Boolean f54792f;

        @Override // m5.k.a
        k a() {
            if (this.f54787a != null && this.f54788b != null && this.f54789c != null && this.f54790d != null && this.f54791e != null && this.f54792f != null) {
                return new a(this.f54787a.intValue(), this.f54788b.intValue(), this.f54789c.intValue(), this.f54790d.intValue(), this.f54791e.intValue(), this.f54792f.booleanValue());
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f54787a == null) {
                sb2.append(" minRpcsPerChannel");
            }
            if (this.f54788b == null) {
                sb2.append(" maxRpcsPerChannel");
            }
            if (this.f54789c == null) {
                sb2.append(" minChannelCount");
            }
            if (this.f54790d == null) {
                sb2.append(" maxChannelCount");
            }
            if (this.f54791e == null) {
                sb2.append(" initialChannelCount");
            }
            if (this.f54792f == null) {
                sb2.append(" preemptiveRefreshEnabled");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // m5.k.a
        public k.a c(int i9) {
            this.f54791e = Integer.valueOf(i9);
            return this;
        }

        @Override // m5.k.a
        public k.a d(int i9) {
            this.f54790d = Integer.valueOf(i9);
            return this;
        }

        @Override // m5.k.a
        public k.a e(int i9) {
            this.f54788b = Integer.valueOf(i9);
            return this;
        }

        @Override // m5.k.a
        public k.a f(int i9) {
            this.f54789c = Integer.valueOf(i9);
            return this;
        }

        @Override // m5.k.a
        public k.a g(int i9) {
            this.f54787a = Integer.valueOf(i9);
            return this;
        }

        @Override // m5.k.a
        public k.a h(boolean z10) {
            this.f54792f = Boolean.valueOf(z10);
            return this;
        }
    }

    @Override // m5.k
    public int b() {
        return this.f54785f;
    }

    @Override // m5.k
    public int c() {
        return this.f54784e;
    }

    @Override // m5.k
    public int d() {
        return this.f54782c;
    }

    @Override // m5.k
    public int e() {
        return this.f54783d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            return this.f54781b == kVar.f() && this.f54782c == kVar.d() && this.f54783d == kVar.e() && this.f54784e == kVar.c() && this.f54785f == kVar.b() && this.f54786g == kVar.g();
        }
        return false;
    }

    @Override // m5.k
    public int f() {
        return this.f54781b;
    }

    @Override // m5.k
    public boolean g() {
        return this.f54786g;
    }

    public int hashCode() {
        return ((((((((((this.f54781b ^ 1000003) * 1000003) ^ this.f54782c) * 1000003) ^ this.f54783d) * 1000003) ^ this.f54784e) * 1000003) ^ this.f54785f) * 1000003) ^ (this.f54786g ? 1231 : 1237);
    }

    public String toString() {
        return "ChannelPoolSettings{minRpcsPerChannel=" + this.f54781b + ", maxRpcsPerChannel=" + this.f54782c + ", minChannelCount=" + this.f54783d + ", maxChannelCount=" + this.f54784e + ", initialChannelCount=" + this.f54785f + ", preemptiveRefreshEnabled=" + this.f54786g + "}";
    }

    private a(int i9, int i10, int i11, int i12, int i13, boolean z10) {
        this.f54781b = i9;
        this.f54782c = i10;
        this.f54783d = i11;
        this.f54784e = i12;
        this.f54785f = i13;
        this.f54786g = z10;
    }
}
