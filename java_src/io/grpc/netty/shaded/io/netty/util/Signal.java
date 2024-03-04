package io.grpc.netty.shaded.io.netty.util;
/* loaded from: classes5.dex */
public final class Signal extends Error implements i<Signal> {
    private static final j<Signal> pool = new a();
    private static final long serialVersionUID = -221145131122459977L;
    private final b constant;

    /* loaded from: classes5.dex */
    static class a extends j<Signal> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.util.j
        /* renamed from: f */
        public Signal b(int i9, String str) {
            return new Signal(i9, str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends io.grpc.netty.shaded.io.netty.util.a<b> {
        b(int i9, String str) {
            super(i9, str);
        }
    }

    /* synthetic */ Signal(int i9, String str, a aVar) {
        this(i9, str);
    }

    public static Signal valueOf(String str) {
        return pool.e(str);
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public void expect(Signal signal) {
        if (this == signal) {
            return;
        }
        throw new IllegalStateException("unexpected signal: " + signal);
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public int id() {
        return this.constant.b();
    }

    @Override // java.lang.Throwable
    public Throwable initCause(Throwable th2) {
        return this;
    }

    public String name() {
        return this.constant.c();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return name();
    }

    private Signal(int i9, String str) {
        this.constant = new b(i9, str);
    }

    public static Signal valueOf(Class<?> cls, String str) {
        return pool.d(cls, str);
    }

    @Override // java.lang.Comparable
    public int compareTo(Signal signal) {
        if (this == signal) {
            return 0;
        }
        return this.constant.compareTo(signal.constant);
    }
}
