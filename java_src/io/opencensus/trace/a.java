package io.opencensus.trace;

import io.opencensus.trace.MessageEvent;
import java.util.Objects;
/* loaded from: classes7.dex */
final class a extends MessageEvent {

    /* renamed from: a  reason: collision with root package name */
    private final MessageEvent.Type f51280a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51281b;

    /* renamed from: c  reason: collision with root package name */
    private final long f51282c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51283d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b extends MessageEvent.a {

        /* renamed from: a  reason: collision with root package name */
        private MessageEvent.Type f51284a;

        /* renamed from: b  reason: collision with root package name */
        private Long f51285b;

        /* renamed from: c  reason: collision with root package name */
        private Long f51286c;

        /* renamed from: d  reason: collision with root package name */
        private Long f51287d;

        @Override // io.opencensus.trace.MessageEvent.a
        public MessageEvent a() {
            String str = "";
            if (this.f51284a == null) {
                str = " type";
            }
            if (this.f51285b == null) {
                str = str + " messageId";
            }
            if (this.f51286c == null) {
                str = str + " uncompressedMessageSize";
            }
            if (this.f51287d == null) {
                str = str + " compressedMessageSize";
            }
            if (str.isEmpty()) {
                return new a(this.f51284a, this.f51285b.longValue(), this.f51286c.longValue(), this.f51287d.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.MessageEvent.a
        public MessageEvent.a b(long j10) {
            this.f51287d = Long.valueOf(j10);
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.a
        MessageEvent.a c(long j10) {
            this.f51285b = Long.valueOf(j10);
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.a
        public MessageEvent.a d(long j10) {
            this.f51286c = Long.valueOf(j10);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public MessageEvent.a e(MessageEvent.Type type) {
            Objects.requireNonNull(type, "Null type");
            this.f51284a = type;
            return this;
        }
    }

    @Override // io.opencensus.trace.MessageEvent
    public long b() {
        return this.f51283d;
    }

    @Override // io.opencensus.trace.MessageEvent
    public long c() {
        return this.f51281b;
    }

    @Override // io.opencensus.trace.MessageEvent
    public MessageEvent.Type d() {
        return this.f51280a;
    }

    @Override // io.opencensus.trace.MessageEvent
    public long e() {
        return this.f51282c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MessageEvent) {
            MessageEvent messageEvent = (MessageEvent) obj;
            return this.f51280a.equals(messageEvent.d()) && this.f51281b == messageEvent.c() && this.f51282c == messageEvent.e() && this.f51283d == messageEvent.b();
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f51281b;
        long j11 = this.f51282c;
        long hashCode = ((int) ((((int) (((this.f51280a.hashCode() ^ 1000003) * 1000003) ^ (j10 ^ (j10 >>> 32)))) * 1000003) ^ (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f51283d;
        return (int) (hashCode ^ (j12 ^ (j12 >>> 32)));
    }

    public String toString() {
        return "MessageEvent{type=" + this.f51280a + ", messageId=" + this.f51281b + ", uncompressedMessageSize=" + this.f51282c + ", compressedMessageSize=" + this.f51283d + "}";
    }

    private a(MessageEvent.Type type, long j10, long j11, long j12) {
        this.f51280a = type;
        this.f51281b = j10;
        this.f51282c = j11;
        this.f51283d = j12;
    }
}
