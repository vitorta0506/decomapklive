package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32120a;

    /* renamed from: b  reason: collision with root package name */
    private final SnapshotSourceType f32121b;

    /* renamed from: c  reason: collision with root package name */
    private final TakeSnapshotListener f32122c;

    private p(j jVar, SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        this.f32120a = jVar;
        this.f32121b = snapshotSourceType;
        this.f32122c = takeSnapshotListener;
    }

    public static Runnable a(j jVar, SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        return new p(jVar, snapshotSourceType, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoRenderInterface videoRenderInterface;
        j jVar = this.f32120a;
        SnapshotSourceType snapshotSourceType = this.f32121b;
        final TakeSnapshotListener takeSnapshotListener = this.f32122c;
        String str = jVar.f32076a;
        LiteavLog.i(str, "takeSnapshot: sourceType = " + snapshotSourceType + ", listener = " + takeSnapshotListener);
        if (snapshotSourceType == SnapshotSourceType.STREAM) {
            final VideoDecodeController videoDecodeController = jVar.f32081f;
            if (videoDecodeController != null) {
                videoDecodeController.a(new Runnable(videoDecodeController, takeSnapshotListener) { // from class: com.tencent.liteav.videoconsumer.decoder.as

                    /* renamed from: a  reason: collision with root package name */
                    private final VideoDecodeController f32208a;

                    /* renamed from: b  reason: collision with root package name */
                    private final TakeSnapshotListener f32209b;

                    {
                        this.f32208a = videoDecodeController;
                        this.f32209b = takeSnapshotListener;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoDecodeController videoDecodeController2 = this.f32208a;
                        TakeSnapshotListener takeSnapshotListener2 = this.f32209b;
                        LiteavLog.i(videoDecodeController2.f32142a, "takeSnapshot ".concat(String.valueOf(takeSnapshotListener2)));
                        videoDecodeController2.f32158q.f31904a = takeSnapshotListener2;
                    }
                });
            }
        } else if (snapshotSourceType == SnapshotSourceType.VIEW) {
            if (jVar.f32084i != null && (videoRenderInterface = jVar.f32079d) != null) {
                videoRenderInterface.takeSnapshot(takeSnapshotListener);
                return;
            }
            VideoRenderInterface videoRenderInterface2 = jVar.f32080e;
            if (videoRenderInterface2 != null) {
                videoRenderInterface2.takeSnapshot(takeSnapshotListener);
                return;
            }
            LiteavLog.w(jVar.f32076a, "takeSnapshot return null, no match render.");
            if (takeSnapshotListener != null) {
                takeSnapshotListener.onComplete(null);
            }
        }
    }
}
