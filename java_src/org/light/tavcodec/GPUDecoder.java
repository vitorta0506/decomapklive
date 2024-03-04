package org.light.tavcodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;
import org.light.tavcodec.SynchronizeHandler;
/* loaded from: classes7.dex */
public class GPUDecoder {
    private static final int DECODER_THREAD_MAX_COUNT = 10;
    private static final int END_OF_STREAM = -3;
    private static final int ERROR = -2;
    private static final int INIT_DECODER_TIMEOUT_MS = 2000;
    private static final int SUCCESS = 0;
    private static final int TIMEOUT_US = 1000;
    private static final int TRY_AGAIN_LATER = -1;
    private static final AtomicInteger decoderThreadCount = new AtomicInteger();
    private MediaCodec decoder;
    private Surface outputSurface = null;
    private HashSet<Long> pendingTimes = new HashSet<>();
    private boolean queueEOSBuffer = false;
    private boolean disableFlush = true;
    private MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
    private int lastOutputBufferIndex = -1;
    private long lastPresentationTime = 0;
    private boolean released = false;

    private static GPUDecoder Create(Surface surface) {
        if (forceSoftwareDecoder()) {
            return null;
        }
        GPUDecoder gPUDecoder = new GPUDecoder();
        gPUDecoder.outputSurface = surface;
        return gPUDecoder;
    }

