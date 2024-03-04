package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33006a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33007b;

    private a(BeautyProcessor beautyProcessor, int i9) {
        this.f33006a = beautyProcessor;
        this.f33007b = i9;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, int i9) {
        return new a(beautyProcessor, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        r0.updateBeautyInternal(this.f33007b, r0.mBeautyLevel, r0.mWhitenessLevel, r0.mRuddyLevel, this.f33006a.mSharpnessLevel);
    }
}
