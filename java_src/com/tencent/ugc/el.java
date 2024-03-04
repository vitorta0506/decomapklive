package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class el implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCRotateScaleFilter f34906a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34907b;

    /* renamed from: c  reason: collision with root package name */
    private final float f34908c;

    private el(UGCRotateScaleFilter uGCRotateScaleFilter, float f10, float f11) {
        this.f34906a = uGCRotateScaleFilter;
        this.f34907b = f10;
        this.f34908c = f11;
    }

    public static Runnable a(UGCRotateScaleFilter uGCRotateScaleFilter, float f10, float f11) {
        return new el(uGCRotateScaleFilter, f10, f11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        r0.setScaleInternal(this.f34906a.setRotateInternal(null, this.f34907b), this.f34908c);
    }
}
