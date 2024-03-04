package com.tencent.thumbplayer.a;

import android.graphics.Bitmap;
import android.util.Log;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import com.tencent.thumbplayer.core.imagegenerator.ITPImageGeneratorCallback;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGenerator;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class d implements com.tencent.thumbplayer.adapter.a.a, ITPImageGeneratorCallback {

    /* renamed from: a  reason: collision with root package name */
    private long f33474a;

    /* renamed from: b  reason: collision with root package name */
    private TPImageGenerator f33475b;

    /* renamed from: c  reason: collision with root package name */
    private Map<Long, TPCaptureCallBack> f33476c;

    public d(int i9) {
        this(i9, 0L, 0L);
    }

    public d(int i9, long j10, long j11) {
        this.f33474a = 0L;
        this.f33475b = new TPImageGenerator(i9, j10, j11, this);
        this.f33476c = new HashMap();
        try {
            this.f33475b.init();
        } catch (Exception e10) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "init: " + Log.getStackTraceString(e10));
        }
    }

    public d(String str) {
        this.f33474a = 0L;
        this.f33475b = new TPImageGenerator(str, this);
        this.f33476c = new HashMap();
        try {
            this.f33475b.init();
        } catch (Exception e10) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "init: " + Log.getStackTraceString(e10));
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a() {
        try {
            this.f33475b.cancelAllImageGenerations();
            this.f33475b.unInit();
        } catch (Exception e10) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "release: " + Log.getStackTraceString(e10));
        }
        this.f33476c.clear();
        this.f33475b = null;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a(long j10, TPImageGeneratorParams tPImageGeneratorParams, TPCaptureCallBack tPCaptureCallBack) {
        if (tPImageGeneratorParams == null) {
            tPImageGeneratorParams = new TPImageGeneratorParams();
            tPImageGeneratorParams.format = 37;
        }
        TPImageGeneratorParams tPImageGeneratorParams2 = tPImageGeneratorParams;
        long j11 = this.f33474a + 1;
        this.f33474a = j11;
        this.f33476c.put(Long.valueOf(j11), tPCaptureCallBack);
        try {
            this.f33475b.generateImageAsyncAtTime(j10, this.f33474a, tPImageGeneratorParams2);
        } catch (Exception e10) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "generateImageAsyncAtTime: " + Log.getStackTraceString(e10));
        }
    }

    @Override // com.tencent.thumbplayer.core.imagegenerator.ITPImageGeneratorCallback
    public void onImageGenerationCompleted(int i9, long j10, long j11, long j12, TPVideoFrame tPVideoFrame) {
        TPCaptureCallBack tPCaptureCallBack = this.f33476c.get(Long.valueOf(j12));
        if (tPCaptureCallBack != null) {
            if (i9 == 0 && tPVideoFrame != null) {
                Bitmap a10 = a.a(tPVideoFrame);
                if (a10 != null) {
                    tPCaptureCallBack.onCaptureVideoSuccess(a10);
                } else {
                    i9 = TPGeneralError.FAILED;
                }
            }
            tPCaptureCallBack.onCaptureVideoFailed(i9);
        }
        this.f33476c.remove(Long.valueOf(j12));
    }
}
