package l5;

import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import l5.m;
/* loaded from: classes2.dex */
final class c extends m {

    /* renamed from: b  reason: collision with root package name */
    private final int f54202b;

    /* renamed from: c  reason: collision with root package name */
    private final ThreadFactory f54203c;

    /* loaded from: classes2.dex */
    static final class b extends m.b {

        /* renamed from: a  reason: collision with root package name */
        private Integer f54204a;

        /* renamed from: b  reason: collision with root package name */
        private ThreadFactory f54205b;

        @Override // l5.m.b
        public m a() {
            if (this.f54204a != null && this.f54205b != null) {
                return new c(this.f54204a.intValue(), this.f54205b);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f54204a == null) {
                sb2.append(" executorThreadCount");
            }
            if (this.f54205b == null) {
                sb2.append(" threadFactory");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // l5.m.b
        public m.b b(ThreadFactory threadFactory) {
            Objects.requireNonNull(threadFactory, "Null threadFactory");
            this.f54205b = threadFactory;
            return this;
        }

        public m.b c(int i9) {
            this.f54204a = Integer.valueOf(i9);
            return this;
        }
    }

    @Override // l5.m
    public int c() {
        return this.f54202b;
    }

    @Override // l5.m
    public ThreadFactory d() {
        return this.f54203c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            return this.f54202b == mVar.c() && this.f54203c.equals(mVar.d());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f54202b ^ 1000003) * 1000003) ^ this.f54203c.hashCode();
    }

    public String toString() {
        return "InstantiatingExecutorProvider{executorThreadCount=" + this.f54202b + ", threadFactory=" + this.f54203c + "}";
    }

    private c(int i9, ThreadFactory threadFactory) {
        this.f54202b = i9;
        this.f54203c = threadFactory;
    }
}