    private int dequeueInputBuffer() {
        try {
            return this.decoder.dequeueInputBuffer(1000L);
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    private int dequeueOutputBuffer() {
        try {
            return this.decoder.dequeueOutputBuffer(this.bufferInfo, 1000L);
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    private static boolean forceSoftwareDecoder() {
        return false;
    }

    private ByteBuffer getInputBuffer(int i9) {
        try {
            return this.decoder.getInputBuffer(i9);
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private boolean initDecoder(final MediaFormat mediaFormat) {
        AtomicInteger atomicInteger = decoderThreadCount;
        if (atomicInteger.get() >= 10) {
            return false;
        }
        atomicInteger.getAndIncrement();
        HandlerThread handlerThread = new HandlerThread("libpag_GPUDecoder_init_decoder");
        handlerThread.start();
        final MediaCodec[] mediaCodecArr = {null};
        boolean runSync = new SynchronizeHandler(handlerThread.getLooper()).runSync(new SynchronizeHandler.TimeoutRunnable() { // from class: org.light.tavcodec.GPUDecoder.1
            private MediaCodec decoder;
            private long startTime;

            @Override // org.light.tavcodec.SynchronizeHandler.TimeoutRunnable
            public void afterRun(boolean z10) {
                if (z10 && this.decoder != null) {
                    long uptimeMillis = SystemClock.uptimeMillis() - this.startTime;
                    try {
                        this.decoder.stop();
                    } catch (Exception unused) {
                    }
                    try {
                        this.decoder.release();
                    } catch (Exception unused2) {
                    }
                    this.decoder = null;
                    new RuntimeException("init decoder timeout. cost: " + uptimeMillis + "ms").printStackTrace();
                }
                if (!z10) {
                    mediaCodecArr[0] = this.decoder;
                }
                GPUDecoder.decoderThreadCount.getAndDecrement();
            }

            @Override // java.lang.Runnable
            public void run() {
                this.startTime = SystemClock.uptimeMillis();
                try {
                    MediaCodec createDecoderByType = MediaCodec.createDecoderByType(mediaFormat.getString("mime"));
                    this.decoder = createDecoderByType;
                    createDecoderByType.configure(mediaFormat, GPUDecoder.this.outputSurface, (MediaCrypto) null, 0);
                    this.decoder.start();
                } catch (Exception unused) {
                    MediaCodec mediaCodec = this.decoder;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                        this.decoder = null;
                    }
                }
            }
        }, 2000L);
        handlerThread.quitSafely();
        if (runSync) {
            MediaCodec mediaCodec = mediaCodecArr[0];
            this.decoder = mediaCodec;
            return mediaCodec != null;
        }
        return false;
    }

    private boolean onConfigure(MediaFormat mediaFormat) {
        if (this.outputSurface == null) {
            return false;
        }
        return initDecoder(mediaFormat);
    }

    private int onDecodeFrame() {
        try {
            int dequeueOutputBuffer = dequeueOutputBuffer();
            MediaCodec.BufferInfo bufferInfo = this.bufferInfo;
            if ((bufferInfo.flags & 4) != 0) {
                if (dequeueOutputBuffer >= 0) {
                    this.queueEOSBuffer = false;
                    releaseOutputBuffer(dequeueOutputBuffer, false);
                }
                return -3;
            }
            if (dequeueOutputBuffer >= 0) {
                this.lastPresentationTime = bufferInfo.presentationTimeUs;
                releaseOutputBuffer();
                this.lastOutputBufferIndex = dequeueOutputBuffer;
                this.pendingTimes.remove(Long.valueOf(this.bufferInfo.presentationTimeUs));
                if (this.pendingTimes.isEmpty() && this.queueEOSBuffer) {
                    int i9 = 100;
                    while (true) {
                        int i10 = i9 - 1;
                        if (i9 <= 0) {
                            break;
                        }
                        int dequeueOutputBuffer2 = dequeueOutputBuffer();
                        if (dequeueOutputBuffer2 > 0) {
                            if ((this.bufferInfo.flags & 4) != 0) {
                                this.queueEOSBuffer = false;
                                releaseOutputBuffer(dequeueOutputBuffer2, false);
                                break;
                            }
                            Log.e("GPUDecoder", "dequeue non-EOS buffer when pendingTimes is empty!");
                        }
                        Thread.sleep(1L);
                        i9 = i10;
                    }
                    return -3;
                }
            }
            return dequeueOutputBuffer >= 0 ? 0 : -1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return -2;
        }
    }

    private int onEndOfStream() {
        int dequeueInputBuffer = dequeueInputBuffer();
        if (dequeueInputBuffer >= 0) {
            int queueInputBuffer = queueInputBuffer(dequeueInputBuffer, 0, 0, 0L, 4);
            if (queueInputBuffer == 0) {
                this.queueEOSBuffer = true;
            }
            return queueInputBuffer;
        }
        return -1;
    }

    private void onFlush() {
        if (this.disableFlush) {
            return;
        }
        try {
            this.decoder.flush();
            this.bufferInfo = new MediaCodec.BufferInfo();
            releaseOutputBuffer();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.pendingTimes.clear();
        this.queueEOSBuffer = false;
    }

    private void onRelease() {
        if (this.released) {
            return;
        }
        this.released = true;
        releaseOutputBuffer();
        releaseDecoder();
    }

    private boolean onRenderFrame() {
        int i9 = this.lastOutputBufferIndex;
        if (i9 != -1) {
            int releaseOutputBuffer = releaseOutputBuffer(i9, true);
            this.lastOutputBufferIndex = -1;
            return releaseOutputBuffer == 0;
        }
        return false;
    }

    private int onSendBytes(ByteBuffer byteBuffer, long j10) {
        int dequeueInputBuffer = dequeueInputBuffer();
        if (dequeueInputBuffer >= 0) {
            ByteBuffer inputBuffer = getInputBuffer(dequeueInputBuffer);
            if (inputBuffer == null) {
                return -2;
            }
            inputBuffer.clear();
            byteBuffer.position(0);
            inputBuffer.put(byteBuffer);
            int queueInputBuffer = queueInputBuffer(dequeueInputBuffer, 0, byteBuffer.limit(), j10, 0);
            if (queueInputBuffer == 0) {
                this.pendingTimes.add(Long.valueOf(j10));
            }
            return queueInputBuffer;
        }
        return -1;
    }

    private long presentationTime() {
        MediaCodec.BufferInfo bufferInfo = this.bufferInfo;
        return (bufferInfo.flags & 4) == 0 ? bufferInfo.presentationTimeUs : this.lastPresentationTime;
    }

    private int queueInputBuffer(int i9, int i10, int i11, long j10, int i12) {
        try {
            this.decoder.queueInputBuffer(i9, i10, i11, j10, i12);
            this.disableFlush = false;
            return 0;
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return -2;
        }
    }

    private void releaseAsync(final Runnable runnable) {
        if (runnable == null) {
            return;
        }
        decoderThreadCount.getAndIncrement();
        final HandlerThread handlerThread = new HandlerThread("libpag_GPUDecoder_release_decoder");
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: org.light.tavcodec.GPUDecoder.3
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                GPUDecoder.decoderThreadCount.getAndDecrement();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: org.light.tavcodec.GPUDecoder.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        handlerThread.quitSafely();
                    }
                });
            }
        });
    }

    private void releaseDecoder() {
        if (this.decoder == null) {
            return;
        }
        releaseAsync(new Runnable() { // from class: org.light.tavcodec.GPUDecoder.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    GPUDecoder.this.decoder.stop();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    GPUDecoder.this.decoder.release();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                GPUDecoder.this.decoder = null;
            }
        });
    }

    private void releaseOutputBuffer() {
        int i9 = this.lastOutputBufferIndex;
        if (i9 != -1) {
            releaseOutputBuffer(i9, false);
            this.lastOutputBufferIndex = -1;
        }
    }

    private int releaseOutputBuffer(int i9, boolean z10) {
        try {
            this.decoder.releaseOutputBuffer(i9, z10);
            return 0;
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return -2;
        }
    }
}
