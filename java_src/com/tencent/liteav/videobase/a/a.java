package com.tencent.liteav.videobase.a;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    boolean f31665a = false;

    public abstract com.tencent.liteav.videobase.frame.d a(long j10, com.tencent.liteav.videobase.frame.d dVar);

    public final void a(com.tencent.liteav.videobase.frame.e eVar) {
        if (this.f31665a) {
            return;
        }
        b(eVar);
        this.f31665a = true;
    }

    protected void b() {
    }

    protected void b(com.tencent.liteav.videobase.frame.e eVar) {
    }

    public final void a() {
        if (this.f31665a) {
            b();
            this.f31665a = false;
        }
    }
}
