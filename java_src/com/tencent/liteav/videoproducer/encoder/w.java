package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoconsumer.decoder.SpsInfo;
import com.tencent.liteav.videoproducer.encoder.be;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import com.tencent.ugc.UGCTransitionRules;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    String f32977a;

    /* renamed from: b  reason: collision with root package name */
    final Bundle f32978b;

    /* renamed from: c  reason: collision with root package name */
    CustomHandler f32979c;

    /* renamed from: d  reason: collision with root package name */
    MediaCodec f32980d;

    /* renamed from: e  reason: collision with root package name */
    be.a f32981e;

    /* renamed from: f  reason: collision with root package name */
    VideoEncodeParams f32982f;

    /* renamed from: i  reason: collision with root package name */
    ServerVideoProducerConfig f32985i;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final IVideoReporter f32991o;

    /* renamed from: p  reason: collision with root package name */
    private final VideoProducerDef.StreamType f32992p;

    /* renamed from: q  reason: collision with root package name */
    private byte[] f32993q = null;

    /* renamed from: r  reason: collision with root package name */
    private boolean f32994r = true;

    /* renamed from: g  reason: collision with root package name */
    long f32983g = 0;

    /* renamed from: h  reason: collision with root package name */
    com.tencent.liteav.base.util.v f32984h = null;

    /* renamed from: s  reason: collision with root package name */
    private long f32995s = 0;

    /* renamed from: t  reason: collision with root package name */
    private long f32996t = 0;

    /* renamed from: u  reason: collision with root package name */
    private long f32997u = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f32998v = -1;

    /* renamed from: w  reason: collision with root package name */
    private final Deque<Long> f32999w = new LinkedList();

    /* renamed from: x  reason: collision with root package name */
    private long f33000x = 0;

    /* renamed from: y  reason: collision with root package name */
    private long f33001y = 0;

    /* renamed from: z  reason: collision with root package name */
    private long f33002z = 0;
    private long A = Long.MIN_VALUE;
    private boolean B = false;
    private double C = 0.0d;
    private long D = 0;
    private long E = 0;
    private long F = 0;
    private long G = 0;
    private long H = 0;

    /* renamed from: j  reason: collision with root package name */
    boolean f32986j = true;

    /* renamed from: k  reason: collision with root package name */
    final Deque<Long> f32987k = new LinkedList();

    /* renamed from: l  reason: collision with root package name */
    int f32988l = 0;
    private final AtomicLong I = new AtomicLong(0);
    private final List<Long> J = new ArrayList();
    private final AtomicLong K = new AtomicLong(0);

    /* renamed from: m  reason: collision with root package name */
    final Runnable f32989m = x.a(this);

    /* renamed from: n  reason: collision with root package name */
    final Runnable f32990n = z.a(this);

    public w(Bundle bundle, @NonNull IVideoReporter iVideoReporter, VideoProducerDef.StreamType streamType) {
        this.f32991o = iVideoReporter;
        this.f32978b = bundle;
        this.f32992p = streamType;
        this.f32977a = "SurfaceInputVideoEncoder_" + streamType + "_" + hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ByteBuffer byteBuffer;
        int i9;
        if (this.f32980d == null) {
            return;
        }
        while (true) {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            try {
                int dequeueOutputBuffer = this.f32980d.dequeueOutputBuffer(bufferInfo, TimeUnit.MILLISECONDS.toMicros(4L));
                if (dequeueOutputBuffer == -1) {
                    break;
                } else if (dequeueOutputBuffer == -3) {
                    LiteavLog.i(this.f32977a, "encoder output buffers changed");
                } else {
                    boolean z10 = true;
                    if (dequeueOutputBuffer == -2) {
                        try {
                            MediaFormat outputFormat = this.f32980d.getOutputFormat();
                            be.a aVar = this.f32981e;
                            if (aVar != null) {
                                aVar.onOutputFormatChanged(outputFormat);
                            }
                            LiteavLog.i(this.f32977a, "encoder output format changed: %s", outputFormat);
                        } catch (Throwable th2) {
                            a(th2.getMessage());
                            LiteavLog.e(this.f32977a, "getOutputFormat failed.", th2);
                        }
                    } else if (dequeueOutputBuffer < 0) {
                        a("dequeueOutputBuffer return ".concat(String.valueOf(dequeueOutputBuffer)));
                        break;
                    } else {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        this.J.add(Long.valueOf(elapsedRealtime - this.I.getAndSet(elapsedRealtime)));
                        try {
                            if (LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
                                byteBuffer = this.f32980d.getOutputBuffer(dequeueOutputBuffer);
                            } else {
                                byteBuffer = this.f32980d.getOutputBuffers()[dequeueOutputBuffer];
                            }
                            if (byteBuffer != null && ((i9 = bufferInfo.size) != 0 || (bufferInfo.flags & 4) != 0)) {
                                byte[] bArr = new byte[i9];
                                byteBuffer.position(bufferInfo.offset);
                                byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                                byteBuffer.get(bArr);
                                byte[] a10 = a(bArr);
                                VideoEncodeParams videoEncodeParams = this.f32982f;
                                if (videoEncodeParams != null && !videoEncodeParams.annexb) {
                                    a10 = b(a10);
                                }
                                int i10 = bufferInfo.flags;
                                boolean z11 = (i10 & 2) > 0;
                                boolean z12 = (i10 & 1) > 0;
                                if (z11 && z12) {
                                    VideoEncodeParams videoEncodeParams2 = this.f32982f;
                                    boolean z13 = videoEncodeParams2 == null || videoEncodeParams2.codecType == CodecType.H264;
                                    if (videoEncodeParams2 != null && !videoEncodeParams2.annexb) {
                                        z10 = false;
                                    }
                                    this.f32993q = SpsInfo.nativeGetSpsPps(a10, z13, z10);
                                    a(a10, bufferInfo);
                                } else if (z11) {
                                    this.f32993q = (byte[]) a10.clone();
                                } else {
                                    if (this.f32994r && z12) {
                                        byte[] bArr2 = this.f32993q;
                                        if (bArr2 != null) {
                                            byte[] bArr3 = new byte[bArr2.length + a10.length];
                                            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                                            System.arraycopy(a10, 0, bArr3, this.f32993q.length, a10.length);
                                            a10 = bArr3;
                                        } else {
                                            a("mSpsPps is null.");
                                        }
                                    }
                                    a(a10, bufferInfo);
                                }
                            } else {
                                a("size is zero, but it isn't end of stream");
                            }
                            try {
                                this.f32980d.releaseOutputBuffer(dequeueOutputBuffer, false);
                            } catch (Throwable th3) {
                                a(th3.getMessage());
                                LiteavLog.e(this.f32977a, "releaseOutputBuffer failed.", th3);
                            }
                        } catch (Throwable th4) {
                            a(th4.getMessage());
                            LiteavLog.e(this.f32977a, "getOutputBuffer failed.", th4);
                        }
                    }
                }
            } catch (Throwable th5) {
                a(th5.getMessage());
                LiteavLog.e(this.f32977a, "dequeueOutputBuffer failed.", th5);
            }
        }
        synchronized (this.f32999w) {
            if (this.f32999w.size() != 0) {
                int i11 = this.f32982f.fps;
                int i12 = i11 != 0 ? 500 / i11 : 10;
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 29) {
                    if (!this.f32979c.hasCallbacks(this.f32990n)) {
                        this.f32979c.postDelayed(this.f32990n, i12);
                    }
                } else {
                    this.f32979c.postDelayed(this.f32990n, i12);
                }
            }
        }
    }

    private void h() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime <= this.D + TimeUnit.SECONDS.toMillis(2L)) {
            this.E++;
            return;
        }
        this.C = (this.E * 1000.0d) / (elapsedRealtime - this.D);
        this.E = 1L;
        this.D = elapsedRealtime;
        long j10 = -1;
        for (Long l10 : this.J) {
            long longValue = l10.longValue();
            if (j10 < longValue) {
                j10 = longValue;
            }
        }
        this.K.set(j10);
        this.J.clear();
    }

    private long i() {
        long longValue;
        synchronized (this.f32999w) {
            Long pollFirst = this.f32999w.pollFirst();
            longValue = pollFirst == null ? 0L : pollFirst.longValue();
        }
        return longValue;
    }

    private void j() {
        if (this.f32987k.isEmpty()) {
            return;
        }
        int i9 = this.f32982f.fps;
        if (i9 - ((int) this.C) <= Math.max(i9 / 2, 5) && SystemClock.elapsedRealtime() > this.f32987k.peekFirst().longValue()) {
            this.f32987k.removeFirst();
            if (this.f32988l - this.F > Math.max(this.f32982f.bitrate / 2, 100)) {
                this.f32978b.putBoolean("need_restart_when_down_bitrate", true);
                this.f32989m.run();
                this.f32987k.clear();
            }
        }
    }

    public final void a() {
        LiteavLog.d(this.f32977a, "initialize");
        HandlerThread handlerThread = new HandlerThread("hw-video-encoder");
        handlerThread.start();
        this.f32979c = new CustomHandler(handlerThread.getLooper());
    }

    public final void b() {
        this.f32979c.post(ae.a(this));
    }

    public final void c() {
        LiteavLog.d(this.f32977a, "stop");
        this.f32979c.post(ag.a(this));
    }

    public final void d() {
        LiteavLog.d(this.f32977a, "uninitialize");
        this.f32979c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (this.f32984h != null) {
            LiteavLog.i(this.f32977a, "stopEosTimer");
            this.f32984h.a();
            this.f32984h = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        if (LiteavSystemInfo.getSystemOSVersionInt() < 19 || this.f32980d == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.f32980d.setParameters(bundle);
        } catch (Throwable th2) {
            LiteavLog.e(this.f32977a, "requestSyncFrame failed.", th2);
        }
    }

    private static byte[] b(byte[] bArr) {
        int i9;
        int length = bArr.length;
        ArrayList<int[]> arrayList = new ArrayList(20);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 <= length) {
            int i13 = i10 + 2;
            if (i13 < length && bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i13] == 1) {
                i9 = 3;
            } else {
                int i14 = i10 + 3;
                i9 = (i14 < length && bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i13] == 0 && bArr[i14] == 1) ? 4 : 1;
            }
            if (i9 == 3 || i9 == 4 || i10 == length) {
                if (i12 != i10) {
                    arrayList.add(new int[]{i12, i10});
                    i11 += i10 - i12;
                }
                i12 = i10 + i9;
            }
            i10 += i9;
        }
        byte[] bArr2 = new byte[i11 + (arrayList.size() * 4)];
        int i15 = 0;
        for (int[] iArr : arrayList) {
            int i16 = iArr[1] - iArr[0];
            ByteBuffer order = ByteBuffer.wrap(new byte[4]).order(ByteOrder.BIG_ENDIAN);
            order.putInt(i16);
            System.arraycopy(order.array(), 0, bArr2, i15, 4);
            int i17 = i15 + 4;
            System.arraycopy(bArr, iArr[0], bArr2, i17, i16);
            i15 = i17 + i16;
        }
        return bArr2;
    }

    public final void a(ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32979c.post(aa.a(this, serverVideoProducerConfig));
    }

    public final Pair<Surface, com.tencent.liteav.base.util.q> a(VideoEncodeParams videoEncodeParams, be.a aVar) {
        LiteavLog.d(this.f32977a, "start");
        Surface[] surfaceArr = new Surface[1];
        LiteavLog.i(this.f32977a, "startCodecInternal success: ".concat(String.valueOf(this.f32979c.a(ab.a(this, aVar, surfaceArr, videoEncodeParams), 5000L))));
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q(UGCTransitionRules.DEFAULT_IMAGE_WIDTH, UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        VideoEncodeParams videoEncodeParams2 = this.f32982f;
        if (videoEncodeParams2 != null) {
            qVar.a(videoEncodeParams2.width, videoEncodeParams2.height);
        }
        return new Pair<>(surfaceArr[0], qVar);
    }

    public final void a(long j10) {
        if (this.f32982f.fullIFrame) {
            this.f32979c.a(ac.a(this));
        }
        synchronized (this.f32999w) {
            if (this.f32999w.isEmpty()) {
                this.I.set(SystemClock.elapsedRealtime());
            }
            this.f32999w.addLast(Long.valueOf(j10));
            if (this.f32999w.size() > 30) {
                LiteavLog.e(this.f32977a, "too much unencoded frame, hw encoder error");
                this.f32979c.post(this.f32989m);
            }
        }
        this.f32979c.postDelayed(this.f32990n, 10L);
    }

    private MediaCodec b(String str) throws Exception {
        String str2;
        MediaCodec createEncoderByType = MediaCodec.createEncoderByType(str);
        try {
            str2 = createEncoderByType.getName();
        } catch (Exception e10) {
            LiteavLog.w(this.f32977a, "mediaCodec getName failed.", e10);
            str2 = null;
        }
        LiteavLog.d(this.f32977a, "codecName=".concat(String.valueOf(str2)));
        if (str2 == null || !str2.equals("OMX.google.h264.encoder")) {
            return createEncoderByType;
        }
        LiteavLog.w(this.f32977a, "will be destroyed codecName=".concat(str2));
        a(createEncoderByType);
        throw new IOException("this is a Google H264 soft encoder. cancel use MediaCodec.");
    }

    public final void a(int i9) {
        this.f32979c.post(ad.a(this, i9));
    }

    public final void a(String str) {
        this.f32979c.post(af.a(this, str));
    }

    private void a(byte[] bArr, MediaCodec.BufferInfo bufferInfo) {
        boolean z10 = true;
        boolean z11 = (bufferInfo.flags & 1) > 0;
        a(z11);
        a(z11, bArr.length);
        h();
        if (z11) {
            this.f32996t++;
            this.f32997u = 0L;
        } else {
            this.f32997u++;
        }
        this.f32995s++;
        long i9 = i();
        long millis = TimeUnit.MICROSECONDS.toMillis(bufferInfo.presentationTimeUs);
        if (this.f33000x == 0) {
            this.f33000x = i9;
        }
        if (this.f33001y == 0) {
            this.f33001y = millis;
        }
        long j10 = millis + (this.f33000x - this.f33001y);
        long j11 = this.f33002z;
        if (i9 <= j11) {
            i9 = j11 + 1;
        }
        if (i9 > j10) {
            i9 = j10;
        }
        this.f33002z = i9;
        EncodedVideoFrame encodedVideoFrame = new EncodedVideoFrame();
        encodedVideoFrame.nalType = z11 ? com.tencent.liteav.videobase.common.a.IDR : com.tencent.liteav.videobase.common.a.P;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr.length);
        encodedVideoFrame.data = allocateDirect;
        allocateDirect.put(bArr);
        encodedVideoFrame.data.rewind();
        encodedVideoFrame.dts = i9;
        encodedVideoFrame.pts = j10;
        encodedVideoFrame.info = bufferInfo;
        encodedVideoFrame.gopIndex = this.f32996t;
        long j12 = this.f32997u;
        encodedVideoFrame.frameIndex = j12;
        encodedVideoFrame.gopFrameIndex = j12;
        if (!z11) {
            j12--;
        }
        encodedVideoFrame.refFrameIndex = j12;
        encodedVideoFrame.profileType = com.tencent.liteav.videobase.common.b.BASELINE;
        VideoEncodeParams videoEncodeParams = this.f32982f;
        encodedVideoFrame.codecType = videoEncodeParams.codecType;
        encodedVideoFrame.width = videoEncodeParams.width;
        encodedVideoFrame.height = videoEncodeParams.height;
        if ((bufferInfo.flags & 4) > 0) {
            e();
        } else {
            a(encodedVideoFrame);
            z10 = false;
        }
        be.a aVar = this.f32981e;
        if (aVar != null) {
            aVar.onEncodedNAL(encodedVideoFrame, z10);
        }
    }

    private void a(EncodedVideoFrame encodedVideoFrame) {
        boolean z10 = this.f32982f.enableBFrame;
        if (!z10 && !this.B && encodedVideoFrame.pts < this.A) {
            LiteavLog.i(this.f32977a, "has B frame,isEnablesBframe=%b,mLastPresentationTimestamp=%d,packet.pts=%d", Boolean.valueOf(z10), Long.valueOf(this.A), Long.valueOf(encodedVideoFrame.pts));
            this.B = true;
            PersistStorage persistStorage = new PersistStorage(PersistStorage.GLOBAL_DOMAIN);
            persistStorage.put("Liteav.Video.android.local.rtc.enable.high.profile", 0);
            persistStorage.commit();
            be.a aVar = this.f32981e;
            if (aVar != null) {
                aVar.onRequestRestart();
            }
        }
        this.A = encodedVideoFrame.pts;
    }

    private void a(boolean z10) {
        if (z10) {
            this.f32998v = -1;
        }
        VideoEncodeParams videoEncodeParams = this.f32982f;
        if (videoEncodeParams == null || videoEncodeParams.fullIFrame) {
            return;
        }
        int i9 = this.f32998v + 1;
        this.f32998v = i9;
        if (i9 == videoEncodeParams.fps * videoEncodeParams.gop) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e5 A[Catch: Exception -> 0x013d, TRY_LEAVE, TryCatch #2 {Exception -> 0x013d, blocks: (B:38:0x00be, B:40:0x00d3, B:46:0x00e5, B:57:0x0135, B:58:0x013c), top: B:78:0x00be }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0135 A[Catch: Exception -> 0x013d, TRY_ENTER, TryCatch #2 {Exception -> 0x013d, blocks: (B:38:0x00be, B:40:0x00d3, B:46:0x00e5, B:57:0x0135, B:58:0x013c), top: B:78:0x00be }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.Surface a(com.tencent.liteav.videoproducer.encoder.VideoEncodeParams r8) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.encoder.w.a(com.tencent.liteav.videoproducer.encoder.VideoEncodeParams):android.view.Surface");
    }

    private boolean a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            return false;
        }
        try {
            LiteavLog.i(this.f32977a, "configure format: %s", mediaFormat);
            mediaCodec.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
            return true;
        } catch (Exception e10) {
            LiteavLog.e(this.f32977a, "configure failed.", e10);
            return false;
        }
    }

    private void a(boolean z10, long j10) {
        long j11;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z10) {
            if (elapsedRealtime > 1000 + this.G) {
                this.F = (long) (((this.H * 8000.0d) / (elapsedRealtime - j11)) / 1024.0d);
                this.H = 0L;
                this.G = elapsedRealtime;
                j();
            }
        }
        this.H += j10;
    }

    private static byte[] a(byte[] bArr) {
        if (bArr.length > 5 && bArr[0] == 0 && bArr[1] == 0 && bArr[2] == 0 && bArr[3] == 0 && bArr[4] == 0 && bArr[5] == 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 3;
                if (i10 >= bArr.length) {
                    i9 = 0;
                    break;
                } else if ((bArr[i9] == 0 && bArr[i9 + 1] == 0 && bArr[i9 + 2] == 0 && bArr[i10] == 1) || (bArr[i9] == 0 && bArr[i9 + 1] == 0 && bArr[i9 + 2] == 1)) {
                    break;
                } else {
                    i9++;
                }
            }
            if (i9 != 0) {
                int length = bArr.length - i9;
                byte[] bArr2 = new byte[length];
                System.arraycopy(bArr, i9, bArr2, 0, length);
                return bArr2;
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(MediaCodec mediaCodec) {
        if (mediaCodec != null) {
            try {
                mediaCodec.stop();
            } catch (Exception e10) {
                LiteavLog.e(this.f32977a, "destroy mediaCodec stop failed.", e10);
            }
            try {
                mediaCodec.release();
            } catch (Exception e11) {
                LiteavLog.e(this.f32977a, "destroy mediaCodec release failed.", e11);
            }
        }
    }
}
