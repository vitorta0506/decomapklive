package com.tencent.liteav.beauty.b.a;

import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.a.j;
import com.tencent.liteav.videobase.a.k;
import com.tencent.liteav.videobase.frame.e;
/* loaded from: classes4.dex */
public final class a extends k implements com.tencent.liteav.beauty.b.b {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final d f31060b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final d f31061c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final b f31062d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final c f31063e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final d f31064f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final d f31065g;

    /* renamed from: h  reason: collision with root package name */
    private float f31066h = 0.2f;

    /* renamed from: i  reason: collision with root package name */
    private float f31067i = 0.2f;

    /* renamed from: j  reason: collision with root package name */
    private float f31068j = 0.2f;

    /* renamed from: k  reason: collision with root package name */
    private float f31069k = 0.0f;

    public a() {
        d dVar = new d(true);
        this.f31060b = dVar;
        d dVar2 = new d(false);
        this.f31061c = dVar2;
        b bVar = new b();
        this.f31062d = bVar;
        c cVar = new c();
        this.f31063e = cVar;
        d dVar3 = new d(true);
        this.f31064f = dVar3;
        d dVar4 = new d(false);
        this.f31065g = dVar4;
        k.a aVar = this.f31681a;
        k.a a10 = a(dVar);
        a10.a(aVar);
        k.a a11 = a(dVar2);
        a11.a(a10);
        k.a a12 = a(bVar);
        a12.a(aVar);
        a12.a(j.SECOND_INPUT_SAMPLE2D_NAME, a11);
        k.a a13 = a(dVar3);
        a13.a(a12);
        k.a a14 = a(dVar4);
        a14.a(a13);
        k.a a15 = a(cVar);
        a15.a(aVar);
        a15.a(j.SECOND_INPUT_SAMPLE2D_NAME, a11);
        a15.a(j.THIRD_INPUT_SAMPLE2D_NAME, a14);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void a(float f10) {
        this.f31066h = f10;
        this.f31063e.a(f10);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void b(float f10) {
        this.f31067i = f10;
        this.f31063e.b(f10);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void c(float f10) {
        this.f31068j = f10;
        this.f31063e.c(f10);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return this.f31063e.canBeSkipped();
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void d(float f10) {
        this.f31069k = f10;
        this.f31063e.d(f10);
    }

    @Override // com.tencent.liteav.videobase.a.k, com.tencent.liteav.videobase.a.b
    public final void onInit(e eVar) {
        super.onInit(eVar);
        this.f31063e.a(this.f31066h);
        this.f31063e.b(this.f31067i);
        this.f31063e.c(this.f31068j);
        this.f31063e.d(this.f31069k);
    }
}
