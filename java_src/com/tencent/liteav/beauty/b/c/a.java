package com.tencent.liteav.beauty.b.c;

import androidx.annotation.NonNull;
import com.tencent.liteav.beauty.b.m;
import com.tencent.liteav.videobase.a.h;
import com.tencent.liteav.videobase.frame.e;
/* loaded from: classes4.dex */
public final class a extends h implements com.tencent.liteav.beauty.b.b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final b f31112a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final m f31113b;

    /* renamed from: c  reason: collision with root package name */
    private float f31114c = 0.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f31115d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    private float f31116e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private float f31117f = 0.0f;

    public a() {
        b bVar = new b();
        this.f31112a = bVar;
        m mVar = new m();
        this.f31113b = mVar;
        addFilter(bVar);
        addFilter(mVar);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void a(float f10) {
        this.f31114c = f10;
        this.f31112a.a(f10);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void b(float f10) {
        this.f31115d = f10;
        this.f31112a.b(f10);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void c(float f10) {
        this.f31116e = f10;
        this.f31112a.c(f10);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return this.f31112a.canBeSkipped() && this.f31113b.canBeSkipped();
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void d(float f10) {
        this.f31117f = f10;
        this.f31113b.a(f10 / 2.0f);
    }

    @Override // com.tencent.liteav.videobase.a.h, com.tencent.liteav.videobase.a.b
    public final void onInit(e eVar) {
        super.onInit(eVar);
        this.f31112a.a(this.f31114c);
        this.f31112a.b(this.f31115d);
        this.f31112a.c(this.f31116e);
        this.f31113b.a(this.f31117f / 2.0f);
    }
}
