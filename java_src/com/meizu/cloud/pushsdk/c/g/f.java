package com.meizu.cloud.pushsdk.c.g;

import java.io.IOException;
/* loaded from: classes4.dex */
public abstract class f implements l {

    /* renamed from: a  reason: collision with root package name */
    private final l f28484a;

    public f(l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f28484a = lVar;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l
    public void a(b bVar, long j10) throws IOException {
        this.f28484a.a(bVar, j10);
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Closeable, java.lang.AutoCloseable, com.meizu.cloud.pushsdk.c.g.m
    public void close() throws IOException {
        this.f28484a.close();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Flushable
    public void flush() throws IOException {
        this.f28484a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f28484a.toString() + ")";
    }
}
