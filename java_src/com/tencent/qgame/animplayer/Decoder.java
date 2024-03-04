package com.tencent.qgame.animplayer;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.qgame.animplayer.file.IFileContainer;
import com.tencent.qgame.animplayer.inter.IAnimListener;
import com.tencent.qgame.animplayer.util.ALog;
import com.tencent.qgame.animplayer.util.SpeedControlUtil;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 J2\u00020\u0001:\u0001JB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010,\u001a\u00020-H&J\u0006\u0010.\u001a\u00020-J\u001a\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\n2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0016\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nJ\b\u00106\u001a\u00020-H\u0016J\b\u00107\u001a\u00020-H\u0016J\u001a\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020\n2\b\u0010:\u001a\u0004\u0018\u00010;H\u0016J\b\u0010<\u001a\u00020-H\u0016J\u0016\u0010=\u001a\u00020-2\u0006\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020\nJ\u000e\u0010@\u001a\u00020\u00112\u0006\u0010A\u001a\u00020\u0011J\u0006\u0010B\u001a\u00020\u0011J\u0010\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020EH&J\u0006\u0010F\u001a\u00020-J\u0016\u0010G\u001a\u00020-2\u0006\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0011\u0010\"\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\bR\u001b\u0010$\u001a\u00020%8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b&\u0010'R\u000e\u0010*\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006K"}, d2 = {"Lcom/tencent/qgame/animplayer/Decoder;", "Lcom/tencent/qgame/animplayer/inter/IAnimListener;", "player", "Lcom/tencent/qgame/animplayer/AnimPlayer;", "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V", "decodeThread", "Lcom/tencent/qgame/animplayer/HandlerHolder;", "getDecodeThread", "()Lcom/tencent/qgame/animplayer/HandlerHolder;", "value", "", "fps", "getFps", "()I", "setFps", "(I)V", "isRunning", "", "()Z", "setRunning", "(Z)V", "isStopReq", "setStopReq", "playLoop", "getPlayLoop", "setPlayLoop", "getPlayer", "()Lcom/tencent/qgame/animplayer/AnimPlayer;", "render", "Lcom/tencent/qgame/animplayer/IRenderListener;", "getRender", "()Lcom/tencent/qgame/animplayer/IRenderListener;", "setRender", "(Lcom/tencent/qgame/animplayer/IRenderListener;)V", "renderThread", "getRenderThread", "speedControlUtil", "Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;", "getSpeedControlUtil", "()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;", "speedControlUtil$delegate", "Lkotlin/Lazy;", "surfaceHeight", "surfaceWidth", "destroy", "", "destroyThread", "onFailed", "errorType", "errorMsg", "", "onSurfaceSizeChanged", "width", "height", "onVideoComplete", "onVideoDestroy", "onVideoRender", "frameIndex", "config", "Lcom/tencent/qgame/animplayer/AnimConfig;", "onVideoStart", "preparePlay", "videoWidth", "videoHeight", "prepareRender", "needYUV", "prepareThread", "start", "fileContainer", "Lcom/tencent/qgame/animplayer/file/IFileContainer;", "stop", "videoSizeChange", "newWidth", "newHeight", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public abstract class Decoder implements IAnimListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Decoder.class), "speedControlUtil", "getSpeedControlUtil()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;"))};
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.Decoder";
    private int fps;
    private boolean isRunning;
    private boolean isStopReq;
    private int playLoop;
    @NotNull
    private final AnimPlayer player;
    @Nullable
    private IRenderListener render;
    @NotNull
    private final Lazy speedControlUtil$delegate;
    private int surfaceHeight;
    private int surfaceWidth;
    @NotNull
    private final HandlerHolder renderThread = new HandlerHolder(null, null);
    @NotNull
    private final HandlerHolder decodeThread = new HandlerHolder(null, null);

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/tencent/qgame/animplayer/Decoder$Companion;", "", "()V", "TAG", "", "createThread", "", "handlerHolder", "Lcom/tencent/qgame/animplayer/HandlerHolder;", "name", "quitSafely", "Landroid/os/HandlerThread;", "thread", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean createThread(@NotNull HandlerHolder handlerHolder, @NotNull String str) {
            HandlerThread thread;
            try {
                if (handlerHolder.getThread() == null || !((thread = handlerHolder.getThread()) == null || thread.isAlive())) {
                    HandlerThread handlerThread = new HandlerThread(str);
                    handlerThread.start();
                    handlerHolder.setHandler(new Handler(handlerThread.getLooper()));
                    handlerHolder.setThread(handlerThread);
                    return true;
                }
                return true;
            } catch (OutOfMemoryError e10) {
                ALog.INSTANCE.e(Decoder.TAG, "createThread OOM", e10);
                return false;
            }
        }

        @Nullable
        public final HandlerThread quitSafely(@Nullable HandlerThread handlerThread) {
            if (handlerThread != null) {
                handlerThread.quitSafely();
                return null;
            }
            return null;
        }
    }

    public Decoder(@NotNull AnimPlayer animPlayer) {
        Lazy lazy;
        this.player = animPlayer;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SpeedControlUtil>() { // from class: com.tencent.qgame.animplayer.Decoder$speedControlUtil$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SpeedControlUtil invoke() {
                return new SpeedControlUtil();
            }
        });
        this.speedControlUtil$delegate = lazy;
    }

    public abstract void destroy();

    public final void destroyThread() {
        if (this.player.isDetachedFromWindow()) {
            ALog.INSTANCE.i(TAG, "destroyThread");
            Handler handler = this.renderThread.getHandler();
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Handler handler2 = this.decodeThread.getHandler();
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
            }
            HandlerHolder handlerHolder = this.renderThread;
            Companion companion = Companion;
            handlerHolder.setThread(companion.quitSafely(handlerHolder.getThread()));
            HandlerHolder handlerHolder2 = this.decodeThread;
            handlerHolder2.setThread(companion.quitSafely(handlerHolder2.getThread()));
            this.renderThread.setHandler(null);
            this.decodeThread.setHandler(null);
        }
    }

    @NotNull
    public final HandlerHolder getDecodeThread() {
        return this.decodeThread;
    }

    public final int getFps() {
        return this.fps;
    }

    public final int getPlayLoop() {
        return this.playLoop;
    }

    @NotNull
    public final AnimPlayer getPlayer() {
        return this.player;
    }

    @Nullable
    public final IRenderListener getRender() {
        return this.render;
    }

    @NotNull
    public final HandlerHolder getRenderThread() {
        return this.renderThread;
    }

    @NotNull
    public final SpeedControlUtil getSpeedControlUtil() {
        Lazy lazy = this.speedControlUtil$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (SpeedControlUtil) lazy.getValue();
    }

    public final boolean isRunning() {
        return this.isRunning;
    }

    public final boolean isStopReq() {
        return this.isStopReq;
    }

    @Override // com.tencent.qgame.animplayer.inter.IAnimListener
    public void onFailed(int i9, @Nullable String str) {
        ALog aLog = ALog.INSTANCE;
        aLog.e(TAG, "onFailed errorType=" + i9 + ", errorMsg=" + str);
        IAnimListener animListener = this.player.getAnimListener();
        if (animListener != null) {
            animListener.onFailed(i9, str);
        }
    }

    public final void onSurfaceSizeChanged(int i9, int i10) {
        this.surfaceWidth = i9;
        this.surfaceHeight = i10;
        IRenderListener iRenderListener = this.render;
        if (iRenderListener != null) {
            iRenderListener.updateViewPort(i9, i10);
        }
    }

    @Override // com.tencent.qgame.animplayer.inter.IAnimListener
    public void onVideoComplete() {
        ALog.INSTANCE.i(TAG, "onVideoComplete");
        IAnimListener animListener = this.player.getAnimListener();
        if (animListener != null) {
            animListener.onVideoComplete();
        }
    }

    @Override // com.tencent.qgame.animplayer.inter.IAnimListener
    public boolean onVideoConfigReady(@NotNull AnimConfig animConfig) {
        return IAnimListener.DefaultImpls.onVideoConfigReady(this, animConfig);
    }

    @Override // com.tencent.qgame.animplayer.inter.IAnimListener
    public void onVideoDestroy() {
        ALog.INSTANCE.i(TAG, "onVideoDestroy");
        IAnimListener animListener = this.player.getAnimListener();
        if (animListener != null) {
            animListener.onVideoDestroy();
        }
    }

    @Override // com.tencent.qgame.animplayer.inter.IAnimListener
    public void onVideoRender(int i9, @Nullable AnimConfig animConfig) {
        ALog.INSTANCE.d(TAG, "onVideoRender");
        IAnimListener animListener = this.player.getAnimListener();
        if (animListener != null) {
            animListener.onVideoRender(i9, animConfig);
        }
    }

    @Override // com.tencent.qgame.animplayer.inter.IAnimListener
    public void onVideoStart() {
        ALog.INSTANCE.i(TAG, "onVideoStart");
        IAnimListener animListener = this.player.getAnimListener();
        if (animListener != null) {
            animListener.onVideoStart();
        }
    }

    public final void preparePlay(int i9, int i10) {
        IRenderListener iRenderListener;
        this.player.getConfigManager().defaultConfig(i9, i10);
        AnimConfig config = this.player.getConfigManager().getConfig();
        if (config != null && (iRenderListener = this.render) != null) {
            iRenderListener.setAnimConfig(config);
        }
        this.player.getPluginManager().onRenderCreate();
    }

    public final boolean prepareRender(boolean z10) {
        if (this.render == null) {
            ALog aLog = ALog.INSTANCE;
            aLog.i(TAG, "prepareRender");
            SurfaceTexture surfaceTexture = this.player.getAnimView().getSurfaceTexture();
            if (surfaceTexture != null) {
                if (z10) {
                    aLog.i(TAG, "use yuv render");
                    this.render = new YUVRender(surfaceTexture);
                } else {
                    Render render = new Render(surfaceTexture);
                    render.updateViewPort(this.surfaceWidth, this.surfaceHeight);
                    this.render = render;
                }
            }
        }
        return this.render != null;
    }

    public final boolean prepareThread() {
        Companion companion = Companion;
        return companion.createThread(this.renderThread, "anim_render_thread") && companion.createThread(this.decodeThread, "anim_decode_thread");
    }

    public final void setFps(int i9) {
        getSpeedControlUtil().setFixedPlaybackRate(i9);
        this.fps = i9;
    }

    public final void setPlayLoop(int i9) {
        this.playLoop = i9;
    }

    public final void setRender(@Nullable IRenderListener iRenderListener) {
        this.render = iRenderListener;
    }

    public final void setRunning(boolean z10) {
        this.isRunning = z10;
    }

    public final void setStopReq(boolean z10) {
        this.isStopReq = z10;
    }

    public abstract void start(@NotNull IFileContainer iFileContainer);

    public final void stop() {
        this.isStopReq = true;
    }

    public final void videoSizeChange(int i9, int i10) {
        AnimConfig config;
        if (i9 <= 0 || i10 <= 0 || (config = this.player.getConfigManager().getConfig()) == null) {
            return;
        }
        if (config.getVideoWidth() == i9 && config.getVideoHeight() == i10) {
            return;
        }
        ALog aLog = ALog.INSTANCE;
        aLog.i(TAG, "videoSizeChange old=(" + config.getVideoWidth() + ',' + config.getVideoHeight() + "), new=(" + i9 + ',' + i10 + ')');
        config.setVideoWidth(i9);
        config.setVideoHeight(i10);
        IRenderListener iRenderListener = this.render;
        if (iRenderListener != null) {
            iRenderListener.setAnimConfig(config);
        }
    }
}
