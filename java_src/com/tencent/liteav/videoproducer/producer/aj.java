package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33192a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33193b;

    private aj(f fVar, boolean z10) {
        this.f33192a = fVar;
        this.f33193b = z10;
    }

    public static Runnable a(f fVar, boolean z10) {
        return new aj(fVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.f33192a;
        boolean z10 = this.f33193b;
        fVar.f33284t.f33233d = r1 ? GLConstants.Orientation.PORTRAIT : GLConstants.Orientation.LANDSCAPE;
    }
}
