package com.tencent.liteav.videoconsumer.decoder;

import android.os.SystemClock;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.ax;
import com.tencent.liteav.videoconsumer.decoder.az;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
final /* synthetic */ class ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32193a;

    /* renamed from: b  reason: collision with root package name */
    private final long f32194b;

    /* renamed from: c  reason: collision with root package name */
    private final long f32195c;

    private ai(VideoDecodeController videoDecodeController, long j10, long j11) {
        this.f32193a = videoDecodeController;
        this.f32194b = j10;
        this.f32195c = j11;
    }

    public static Runnable a(VideoDecodeController videoDecodeController, long j10, long j11) {
        return new ai(videoDecodeController, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32193a;
        long j10 = this.f32194b;
        long j11 = this.f32195c;
        if (videoDecodeController.f32152k) {
            videoDecodeController.f32143b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_FRAME, 0);
            d dVar = videoDecodeController.f32144c;
            int i9 = dVar.f32262r;
            if (i9 > 0) {
                dVar.f32262r = i9 - 1;
            }
            if (dVar.f32256l == 0) {
                LiteavLog.i(dVar.f32245a, "decode first frame success");
            }
            dVar.f32256l = j10;
            dVar.f32265u = 0;
            videoDecodeController.f32155n.decrementAndGet();
            ax axVar = videoDecodeController.f32145d;
            axVar.f32219e.a();
            ax.a aVar = axVar.f32217c;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j12 = elapsedRealtime - aVar.f32230d;
            aVar.f32232f.add(Long.valueOf(j12));
            aVar.f32230d = elapsedRealtime;
            if (!aVar.f32231e.isEmpty()) {
                aVar.f32231e.removeFirst();
            }
            if (elapsedRealtime - aVar.f32228b >= TimeUnit.SECONDS.toMillis(1L)) {
                aVar.f32228b = elapsedRealtime;
                long j13 = 0;
                for (Long l10 : aVar.f32232f) {
                    j13 += l10.longValue();
                }
                aVar.f32229c = j13 / Math.max(aVar.f32232f.size(), 1);
                aVar.f32232f.clear();
            }
            ax.this.f32216b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_COST, Long.valueOf(j12));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (aVar.f32227a == 0) {
                aVar.f32227a = elapsedRealtime2;
            }
            long j14 = aVar.f32227a;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (elapsedRealtime2 >= j14 + timeUnit.toMillis(1L)) {
                aVar.f32227a = elapsedRealtime2;
                long j15 = aVar.f32229c;
                ax axVar2 = ax.this;
                if (axVar2.f32220f == az.a.HARDWARE) {
                    axVar2.f32216b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_HW_DECODE_TASK_COST, Long.valueOf(j15));
                } else {
                    axVar2.f32216b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_SW_DECODE_TASK_COST, Long.valueOf(j15));
                }
            }
            ax.b bVar = axVar.f32218d;
            long elapsedRealtime3 = SystemClock.elapsedRealtime();
            if (bVar.f32235b == 0) {
                bVar.f32235b = elapsedRealtime3;
            }
            if (bVar.f32234a == 0) {
                bVar.f32234a = elapsedRealtime3;
            }
            if (elapsedRealtime3 > bVar.f32234a + timeUnit.toMillis(1L) && elapsedRealtime3 > bVar.f32235b + timeUnit.toMillis(2L)) {
                LiteavLog.e("DecodeSmoothStatistics", "frame interval [%d] > %d", Long.valueOf(elapsedRealtime3 - bVar.f32234a), Long.valueOf(timeUnit.toMillis(1L)));
                bVar.f32235b = elapsedRealtime3;
            }
            bVar.f32234a = elapsedRealtime3;
            axVar.b();
            if (!axVar.f32221g) {
                axVar.f32221g = true;
                axVar.f32216b.notifyEvent(h.b.EVT_VIDEO_DECODE_FIRST_FRAME_DECODED, "first frame decoded", new Object[0]);
                String str = axVar.f32215a;
                LiteavLog.d(str, "first frame decoded cost time: " + (SystemClock.elapsedRealtime() - axVar.f32222h) + ", before decode first frame received: " + axVar.f32223i);
            }
            PixelFrame a10 = videoDecodeController.f32156o.a();
            if (a10 != null) {
                if (videoDecodeController.f32151j != null && videoDecodeController.k()) {
                    if (a10.getGLContext() == null) {
                        a10.setGLContext(videoDecodeController.f32151j.d());
                    }
                    videoDecodeController.f32158q.a(a10.getWidth(), a10.getHeight());
                    videoDecodeController.f32158q.a(a10);
                    VideoDecodeController.a aVar2 = videoDecodeController.f32149h;
                    if (aVar2 != null) {
                        aVar2.onDecodeFrame(a10, j11);
                    }
                    a10.release();
                    return;
                }
                a10.release();
            }
        }
    }
}
