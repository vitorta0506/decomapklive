package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
/* loaded from: classes2.dex */
public abstract class l3<C extends Comparable> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f13213a;

    /* loaded from: classes2.dex */
    private static final class b extends l3<Integer> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final b f13214b = new b();
        private static final long serialVersionUID = 0;

        b() {
            super(true);
        }

        private Object readResolve() {
            return f13214b;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: j */
        public long a(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.l3
        /* renamed from: k */
        public Integer d() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: l */
        public Integer e() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: m */
        public Integer f(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3
        /* renamed from: n */
        public Integer g(Integer num, long j10) {
            p2.c(j10, "distance");
            return Integer.valueOf(com.google.common.primitives.f.d(num.longValue() + j10));
        }

        @Override // com.google.common.collect.l3
        /* renamed from: o */
        public Integer h(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    /* loaded from: classes2.dex */
    private static final class c extends l3<Long> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final c f13215b = new c();
        private static final long serialVersionUID = 0;

        c() {
            super(true);
        }

        private Object readResolve() {
            return f13215b;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: j */
        public long a(Long l10, Long l11) {
            long longValue = l11.longValue() - l10.longValue();
            if (l11.longValue() <= l10.longValue() || longValue >= 0) {
                if (l11.longValue() >= l10.longValue() || longValue <= 0) {
                    return longValue;
                }
                return Long.MIN_VALUE;
            }
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: k */
        public Long d() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: l */
        public Long e() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.l3
        /* renamed from: m */
        public Long f(Long l10) {
            long longValue = l10.longValue();
            if (longValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(longValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3
        /* renamed from: n */
        public Long g(Long l10, long j10) {
            p2.c(j10, "distance");
            long longValue = l10.longValue() + j10;
            if (longValue < 0) {
                com.google.common.base.o.e(l10.longValue() < 0, "overflow");
            }
            return Long.valueOf(longValue);
        }

        @Override // com.google.common.collect.l3
        /* renamed from: o */
        public Long h(Long l10) {
            long longValue = l10.longValue();
            if (longValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(longValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    public static l3<Integer> b() {
        return b.f13214b;
    }

    public static l3<Long> c() {
        return c.f13215b;
    }

    public abstract long a(C c10, C c11);

    public abstract C d();

    public abstract C e();

    public abstract C f(C c10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract C g(C c10, long j10);

    public abstract C h(C c10);

    protected l3() {
        this(false);
    }

    private l3(boolean z10) {
        this.f13213a = z10;
    }
}
