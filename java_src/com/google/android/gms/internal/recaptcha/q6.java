package com.google.android.gms.internal.recaptcha;

import java.io.Closeable;
/* loaded from: classes2.dex */
public final class q6 implements Runnable, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private u6 f8998a;

    /* renamed from: b  reason: collision with root package name */
    private u6 f8999b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f9000c = h2.b();

    /* renamed from: d  reason: collision with root package name */
    private boolean f9001d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9002e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q6(u6 u6Var) {
        this.f8998a = u6Var;
        this.f8999b = u6Var;
    }

    private final void c() {
        this.f9001d = true;
        if (this.f9000c && !this.f9002e) {
            h2.b();
        }
        this.f8998a = null;
    }

    public final <V, T extends nd<V>> T b(T t10) {
        if (!this.f9001d) {
            if (!this.f9002e) {
                this.f9002e = true;
                t10.F(this, ud.b());
                return t10;
            }
            throw new IllegalStateException("Signal is already attached to future");
        }
        throw new IllegalStateException("Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        u6 u6Var = this.f8999b;
        this.f8999b = null;
        try {
            if (!this.f9002e) {
                if (!this.f9001d) {
                    c();
                } else {
                    throw new IllegalStateException("Span was already closed!");
                }
            }
        } finally {
            d7.f(u6Var);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f9001d && this.f9002e) {
            c();
            return;
        }
        h2.a().post(new Runnable() { // from class: com.google.android.gms.internal.recaptcha.p6
            @Override // java.lang.Runnable
            public final void run() {
                throw new IllegalStateException("Span was closed by an invalid call to SpanEndSignal.run()");
            }
        });
    }
}
