package io.grpc.internal;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f42750c = Logger.getLogger(h.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final String f42751a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f42752b;

    /* loaded from: classes5.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private final long f42753a;

        public void a() {
            long j10 = this.f42753a;
            long max = Math.max(2 * j10, j10);
            if (h.this.f42752b.compareAndSet(this.f42753a, max)) {
                h.f42750c.log(Level.WARNING, "Increased {0} to {1}", new Object[]{h.this.f42751a, Long.valueOf(max)});
            }
        }

        public long b() {
            return this.f42753a;
        }

        private b(long j10) {
            this.f42753a = j10;
        }
    }

    public h(String str, long j10) {
        AtomicLong atomicLong = new AtomicLong();
        this.f42752b = atomicLong;
        com.google.common.base.o.e(j10 > 0, "value must be positive");
        this.f42751a = str;
        atomicLong.set(j10);
    }

    public b d() {
        return new b(this.f42752b.get());
    }
}
