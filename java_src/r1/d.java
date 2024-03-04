package r1;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private static final d f57378c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f57379a;

    /* renamed from: b  reason: collision with root package name */
    private final long f57380b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f57381a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f57382b = 0;

        a() {
        }

        public d a() {
            return new d(this.f57381a, this.f57382b);
        }

        public a b(long j10) {
            this.f57381a = j10;
            return this;
        }

        public a c(long j10) {
            this.f57382b = j10;
            return this;
        }
    }

    d(long j10, long j11) {
        this.f57379a = j10;
        this.f57380b = j11;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 1)
    public long a() {
        return this.f57379a;
    }

    @Protobuf(tag = 2)
    public long b() {
        return this.f57380b;
    }
}
