package com.google.android.play.core.internal;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class f1 extends e1 {

    /* renamed from: a  reason: collision with root package name */
    private final e1 f10566a;

    /* renamed from: b  reason: collision with root package name */
    private final long f10567b;

    /* renamed from: c  reason: collision with root package name */
    private final long f10568c;

    public f1(e1 e1Var, long j10, long j11) {
        this.f10566a = e1Var;
        long d10 = d(j10);
        this.f10567b = d10;
        this.f10568c = d(d10 + j11);
    }

    private final long d(long j10) {
        if (j10 < 0) {
            return 0L;
        }
        return j10 > this.f10566a.a() ? this.f10566a.a() : j10;
    }

    @Override // com.google.android.play.core.internal.e1
    public final long a() {
        return this.f10568c - this.f10567b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.e1
    public final InputStream b(long j10, long j11) throws IOException {
        long d10 = d(this.f10567b);
        return this.f10566a.b(d10, d(j11 + d10) - d10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
