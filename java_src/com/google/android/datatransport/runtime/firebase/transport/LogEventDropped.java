package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes.dex */
public final class LogEventDropped {

    /* renamed from: c  reason: collision with root package name */
    private static final LogEventDropped f5342c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f5343a;

    /* renamed from: b  reason: collision with root package name */
    private final Reason f5344b;

    /* loaded from: classes.dex */
    public enum Reason implements g6.a {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);
        
        private final int number_;

        Reason(int i9) {
            this.number_ = i9;
        }

        @Override // g6.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f5345a = 0;

        /* renamed from: b  reason: collision with root package name */
        private Reason f5346b = Reason.REASON_UNKNOWN;

        a() {
        }

        public LogEventDropped a() {
            return new LogEventDropped(this.f5345a, this.f5346b);
        }

        public a b(long j10) {
            this.f5345a = j10;
            return this;
        }

        public a c(Reason reason) {
            this.f5346b = reason;
            return this;
        }
    }

    LogEventDropped(long j10, Reason reason) {
        this.f5343a = j10;
        this.f5344b = reason;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 1)
    public long a() {
        return this.f5343a;
    }

    @Protobuf(tag = 3)
    public Reason b() {
        return this.f5344b;
    }
}
