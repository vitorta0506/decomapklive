package com.tencent.liteav.videobase.utils;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import java.util.ArrayList;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes4.dex */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingDeque<PixelFrame> f31887a = new LinkedBlockingDeque(2);

    @Override // com.tencent.liteav.videobase.utils.h
    public final PixelFrame a() {
        return this.f31887a.poll();
    }

    @Override // com.tencent.liteav.videobase.utils.h
    public final void b() {
        ArrayList arrayList = new ArrayList();
        this.f31887a.drainTo(arrayList);
        PixelFrame.releasePixelFrames(arrayList);
    }

    @Override // com.tencent.liteav.videobase.utils.h
    public final void a(PixelFrame pixelFrame) {
        pixelFrame.retain();
        try {
            this.f31887a.put(pixelFrame);
        } catch (InterruptedException e10) {
            LiteavLog.e("BlockingFrameQueue", "push frame failed with exception", e10);
        }
    }
}
