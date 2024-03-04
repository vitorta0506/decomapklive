package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BeautyProcessor f33039a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33040b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33041c;

    private f(BeautyProcessor beautyProcessor, String str, int i9) {
        this.f33039a = beautyProcessor;
        this.f33040b = str;
        this.f33041c = i9;
    }

    public static Runnable a(BeautyProcessor beautyProcessor, String str, int i9) {
        return new f(beautyProcessor, str, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33039a.updateStatsInternal(this.f33040b, this.f33041c);
    }
}
