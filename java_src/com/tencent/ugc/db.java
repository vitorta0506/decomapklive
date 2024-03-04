package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class db implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34848a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34849b;

    private db(UGCMediaListSource uGCMediaListSource, int i9) {
        this.f34848a = uGCMediaListSource;
        this.f34849b = i9;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, int i9) {
        return new db(uGCMediaListSource, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setPictureTransition$6(this.f34848a, this.f34849b);
    }
}
