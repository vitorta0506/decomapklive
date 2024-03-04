package io.grpc;
/* loaded from: classes5.dex */
public final class InternalChannelz$ChannelTrace$Event {

    /* renamed from: a  reason: collision with root package name */
    public final String f41667a;

    /* renamed from: b  reason: collision with root package name */
    public final Severity f41668b;

    /* renamed from: c  reason: collision with root package name */
    public final long f41669c;

    /* renamed from: d  reason: collision with root package name */
    public final l0 f41670d;

    /* renamed from: e  reason: collision with root package name */
    public final l0 f41671e;

    /* loaded from: classes5.dex */
    public enum Severity {
        CT_UNKNOWN,
        CT_INFO,
        CT_WARNING,
        CT_ERROR
    }

    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f41672a;

        /* renamed from: b  reason: collision with root package name */
        private Severity f41673b;

        /* renamed from: c  reason: collision with root package name */
        private Long f41674c;

        /* renamed from: d  reason: collision with root package name */
        private l0 f41675d;

        /* renamed from: e  reason: collision with root package name */
        private l0 f41676e;

        public InternalChannelz$ChannelTrace$Event a() {
            com.google.common.base.o.t(this.f41672a, "description");
            com.google.common.base.o.t(this.f41673b, "severity");
            com.google.common.base.o.t(this.f41674c, "timestampNanos");
            com.google.common.base.o.A(this.f41675d == null || this.f41676e == null, "at least one of channelRef and subchannelRef must be null");
            return new InternalChannelz$ChannelTrace$Event(this.f41672a, this.f41673b, this.f41674c.longValue(), this.f41675d, this.f41676e);
        }

        public a b(l0 l0Var) {
            this.f41675d = l0Var;
            return this;
        }

        public a c(String str) {
            this.f41672a = str;
            return this;
        }

        public a d(Severity severity) {
            this.f41673b = severity;
            return this;
        }

        public a e(l0 l0Var) {
            this.f41676e = l0Var;
            return this;
        }

        public a f(long j10) {
            this.f41674c = Long.valueOf(j10);
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof InternalChannelz$ChannelTrace$Event) {
            InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event = (InternalChannelz$ChannelTrace$Event) obj;
            return com.google.common.base.l.a(this.f41667a, internalChannelz$ChannelTrace$Event.f41667a) && com.google.common.base.l.a(this.f41668b, internalChannelz$ChannelTrace$Event.f41668b) && this.f41669c == internalChannelz$ChannelTrace$Event.f41669c && com.google.common.base.l.a(this.f41670d, internalChannelz$ChannelTrace$Event.f41670d) && com.google.common.base.l.a(this.f41671e, internalChannelz$ChannelTrace$Event.f41671e);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f41667a, this.f41668b, Long.valueOf(this.f41669c), this.f41670d, this.f41671e);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("description", this.f41667a).d("severity", this.f41668b).c("timestampNanos", this.f41669c).d("channelRef", this.f41670d).d("subchannelRef", this.f41671e).toString();
    }

    private InternalChannelz$ChannelTrace$Event(String str, Severity severity, long j10, l0 l0Var, l0 l0Var2) {
        this.f41667a = str;
        this.f41668b = (Severity) com.google.common.base.o.t(severity, "severity");
        this.f41669c = j10;
        this.f41670d = l0Var;
        this.f41671e = l0Var2;
    }
}
