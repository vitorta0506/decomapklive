package com.tencent.qgame.animplayer;

import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.os.Handler;
import com.tencent.qgame.animplayer.file.IFileContainer;
import com.tencent.qgame.animplayer.util.ALog;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 92\u00020\u0001:\u00019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010-\u001a\u00020.J\b\u0010/\u001a\u00020.H\u0002J\u0010\u00100\u001a\u00020&2\u0006\u00101\u001a\u00020&H\u0002J\b\u00102\u001a\u00020\u001cH\u0002J\b\u00103\u001a\u00020.H\u0002J\u000e\u00104\u001a\u00020.2\u0006\u00105\u001a\u000206J\u0010\u00107\u001a\u00020.2\u0006\u00105\u001a\u000206H\u0002J\u0006\u00108\u001a\u00020.R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR\u001a\u0010\"\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001d\"\u0004\b$\u0010\u001fR\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,¨\u0006:"}, d2 = {"Lcom/tencent/qgame/animplayer/AudioPlayer;", "", "player", "Lcom/tencent/qgame/animplayer/AnimPlayer;", "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V", "audioTrack", "Landroid/media/AudioTrack;", "getAudioTrack", "()Landroid/media/AudioTrack;", "setAudioTrack", "(Landroid/media/AudioTrack;)V", "decodeThread", "Lcom/tencent/qgame/animplayer/HandlerHolder;", "getDecodeThread", "()Lcom/tencent/qgame/animplayer/HandlerHolder;", "decoder", "Landroid/media/MediaCodec;", "getDecoder", "()Landroid/media/MediaCodec;", "setDecoder", "(Landroid/media/MediaCodec;)V", "extractor", "Landroid/media/MediaExtractor;", "getExtractor", "()Landroid/media/MediaExtractor;", "setExtractor", "(Landroid/media/MediaExtractor;)V", "isRunning", "", "()Z", "setRunning", "(Z)V", "isStopReq", "setStopReq", "needDestroy", "getNeedDestroy", "setNeedDestroy", "playLoop", "", "getPlayLoop", "()I", "setPlayLoop", "(I)V", "getPlayer", "()Lcom/tencent/qgame/animplayer/AnimPlayer;", "destroy", "", "destroyInner", "getChannelConfig", "channelCount", "prepareThread", "release", "start", "fileContainer", "Lcom/tencent/qgame/animplayer/file/IFileContainer;", "startPlay", "stop", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class AudioPlayer {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.AudioPlayer";
    @Nullable
    private AudioTrack audioTrack;
    @NotNull
    private final HandlerHolder decodeThread = new HandlerHolder(null, null);
    @Nullable
    private MediaCodec decoder;
    @Nullable
    private MediaExtractor extractor;
    private boolean isRunning;
    private boolean isStopReq;
    private boolean needDestroy;
    private int playLoop;
    @NotNull
    private final AnimPlayer player;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/AudioPlayer$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AudioPlayer(@NotNull AnimPlayer animPlayer) {
        this.player = animPlayer;
    }

    private final void destroyInner() {
        if (this.player.isDetachedFromWindow()) {
            ALog.INSTANCE.i(TAG, "destroyThread");
            Handler handler = this.decodeThread.getHandler();
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            HandlerHolder handlerHolder = this.decodeThread;
            handlerHolder.setThread(Decoder.Companion.quitSafely(handlerHolder.getThread()));
        }
    }

    private final int getChannelConfig(int i9) {
        switch (i9) {
            case 1:
                return 2;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            default:
                throw new RuntimeException("Unsupported channel count: " + i9);
        }
    }

    private final boolean prepareThread() {
        return Decoder.Companion.createThread(this.decodeThread, "anim_audio_thread");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void release() {
        try {
            MediaCodec mediaCodec = this.decoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                mediaCodec.release();
            }
            this.decoder = null;
            MediaExtractor mediaExtractor = this.extractor;
            if (mediaExtractor != null) {
                mediaExtractor.release();
            }
            this.extractor = null;
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack != null) {
                audioTrack.pause();
                audioTrack.flush();
                audioTrack.stop();
                audioTrack.release();
            }
            this.audioTrack = null;
        } catch (Throwable th2) {
            ALog aLog = ALog.INSTANCE;
            aLog.e(TAG, "release exception=" + th2, th2);
        }
        this.isRunning = false;
        if (this.needDestroy) {
            destroyInner();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startPlay(com.tencent.qgame.animplayer.file.IFileContainer r24) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qgame.animplayer.AudioPlayer.startPlay(com.tencent.qgame.animplayer.file.IFileContainer):void");
    }

    public final void destroy() {
        this.needDestroy = true;
        if (this.isRunning) {
            stop();
        } else {
            destroyInner();
        }
    }

    @Nullable
    public final AudioTrack getAudioTrack() {
        return this.audioTrack;
    }

    @NotNull
    public final HandlerHolder getDecodeThread() {
        return this.decodeThread;
    }

    @Nullable
    public final MediaCodec getDecoder() {
        return this.decoder;
    }

    @Nullable
    public final MediaExtractor getExtractor() {
        return this.extractor;
    }

    public final boolean getNeedDestroy() {
        return this.needDestroy;
    }

    public final int getPlayLoop() {
        return this.playLoop;
    }

    @NotNull
    public final AnimPlayer getPlayer() {
        return this.player;
    }

    public final boolean isRunning() {
        return this.isRunning;
    }

    public final boolean isStopReq() {
        return this.isStopReq;
    }

    public final void setAudioTrack(@Nullable AudioTrack audioTrack) {
        this.audioTrack = audioTrack;
    }

    public final void setDecoder(@Nullable MediaCodec mediaCodec) {
        this.decoder = mediaCodec;
    }

    public final void setExtractor(@Nullable MediaExtractor mediaExtractor) {
        this.extractor = mediaExtractor;
    }

    public final void setNeedDestroy(boolean z10) {
        this.needDestroy = z10;
    }

    public final void setPlayLoop(int i9) {
        this.playLoop = i9;
    }

    public final void setRunning(boolean z10) {
        this.isRunning = z10;
    }

    public final void setStopReq(boolean z10) {
        this.isStopReq = z10;
    }

    public final void start(@NotNull final IFileContainer iFileContainer) {
        this.isStopReq = false;
        this.needDestroy = false;
        if (prepareThread()) {
            if (this.isRunning) {
                stop();
            }
            this.isRunning = true;
            Handler handler = this.decodeThread.getHandler();
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.tencent.qgame.animplayer.AudioPlayer$start$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            AudioPlayer.this.startPlay(iFileContainer);
                        } catch (Throwable th2) {
                            ALog aLog = ALog.INSTANCE;
                            aLog.e("AnimPlayer.AudioPlayer", "Audio exception=" + th2, th2);
                            AudioPlayer.this.release();
                        }
                    }
                });
            }
        }
    }

    public final void stop() {
        this.isStopReq = true;
    }
}
