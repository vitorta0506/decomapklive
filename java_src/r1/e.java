package r1;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final e f57383c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f57384a;

    /* renamed from: b  reason: collision with root package name */
    private final long f57385b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f57386a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f57387b = 0;

        a() {
        }

        public e a() {
            return new e(this.f57386a, this.f57387b);
        }

        public a b(long j10) {
            this.f57387b = j10;
            return this;
        }

        public a c(long j10) {
            this.f57386a = j10;
            return this;
        }
    }

    e(long j10, long j11) {
        this.f57384a = j10;
        this.f57385b = j11;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 2)
    public long a() {
        return this.f57385b;
    }

    @Protobuf(tag = 1)
    public long b() {
        return this.f57384a;
    }
}
