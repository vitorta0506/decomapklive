package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ek implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCRotateScaleFilter f34904a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34905b;

    private ek(UGCRotateScaleFilter uGCRotateScaleFilter, float f10) {
        this.f34904a = uGCRotateScaleFilter;
        this.f34905b = f10;
    }

    public static Runnable a(UGCRotateScaleFilter uGCRotateScaleFilter, float f10) {
        return new ek(uGCRotateScaleFilter, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34904a.setRotateInternal(null, this.f34905b);
    }
}
