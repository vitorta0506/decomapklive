package com.tencent.liteav.commonaudio.codec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class AacMediaCodecWrapper {

    /* renamed from: a  reason: collision with root package name */
    MediaFormat f31210a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31211b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31212c;

    /* renamed from: d  reason: collision with root package name */
    private MediaCodec f31213d;

    /* renamed from: e  reason: collision with root package name */
    private final MediaCodec.BufferInfo f31214e;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f31215a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f31216b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ int[] f31217c = {1, 2};
    }

    public AacMediaCodecWrapper(int i9) {
        this.f31212c = i9;
        this.f31211b = i9 == a.f31215a ? "HardwareAacEncoder" : "HardwareAacDecoder";
        this.f31214e = new MediaCodec.BufferInfo();
    }

    private ByteBuffer b() {
        ByteBuffer byteBuffer;
        try {
            int dequeueOutputBuffer = this.f31213d.dequeueOutputBuffer(this.f31214e, TimeUnit.MILLISECONDS.toMicros(2L));
            if (dequeueOutputBuffer == -1) {
                return null;
            }
            if (dequeueOutputBuffer == -3) {
                Log.i(this.f31211b, "codec output buffers changed.", new Object[0]);
                return null;
            } else if (dequeueOutputBuffer == -2) {
                this.f31210a = this.f31213d.getOutputFormat();
                String str = this.f31211b;
                Log.i(str, "codec output format changed: " + this.f31210a, new Object[0]);
                return null;
            } else if (dequeueOutputBuffer < 0) {
                Log.e(this.f31211b, "unexpected result from dequeueOutputBuffer: ".concat(String.valueOf(dequeueOutputBuffer)), new Object[0]);
                return null;
            } else {
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
                    byteBuffer = this.f31213d.getOutputBuffer(dequeueOutputBuffer);
                } else {
                    byteBuffer = this.f31213d.getOutputBuffers()[dequeueOutputBuffer];
                }
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.f31214e.size);
                allocateDirect.put(byteBuffer);
                this.f31213d.releaseOutputBuffer(dequeueOutputBuffer, false);
                return allocateDirect;
            }
        } catch (Exception e10) {
            Log.e(this.f31211b, "dequeueOutputBuffer failed. ".concat(String.valueOf(e10)), new Object[0]);
            return null;
        }
    }

    public final boolean a(MediaFormat mediaFormat) {
        if (this.f31213d == null && mediaFormat != null) {
            try {
                boolean z10 = this.f31212c == a.f31215a;
                if (z10) {
                    this.f31213d = MediaCodec.createEncoderByType("audio/mp4a-latm");
                } else {
                    this.f31213d = MediaCodec.createDecoderByType("audio/mp4a-latm");
                }
                this.f31213d.configure(mediaFormat, (Surface) null, (MediaCrypto) null, z10 ? 1 : 0);
                this.f31213d.start();
                return true;
            } catch (IOException e10) {
                Log.e(this.f31211b, "create codec failed. ".concat(String.valueOf(e10)), new Object[0]);
                a();
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0056  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005d -> B:27:0x0053). Please submit an issue!!! */
    @com.tencent.liteav.base.annotations.CalledByNative
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.nio.ByteBuffer processFrame(java.nio.ByteBuffer r14) {
        /*
            r13 = this;
            android.media.MediaCodec r0 = r13.f31213d
            r1 = 0
            if (r0 == 0) goto L60
            if (r14 != 0) goto L8
            goto L60
        L8:
            r2 = 0
            java.nio.ByteBuffer[] r0 = r0.getInputBuffers()     // Catch: java.lang.Exception -> L41
            if (r0 == 0) goto L37
            int r3 = r0.length     // Catch: java.lang.Exception -> L41
            if (r3 > 0) goto L13
            goto L37
        L13:
            android.media.MediaCodec r3 = r13.f31213d     // Catch: java.lang.Exception -> L41
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L41
            r5 = 2
            long r4 = r4.toMicros(r5)     // Catch: java.lang.Exception -> L41
            int r7 = r3.dequeueInputBuffer(r4)     // Catch: java.lang.Exception -> L41
            if (r7 >= 0) goto L24
            goto L53
        L24:
            int r9 = r14.remaining()     // Catch: java.lang.Exception -> L41
            r0 = r0[r7]     // Catch: java.lang.Exception -> L41
            r0.put(r14)     // Catch: java.lang.Exception -> L41
            android.media.MediaCodec r6 = r13.f31213d     // Catch: java.lang.Exception -> L41
            r8 = 0
            r10 = 0
            r12 = 0
            r6.queueInputBuffer(r7, r8, r9, r10, r12)     // Catch: java.lang.Exception -> L41
            goto L53
        L37:
            java.lang.String r14 = r13.f31211b     // Catch: java.lang.Exception -> L41
            java.lang.String r0 = "get invalid input buffers."
            java.lang.Object[] r3 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L41
            com.tencent.liteav.base.Log.e(r14, r0, r3)     // Catch: java.lang.Exception -> L41
            goto L53
        L41:
            r14 = move-exception
            java.lang.String r0 = r13.f31211b
            java.lang.String r14 = java.lang.String.valueOf(r14)
            java.lang.String r3 = "feedData failed. "
            java.lang.String r14 = r3.concat(r14)
            java.lang.Object[] r3 = new java.lang.Object[r2]
            com.tencent.liteav.base.Log.e(r0, r14, r3)
        L53:
            r14 = 3
            if (r2 >= r14) goto L60
            java.nio.ByteBuffer r14 = r13.b()
            if (r14 == 0) goto L5d
            return r14
        L5d:
            int r2 = r2 + 1
            goto L53
        L60:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.commonaudio.codec.AacMediaCodecWrapper.processFrame(java.nio.ByteBuffer):java.nio.ByteBuffer");
    }

    public final void a() {
        MediaCodec mediaCodec = this.f31213d;
        if (mediaCodec == null) {
            return;
        }
        try {
            mediaCodec.stop();
        } catch (Exception e10) {
            Log.e(this.f31211b, "codec stop failed.".concat(String.valueOf(e10)), new Object[0]);
        }
        try {
            this.f31213d.release();
        } catch (Exception e11) {
            Log.e(this.f31211b, "codec release failed.".concat(String.valueOf(e11)), new Object[0]);
        }
        this.f31213d = null;
    }
}
