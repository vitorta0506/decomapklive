package com.tencent.liteav.videoconsumer.decoder;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.utils.f;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.decoder.az;
import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class ax {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final IVideoReporter f32216b;

    /* renamed from: f  reason: collision with root package name */
    az.a f32220f;

    /* renamed from: g  reason: collision with root package name */
    boolean f32221g;

    /* renamed from: a  reason: collision with root package name */
    String f32215a = "VideoDecodeControllerStatistics";

    /* renamed from: h  reason: collision with root package name */
    long f32222h = 0;

    /* renamed from: i  reason: collision with root package name */
    long f32223i = 0;

    /* renamed from: k  reason: collision with root package name */
    private boolean f32225k = false;

    /* renamed from: j  reason: collision with root package name */
    long f32224j = 0;

    /* renamed from: l  reason: collision with root package name */
    private long f32226l = 0;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final a f32217c = new a(this, (byte) 0);
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final b f32218d = new b((byte) 0);
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.f f32219e = new com.tencent.liteav.videobase.utils.f("videoDecoder", 1000, new f.a(this) { // from class: com.tencent.liteav.videoconsumer.decoder.ay

        /* renamed from: a  reason: collision with root package name */
        private final ax f32236a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f32236a = this;
        }

        @Override // com.tencent.liteav.videobase.utils.f.a
        public final void a(double d10) {
            this.f32236a.f32216b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_FRAMERATE, Double.valueOf(d10));
        }
    });

    public ax(@NonNull IVideoReporter iVideoReporter) {
        this.f32216b = iVideoReporter;
        this.f32215a += "_" + hashCode();
        a();
    }

    public final void a() {
        this.f32217c.a();
        this.f32218d.a();
        this.f32219e.b();
        this.f32220f = null;
        this.f32221g = false;
        this.f32225k = false;
        this.f32223i = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f32226l == 0) {
            this.f32226l = SystemClock.elapsedRealtime();
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f32226l + TimeUnit.SECONDS.toMillis(1L) < elapsedRealtime) {
            this.f32226l = elapsedRealtime;
            this.f32216b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_ERROR, Long.valueOf(this.f32224j));
            this.f32224j = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        long f32234a;

        /* renamed from: b  reason: collision with root package name */
        long f32235b;

        private b() {
            this.f32234a = 0L;
            this.f32235b = 0L;
        }

        public final void a() {
            this.f32235b = 0L;
            this.f32234a = 0L;
        }

        /* synthetic */ b(byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        long f32227a;

        /* renamed from: b  reason: collision with root package name */
        long f32228b;

        /* renamed from: c  reason: collision with root package name */
        long f32229c;

        /* renamed from: d  reason: collision with root package name */
        long f32230d;

        /* renamed from: e  reason: collision with root package name */
        final Deque<Long> f32231e;

        /* renamed from: f  reason: collision with root package name */
        final List<Long> f32232f;

        private a() {
            this.f32227a = 0L;
            this.f32228b = 0L;
            this.f32229c = 0L;
            this.f32230d = 0L;
            this.f32231e = new LinkedList();
            this.f32232f = new ArrayList();
        }

        public final void a() {
            this.f32227a = 0L;
            this.f32228b = 0L;
            this.f32229c = 0L;
            this.f32230d = 0L;
            this.f32231e.clear();
            this.f32232f.clear();
        }

        public final void a(long j10) {
            if (this.f32231e.isEmpty()) {
                this.f32230d = SystemClock.elapsedRealtime();
            }
            this.f32231e.addLast(Long.valueOf(j10));
        }

        /* synthetic */ a(ax axVar, byte b10) {
            this();
        }
    }

    public final void a(EncodedVideoFrame encodedVideoFrame) {
        if (!this.f32225k && encodedVideoFrame.isIDRFrame()) {
            this.f32222h = SystemClock.elapsedRealtime();
            this.f32225k = true;
            this.f32216b.notifyEvent(h.b.EVT_VIDEO_DECODE_START_DECODE_FIRST_FRAME, "Start decode first frame", new Object[0]);
            LiteavLog.d(this.f32215a, "received first I frame.");
        }
        if (!this.f32221g) {
            this.f32223i++;
        }
        this.f32217c.a(encodedVideoFrame.pts);
    }

    public final void a(az.a aVar, CodecType codecType) {
        this.f32220f = aVar;
        if (codecType == CodecType.H265 && aVar == az.a.SOFTWARE) {
            aVar = az.a.CUSTOM;
        }
        this.f32216b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_TYPE, new VideoDecoderDef.DecoderProperty(aVar, codecType));
    }
}
