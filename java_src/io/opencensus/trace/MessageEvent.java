package io.opencensus.trace;

import io.opencensus.trace.a;
/* loaded from: classes7.dex */
public abstract class MessageEvent extends c {

    /* loaded from: classes7.dex */
    public enum Type {
        SENT,
        RECEIVED
    }

    /* loaded from: classes7.dex */
    public static abstract class a {
        public abstract MessageEvent a();

        public abstract a b(long j10);

        abstract a c(long j10);

        public abstract a d(long j10);
    }

    public static a a(Type type, long j10) {
        return new a.b().e((Type) lh.b.b(type, "type")).c(j10).d(0L).b(0L);
    }

    public abstract long b();

    public abstract long c();

    public abstract Type d();

    public abstract long e();
}
