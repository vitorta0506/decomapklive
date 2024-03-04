package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34839a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34840b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34841c;

    private cz(UGCMediaListSource uGCMediaListSource, long j10, long j11) {
        this.f34839a = uGCMediaListSource;
        this.f34840b = j10;
        this.f34841c = j11;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, long j10, long j11) {
        return new cz(uGCMediaListSource, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setVideoSourceRange$4(this.f34839a, this.f34840b, this.f34841c);
    }
}
