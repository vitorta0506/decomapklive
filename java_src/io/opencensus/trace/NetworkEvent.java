package io.opencensus.trace;

import io.opencensus.trace.b;
@Deprecated
/* loaded from: classes7.dex */
public abstract class NetworkEvent extends c {

    /* loaded from: classes7.dex */
    public enum Type {
        SENT,
        RECV
    }

    @Deprecated
    /* loaded from: classes7.dex */
    public static abstract class a {
        public abstract NetworkEvent a();

        public abstract a b(long j10);

        abstract a c(long j10);

        public abstract a d(long j10);
    }

    public static a a(Type type, long j10) {
        return new b.C0507b().e((Type) lh.b.b(type, "type")).c(j10).d(0L).b(0L);
    }

    public abstract long b();

    public abstract jh.b c();

    public abstract long d();

    public abstract Type e();

    public abstract long f();
}
