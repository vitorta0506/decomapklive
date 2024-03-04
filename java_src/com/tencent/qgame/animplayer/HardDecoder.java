package com.tencent.qgame.animplayer;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import com.tencent.qgame.animplayer.file.IFileContainer;
import com.tencent.qgame.animplayer.util.ALog;
import com.tencent.qgame.animplayer.util.MediaUtil;
import java.nio.ByteBuffer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\r\u0018\u0000 52\u00020\u00012\u00020\u0002:\u00015B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u0012\u0010\u001b\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u0010H\u0016J\u001c\u0010\u001d\u001a\u00020\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0006\u0010\"\u001a\u00020\u0019J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010'\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0002J@\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0002J\u0018\u00103\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/tencent/qgame/animplayer/HardDecoder;", "Lcom/tencent/qgame/animplayer/Decoder;", "Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;", "player", "Lcom/tencent/qgame/animplayer/AnimPlayer;", "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V", "alignHeight", "", "alignWidth", "bufferInfo", "Landroid/media/MediaCodec$BufferInfo;", "getBufferInfo", "()Landroid/media/MediaCodec$BufferInfo;", "bufferInfo$delegate", "Lkotlin/Lazy;", "glTexture", "Landroid/graphics/SurfaceTexture;", "needDestroy", "", "needYUV", "outputFormat", "Landroid/media/MediaFormat;", "videoHeight", "videoWidth", "destroy", "", "destroyInner", "onFrameAvailable", "surfaceTexture", "release", "decoder", "Landroid/media/MediaCodec;", "extractor", "Landroid/media/MediaExtractor;", "renderData", "start", "fileContainer", "Lcom/tencent/qgame/animplayer/file/IFileContainer;", "startDecode", "startPlay", "yuv420spTop", "", "yuv420sp", "yuvCopy", "src", "srcOffset", "inWidth", "inHeight", "dest", "outWidth", "outHeight", "yuvProcess", "outputIndex", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class HardDecoder extends Decoder implements SurfaceTexture.OnFrameAvailableListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HardDecoder.class), "bufferInfo", "getBufferInfo()Landroid/media/MediaCodec$BufferInfo;"))};
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.HardDecoder";
    private int alignHeight;
    private int alignWidth;
    private final Lazy bufferInfo$delegate;
    private SurfaceTexture glTexture;
    private boolean needDestroy;
    private boolean needYUV;
    private MediaFormat outputFormat;
    private int videoHeight;
    private int videoWidth;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/HardDecoder$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public HardDecoder(@NotNull AnimPlayer animPlayer) {
        super(animPlayer);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<MediaCodec.BufferInfo>() { // from class: com.tencent.qgame.animplayer.HardDecoder$bufferInfo$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MediaCodec.BufferInfo invoke() {
                return new MediaCodec.BufferInfo();
            }
        });
        this.bufferInfo$delegate = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void destroyInner() {
        Handler handler = getRenderThread().getHandler();
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.qgame.animplayer.HardDecoder$destroyInner$1
                @Override // java.lang.Runnable
                public final void run() {
                    HardDecoder.this.getPlayer().getPluginManager().onDestroy();
                    IRenderListener render = HardDecoder.this.getRender();
                    if (render != null) {
                        render.destroyRender();
                    }
                    HardDecoder.this.setRender(null);
                    HardDecoder.this.onVideoDestroy();
                    HardDecoder.this.destroyThread();
                }
            });
        }
    }

    private final MediaCodec.BufferInfo getBufferInfo() {
        Lazy lazy = this.bufferInfo$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (MediaCodec.BufferInfo) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void release(final MediaCodec mediaCodec, final MediaExtractor mediaExtractor) {
        Handler handler = getRenderThread().getHandler();
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.qgame.animplayer.HardDecoder$release$1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z10;
                    SurfaceTexture surfaceTexture;
                    IRenderListener render = HardDecoder.this.getRender();
                    if (render != null) {
                        render.clearFrame();
                    }
                    try {
                        ALog.INSTANCE.i("AnimPlayer.HardDecoder", "release");
                        MediaCodec mediaCodec2 = mediaCodec;
                        if (mediaCodec2 != null) {
                            mediaCodec2.stop();
                            mediaCodec2.release();
                        }
                        MediaExtractor mediaExtractor2 = mediaExtractor;
                        if (mediaExtractor2 != null) {
                            mediaExtractor2.release();
                        }
                        surfaceTexture = HardDecoder.this.glTexture;
                        if (surfaceTexture != null) {
                            surfaceTexture.release();
                        }
                        HardDecoder.this.glTexture = null;
                        HardDecoder.this.getSpeedControlUtil().reset();
                        HardDecoder.this.getPlayer().getPluginManager().onRelease();
                        IRenderListener render2 = HardDecoder.this.getRender();
                        if (render2 != null) {
                            render2.releaseTexture();
                        }
                    } catch (Throwable th2) {
                        ALog aLog = ALog.INSTANCE;
                        aLog.e("AnimPlayer.HardDecoder", "release e=" + th2, th2);
                    }
                    HardDecoder.this.setRunning(false);
                    HardDecoder.this.onVideoComplete();
                    z10 = HardDecoder.this.needDestroy;
                    if (z10) {
                        HardDecoder.this.destroyInner();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01cd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startDecode(android.media.MediaExtractor r21, android.media.MediaCodec r22) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qgame.animplayer.HardDecoder.startDecode(android.media.MediaExtractor, android.media.MediaCodec):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v23, types: [android.media.MediaCodec, T] */
    /* JADX WARN: Type inference failed for: r12v5, types: [T, android.media.MediaExtractor] */
    /* JADX WARN: Type inference failed for: r12v8, types: [T, android.media.MediaFormat] */
    public final void startPlay(IFileContainer iFileContainer) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = null;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = null;
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        objectRef3.element = null;
        try {
            MediaUtil mediaUtil = MediaUtil.INSTANCE;
            ?? extractor = mediaUtil.getExtractor(iFileContainer);
            objectRef.element = extractor;
            MediaExtractor mediaExtractor = (MediaExtractor) extractor;
            int selectVideoTrack = mediaUtil.selectVideoTrack(extractor);
            if (selectVideoTrack >= 0) {
                ((MediaExtractor) objectRef.element).selectTrack(selectVideoTrack);
                ?? trackFormat = ((MediaExtractor) objectRef.element).getTrackFormat(selectVideoTrack);
                objectRef3.element = trackFormat;
                MediaFormat mediaFormat = (MediaFormat) trackFormat;
                if (trackFormat != 0) {
                    MediaFormat mediaFormat2 = (MediaFormat) trackFormat;
                    if (mediaUtil.checkIsHevc(trackFormat)) {
                        int i9 = Build.VERSION.SDK_INT;
                        if (!mediaUtil.checkSupportCodec("video/hevc")) {
                            onFailed(10008, "0x8 hevc not support sdk:" + i9 + ",support hevc:" + mediaUtil.checkSupportCodec("video/hevc"));
                            release(null, null);
                            return;
                        }
                    }
                    this.videoWidth = ((MediaFormat) objectRef3.element).getInteger("width");
                    int integer = ((MediaFormat) objectRef3.element).getInteger("height");
                    this.videoHeight = integer;
                    this.alignWidth = this.videoWidth;
                    this.alignHeight = integer;
                    ALog aLog = ALog.INSTANCE;
                    aLog.i(TAG, "Video size is " + this.videoWidth + " x " + this.videoHeight);
                    boolean z10 = this.videoWidth % 16 != 0 && getPlayer().getEnableVersion1();
                    this.needYUV = z10;
                    if (prepareRender(z10)) {
                        preparePlay(this.videoWidth, this.videoHeight);
                        IRenderListener render = getRender();
                        if (render != null) {
                            SurfaceTexture surfaceTexture = new SurfaceTexture(render.getExternalTexture());
                            surfaceTexture.setOnFrameAvailableListener(this);
                            surfaceTexture.setDefaultBufferSize(this.videoWidth, this.videoHeight);
                            this.glTexture = surfaceTexture;
                            render.clearFrame();
                        }
                        try {
                            String string = ((MediaFormat) objectRef3.element).getString("mime");
                            if (string == null) {
                                string = "";
                            }
                            aLog.i(TAG, "Video MIME is " + string);
                            final ?? createDecoderByType = MediaCodec.createDecoderByType(string);
                            if (this.needYUV) {
                                ((MediaFormat) objectRef3.element).setInteger("color-format", 19);
                                createDecoderByType.configure((MediaFormat) objectRef3.element, null, null, 0);
                            } else {
                                createDecoderByType.configure((MediaFormat) objectRef3.element, new Surface(this.glTexture), null, 0);
                            }
                            createDecoderByType.start();
                            Handler handler = getDecodeThread().getHandler();
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.tencent.qgame.animplayer.HardDecoder$startPlay$$inlined$apply$lambda$1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            MediaCodec mediaCodec = createDecoderByType;
                                            Intrinsics.checkExpressionValueIsNotNull(mediaCodec, "this");
                                            this.startDecode((MediaExtractor) objectRef.element, mediaCodec);
                                        } catch (Throwable th2) {
                                            ALog aLog2 = ALog.INSTANCE;
                                            aLog2.e("AnimPlayer.HardDecoder", "MediaCodec exception e=" + th2, th2);
                                            HardDecoder hardDecoder = this;
                                            hardDecoder.onFailed(10002, "0x2 MediaCodec exception e=" + th2);
                                            this.release((MediaCodec) objectRef2.element, (MediaExtractor) objectRef.element);
                                        }
                                    }
                                });
                            }
                            objectRef2.element = createDecoderByType;
                            return;
                        } catch (Throwable th2) {
                            ALog aLog2 = ALog.INSTANCE;
                            aLog2.e(TAG, "MediaCodec configure exception e=" + th2, th2);
                            onFailed(10002, "0x2 MediaCodec exception e=" + th2);
                            release((MediaCodec) objectRef2.element, (MediaExtractor) objectRef.element);
                            return;
                        }
                    }
                    throw new RuntimeException("render create fail");
                }
                throw new RuntimeException("format is null");
            }
            throw new RuntimeException("No video track found");
        } catch (Throwable th3) {
            ALog aLog3 = ALog.INSTANCE;
            aLog3.e(TAG, "MediaExtractor exception e=" + th3, th3);
            onFailed(10001, "0x1 MediaExtractor exception e=" + th3);
            release((MediaCodec) objectRef2.element, (MediaExtractor) objectRef.element);
        }
    }

    private final byte[] yuv420spTop(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i9 = this.alignWidth;
        int i10 = this.alignHeight;
        int i11 = i9 * i10;
        System.arraycopy(bArr, 0, bArr2, 0, i9 * i10);
        int i12 = i11;
        int i13 = i12;
        while (i12 < (i11 * 3) / 2) {
            bArr2[i13] = bArr[i12];
            bArr2[(i11 / 4) + i13] = bArr[i12 + 1];
            i12 += 2;
            i13++;
        }
        return bArr2;
    }

    private final void yuvCopy(byte[] bArr, int i9, int i10, int i11, byte[] bArr2, int i12, int i13) {
        for (int i14 = 0; i14 < i11; i14++) {
            if (i14 < i13) {
                System.arraycopy(bArr, (i14 * i10) + i9, bArr2, i14 * i12, i12);
            }
        }
    }

    private final void yuvProcess(MediaCodec mediaCodec, int i9) {
        ByteBuffer byteBuffer = mediaCodec.getOutputBuffers()[i9];
        if (byteBuffer != null) {
            byteBuffer.position(0);
            byteBuffer.limit(getBufferInfo().offset + getBufferInfo().size);
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr);
            if (true ^ (remaining == 0)) {
                int i10 = this.videoWidth;
                int i11 = this.videoHeight;
                byte[] bArr2 = new byte[i10 * i11];
                byte[] bArr3 = new byte[(i10 * i11) / 4];
                byte[] bArr4 = new byte[(i10 * i11) / 4];
                MediaFormat mediaFormat = this.outputFormat;
                if (mediaFormat != null && mediaFormat.getInteger("color-format") == 21) {
                    bArr = yuv420spTop(bArr);
                }
                yuvCopy(bArr, 0, this.alignWidth, this.alignHeight, bArr2, this.videoWidth, this.videoHeight);
                int i12 = this.alignWidth;
                int i13 = this.alignHeight;
                yuvCopy(bArr, i12 * i13, i12 / 2, i13 / 2, bArr3, this.videoWidth / 2, this.videoHeight / 2);
                int i14 = this.alignWidth;
                int i15 = this.alignHeight;
                yuvCopy(bArr, ((i14 * i15) * 5) / 4, i14 / 2, i15 / 2, bArr4, this.videoWidth / 2, this.videoHeight / 2);
                IRenderListener render = getRender();
                if (render != null) {
                    render.setYUVData(this.videoWidth, this.videoHeight, bArr2, bArr3, bArr4);
                }
                renderData();
            }
        }
    }

    @Override // com.tencent.qgame.animplayer.Decoder
    public void destroy() {
        this.needDestroy = true;
        if (isRunning()) {
            stop();
        } else {
            destroyInner();
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(@Nullable SurfaceTexture surfaceTexture) {
        if (isStopReq()) {
            return;
        }
        ALog.INSTANCE.d(TAG, "onFrameAvailable");
        renderData();
    }

    public final void renderData() {
        Handler handler = getRenderThread().getHandler();
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.qgame.animplayer.HardDecoder$renderData$1
                @Override // java.lang.Runnable
                public final void run() {
                    SurfaceTexture surfaceTexture;
                    try {
                        surfaceTexture = HardDecoder.this.glTexture;
                        if (surfaceTexture != null) {
                            surfaceTexture.updateTexImage();
                            IRenderListener render = HardDecoder.this.getRender();
                            if (render != null) {
                                render.renderFrame();
                            }
                            HardDecoder.this.getPlayer().getPluginManager().onRendering();
                            IRenderListener render2 = HardDecoder.this.getRender();
                            if (render2 != null) {
                                render2.swapBuffers();
                            }
                        }
                    } catch (Throwable th2) {
                        ALog aLog = ALog.INSTANCE;
                        aLog.e("AnimPlayer.HardDecoder", "render exception=" + th2, th2);
                    }
                }
            });
        }
    }

    @Override // com.tencent.qgame.animplayer.Decoder
    public void start(@NotNull final IFileContainer iFileContainer) {
        setStopReq(false);
        this.needDestroy = false;
        setRunning(true);
        Handler handler = getRenderThread().getHandler();
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.qgame.animplayer.HardDecoder$start$1
                @Override // java.lang.Runnable
                public final void run() {
                    HardDecoder.this.startPlay(iFileContainer);
                }
            });
        }
    }
}
