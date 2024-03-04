package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f33243a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.PixelFormatType f33244b;

    /* renamed from: c  reason: collision with root package name */
    private final GLConstants.PixelBufferType f33245c;

    /* renamed from: d  reason: collision with root package name */
    private final CustomVideoProcessListener f33246d;

    private b(a aVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        this.f33243a = aVar;
        this.f33244b = pixelFormatType;
        this.f33245c = pixelBufferType;
        this.f33246d = customVideoProcessListener;
    }

    public static Runnable a(a aVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        return new b(aVar, pixelFormatType, pixelBufferType, customVideoProcessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f33243a;
        GLConstants.PixelFormatType pixelFormatType = this.f33244b;
        GLConstants.PixelBufferType pixelBufferType = this.f33245c;
        CustomVideoProcessListener customVideoProcessListener = this.f33246d;
        boolean z10 = (aVar.f33153d == pixelFormatType && aVar.f33152c == pixelBufferType) ? false : true;
        if (z10) {
            LiteavLog.i("CustomVideoProcessListenerAdapter", "FormatOrBufferTypeChanged from (PixelFormat:" + aVar.f33153d + ",  PixelBuffer:" + aVar.f33152c + ") to (PixelFormat:" + pixelFormatType + ",  PixelBuffer:" + pixelBufferType);
            aVar.f33154e = true;
        }
        if (aVar.f33151b == null) {
            aVar.a(customVideoProcessListener);
        }
        CustomVideoProcessListener customVideoProcessListener2 = aVar.f33151b;
        if (customVideoProcessListener2 != null && (z10 || customVideoProcessListener2 != customVideoProcessListener)) {
            aVar.b(customVideoProcessListener2);
            aVar.a(customVideoProcessListener);
        }
        aVar.f33153d = pixelFormatType;
        aVar.f33152c = pixelBufferType;
        aVar.f33151b = customVideoProcessListener;
    }
}
