package io.opencensus.trace;

import io.opencensus.trace.NetworkEvent;
import java.util.Objects;
@Deprecated
/* loaded from: classes7.dex */
final class b extends NetworkEvent {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkEvent.Type f51288a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51289b;

    /* renamed from: c  reason: collision with root package name */
    private final long f51290c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51291d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0507b extends NetworkEvent.a {

        /* renamed from: a  reason: collision with root package name */
        private NetworkEvent.Type f51292a;

        /* renamed from: b  reason: collision with root package name */
        private Long f51293b;

        /* renamed from: c  reason: collision with root package name */
        private Long f51294c;

        /* renamed from: d  reason: collision with root package name */
        private Long f51295d;

        @Override // io.opencensus.trace.NetworkEvent.a
        public NetworkEvent a() {
            String str = "";
            if (this.f51292a == null) {
                str = " type";
            }
            if (this.f51293b == null) {
                str = str + " messageId";
            }
            if (this.f51294c == null) {
                str = str + " uncompressedMessageSize";
            }
            if (this.f51295d == null) {
                str = str + " compressedMessageSize";
            }
            if (str.isEmpty()) {
                return new b(null, this.f51292a, this.f51293b.longValue(), this.f51294c.longValue(), this.f51295d.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.NetworkEvent.a
        public NetworkEvent.a b(long j10) {
            this.f51295d = Long.valueOf(j10);
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.a
        NetworkEvent.a c(long j10) {
            this.f51293b = Long.valueOf(j10);
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.a
        public NetworkEvent.a d(long j10) {
            this.f51294c = Long.valueOf(j10);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public NetworkEvent.a e(NetworkEvent.Type type) {
            Objects.requireNonNull(type, "Null type");
            this.f51292a = type;
            return this;
        }
    }

    @Override // io.opencensus.trace.NetworkEvent
    public long b() {
        return this.f51291d;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public jh.b c() {
        return null;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public long d() {
        return this.f51289b;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public NetworkEvent.Type e() {
        return this.f51288a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NetworkEvent) {
            NetworkEvent networkEvent = (NetworkEvent) obj;
            networkEvent.c();
            return this.f51288a.equals(networkEvent.e()) && this.f51289b == networkEvent.d() && this.f51290c == networkEvent.f() && this.f51291d == networkEvent.b();
        }
        return false;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public long f() {
        return this.f51290c;
    }

    public int hashCode() {
        long j10 = this.f51289b;
        long j11 = this.f51290c;
        long hashCode = ((int) ((((int) ((((-721379959) ^ this.f51288a.hashCode()) * 1000003) ^ (j10 ^ (j10 >>> 32)))) * 1000003) ^ (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f51291d;
        return (int) (hashCode ^ (j12 ^ (j12 >>> 32)));
    }

    public String toString() {
        return "NetworkEvent{kernelTimestamp=" + ((Object) null) + ", type=" + this.f51288a + ", messageId=" + this.f51289b + ", uncompressedMessageSize=" + this.f51290c + ", compressedMessageSize=" + this.f51291d + "}";
    }

    private b(jh.b bVar, NetworkEvent.Type type, long j10, long j11, long j12) {
        this.f51288a = type;
        this.f51289b = j10;
        this.f51290c = j11;
        this.f51291d = j12;
    }
}
