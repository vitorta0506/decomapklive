package com.tencent.liteav.beauty.b.b;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.a.j;
import com.tencent.liteav.videobase.a.k;
/* loaded from: classes4.dex */
public final class a extends k implements com.tencent.liteav.beauty.b.b {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final d f31086b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final e f31087c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final c f31088d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final b f31089e;

    /* renamed from: f  reason: collision with root package name */
    private float f31090f = 0.1f;

    /* renamed from: g  reason: collision with root package name */
    private float f31091g = 2.0f;

    /* renamed from: h  reason: collision with root package name */
    private int f31092h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f31093i = 0;

    public a() {
        b bVar = new b();
        this.f31089e = bVar;
        d dVar = new d();
        this.f31086b = dVar;
        e eVar = new e();
        this.f31087c = eVar;
        c cVar = new c();
        this.f31088d = cVar;
        k.a aVar = this.f31681a;
        k.a a10 = a(dVar);
        a10.a(aVar);
        k.a a11 = a(eVar);
        a11.a(a10);
        a11.a(j.SECOND_INPUT_SAMPLE2D_NAME, aVar);
        k.a a12 = a(cVar);
        a12.a(a11);
        k.a a13 = a(bVar);
        a13.a(a12);
        a13.a(j.SECOND_INPUT_SAMPLE2D_NAME, aVar);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void a(float f10) {
        e eVar = this.f31087c;
        LiteavLog.i("SmoothVertical", "setBeautyLevel ".concat(String.valueOf(f10)));
        eVar.f31107b = f10;
        eVar.setFloatOnDraw(eVar.f31106a, f10);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void b(float f10) {
        b bVar = this.f31089e;
        LiteavLog.i("BeautyBlend", "setWhitenessLevel ".concat(String.valueOf(f10)));
        bVar.f31096c = f10;
        bVar.setFloatOnDraw(bVar.f31094a, f10);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void c(float f10) {
        b bVar = this.f31089e;
        LiteavLog.i("BeautyBlend", "setRuddyLevel ".concat(String.valueOf(f10)));
        bVar.f31097d = f10;
        bVar.setFloatOnDraw(bVar.f31095b, f10 / 2.0f);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return this.f31087c.canBeSkipped() && this.f31089e.canBeSkipped() && this.f31088d.canBeSkipped();
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void d(float f10) {
        LiteavLog.i("BeautySmoothFilter", "setSharpenLevel ".concat(String.valueOf(f10)));
        this.f31090f = f10;
        this.f31088d.a(f10 / 1.2f);
    }

    @Override // com.tencent.liteav.videobase.a.k, com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        this.f31092h = i9;
        this.f31093i = i10;
        if (Math.abs(this.f31091g - 1.0f) > 1.0E-5d) {
            float f10 = this.f31091g;
            this.f31092h = (int) (this.f31092h / f10);
            this.f31093i = (int) (this.f31093i / f10);
        }
        LiteavLog.i("BeautySmoothFilter", "mResampleRatio: %f, mResampleWidth: %d, mResampleHeight: %d", Float.valueOf(this.f31091g), Integer.valueOf(this.f31092h), Integer.valueOf(this.f31093i));
        this.f31086b.onOutputSizeChanged(this.f31092h, this.f31093i);
        this.f31087c.onOutputSizeChanged(this.f31092h, this.f31093i);
    }
}
