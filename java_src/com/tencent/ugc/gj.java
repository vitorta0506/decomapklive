package com.tencent.ugc;

import com.tencent.ugc.UGCVideoProcessor;
/* loaded from: classes4.dex */
final /* synthetic */ class gj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor.AnonymousClass1 f34998a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34999b;

    /* renamed from: c  reason: collision with root package name */
    private final int f35000c;

    private gj(UGCVideoProcessor.AnonymousClass1 anonymousClass1, int i9, int i10) {
        this.f34998a = anonymousClass1;
        this.f34999b = i9;
        this.f35000c = i10;
    }

    public static Runnable a(UGCVideoProcessor.AnonymousClass1 anonymousClass1, int i9, int i10) {
        return new gj(anonymousClass1, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.AnonymousClass1.a(this.f34998a, this.f34999b, this.f35000c);
    }
}
