package com.google.longrunning;

import l5.d;
/* loaded from: classes2.dex */
public class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final u6.b f14254a;

    protected b(u6.b bVar) {
        this.f14254a = bVar;
    }

    public static final b a(u6.b bVar) {
        return new b(bVar);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f14254a.close();
    }

    @Override // l5.d
    public boolean isShutdown() {
        return this.f14254a.isShutdown();
    }

    @Override // l5.d
    public void shutdown() {
        this.f14254a.shutdown();
    }
}
