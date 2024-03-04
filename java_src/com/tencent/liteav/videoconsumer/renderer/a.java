package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    protected long f32353a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected long f32354b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected long f32355c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected long f32356d = 0;

    /* renamed from: e  reason: collision with root package name */
    protected long f32357e = 0;

    /* renamed from: f  reason: collision with root package name */
    protected final long f32358f = Math.max(200L, 200L);

    /* renamed from: g  reason: collision with root package name */
    private InterfaceC0331a f32359g;

    /* renamed from: com.tencent.liteav.videoconsumer.renderer.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0331a {
        void a(long j10);
    }

    public a(InterfaceC0331a interfaceC0331a) {
        this.f32359g = interfaceC0331a;
    }

    public final void a(long j10) {
        if (j10 == 0) {
            this.f32357e = 0L;
            return;
        }
        long j11 = this.f32357e;
        if (j11 != 0) {
            long j12 = j10 - j11;
            if (j12 > this.f32358f) {
                this.f32354b++;
                InterfaceC0331a interfaceC0331a = this.f32359g;
                if (interfaceC0331a != null) {
                    interfaceC0331a.a(j12);
                }
                long j13 = this.f32355c + j12;
                this.f32355c = j13;
                if (this.f32353a < j12) {
                    this.f32353a = j12;
                }
                long j14 = this.f32354b;
                if (j14 != 0) {
                    this.f32356d = j13 / j14;
                }
            }
        }
        this.f32357e = j10;
    }
}
