package com.google.common.cache;
/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final n f12411a = o.a();

    /* renamed from: b  reason: collision with root package name */
    private final n f12412b = o.a();

    /* renamed from: c  reason: collision with root package name */
    private final n f12413c = o.a();

    /* renamed from: d  reason: collision with root package name */
    private final n f12414d = o.a();

    /* renamed from: e  reason: collision with root package name */
    private final n f12415e = o.a();

    /* renamed from: f  reason: collision with root package name */
    private final n f12416f = o.a();

    @Override // com.google.common.cache.b
    public void a(int i9) {
        this.f12411a.add(i9);
    }

    @Override // com.google.common.cache.b
    public void b(int i9) {
        this.f12412b.add(i9);
    }

    @Override // com.google.common.cache.b
    public void c() {
        this.f12416f.increment();
    }

    @Override // com.google.common.cache.b
    public void d(long j10) {
        this.f12414d.increment();
        this.f12415e.add(j10);
    }

    @Override // com.google.common.cache.b
    public void e(long j10) {
        this.f12413c.increment();
        this.f12415e.add(j10);
    }
}
