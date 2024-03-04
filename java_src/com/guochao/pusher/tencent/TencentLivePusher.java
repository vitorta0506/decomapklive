package com.guochao.pusher.tencent;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.pusher.base.BaseLivePusher;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.guochao.user.RoomInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePusher;
import com.tencent.live2.V2TXLivePusherObserver;
import com.tencent.live2.impl.V2TXLivePusherImpl;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.trtc.TRTCCloud;
import java.io.InputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001:\u0002_`B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010/\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0006H\u0016J\u0010\u00103\u001a\u0002012\u0006\u00102\u001a\u00020\u0006H\u0016J\u0010\u00104\u001a\u0002012\u0006\u00105\u001a\u00020\u0006H\u0016J\b\u00106\u001a\u000201H\u0016J\b\u00107\u001a\u00020\u0006H\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0002J\b\u0010;\u001a\u00020\u001fH\u0002J\b\u0010<\u001a\u000201H\u0016J\b\u0010=\u001a\u000201H\u0016J\u0010\u0010>\u001a\u0002012\u0006\u0010?\u001a\u00020\u000bH\u0016J\b\u0010@\u001a\u000201H\u0016J\u0012\u0010A\u001a\u0002012\b\b\u0001\u0010B\u001a\u00020\u0017H\u0016J\u0010\u0010C\u001a\u0002012\u0006\u0010D\u001a\u00020\u0006H\u0016J\u0010\u0010E\u001a\u0002012\u0006\u0010F\u001a\u00020\u0006H\u0016J\"\u0010G\u001a\u0002012\b\u0010H\u001a\u0004\u0018\u00010\u000b2\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0017H\u0016J\u0012\u0010K\u001a\u0002012\b\u0010L\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010M\u001a\u0002012\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010M\u001a\u0002012\u0006\u0010N\u001a\u00020PH\u0016J&\u0010Q\u001a\u00020\u00172\b\u0010R\u001a\u0004\u0018\u00010\u000b2\b\u0010S\u001a\u0004\u0018\u00010\u000b2\b\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u001c\u0010V\u001a\u0002012\b\u0010R\u001a\u0004\u0018\u00010\u000b2\b\u0010S\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010W\u001a\u000201H\u0016J\b\u0010X\u001a\u000201H\u0016J\u0010\u0010Y\u001a\u0002012\u0006\u0010Z\u001a\u00020\u0006H\u0016J\b\u0010[\u001a\u000201H\u0016J\b\u0010\\\u001a\u000201H\u0016J\b\u0010]\u001a\u000201H\u0002J\b\u0010^\u001a\u000201H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020\u000bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006a"}, d2 = {"Lcom/guochao/pusher/tencent/TencentLivePusher;", "Lcom/guochao/pusher/base/BaseLivePusher;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "audioEnabled", "", "audioMuted", "beautyManager", "Lcom/guochao/pusher/beauty/XMagicBeautyManager;", "currentPushUrl", "", "deviceBitrate", "Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;", "frontCamera", "handler", "Landroid/os/Handler;", "isMirror", "isPusherFrozen", "()Z", "setPusherFrozen", "(Z)V", "lastAudioId", "", "getLastAudioId", "()I", "setLastAudioId", "(I)V", "paused", "placeHolderPath", "preview", "Landroid/view/View;", "previewSet", "previewStarted", "pushSoundLevelListener", "Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;", "getPushSoundLevelListener", "()Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;", "setPushSoundLevelListener", "(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V", "pusher", "Lcom/tencent/live2/V2TXLivePusher;", TypedValues.Custom.S_STRING, "getString", "()Ljava/lang/String;", "thirdBeauty", "videoMuted", "calBit", "enableAudio", "", "enable", "enableCamera", "enableThirdBeauty", TypedValues.Custom.S_BOOLEAN, "freezePusher", "isPushing", "makeVideoResolution", "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;", "v2TXLiveVideoEncoderParam", "obtainPreviewView", "onPause", "onResume", "playBGM", TCConstants.VIDEO_RECORD_VIDEPATH, "reset", "setLiveResolution", "liveResolution", "setMirror", TCConstants.ELK_ACTION_MIRROR, "setMute", "mute", "setPauseImage", "assetPath", "pauseTime", "pauseFPS", "setSoundLevelListener", "listener", "startPreview", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/TextureView;", "Landroid/view/ViewGroup;", "startPush", "cdnPushUrl", "streamId", "roomInfo", "Lcom/guochao/user/RoomInfo;", "startPushToRtc", "stopAll", "stopBGM", "stopPreview", "clearLastFrame", "stopPush", "switchCamera", "switchToMedia", "unfreezePusher", "DeviceBitrate", "PushObserver", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class TencentLivePusher extends BaseLivePusher {
    private boolean audioEnabled;
    private boolean audioMuted;
    @NotNull
    private final XMagicBeautyManager beautyManager;
    @Nullable
    private String currentPushUrl;
    @NotNull
    private final DeviceBitrate deviceBitrate;
    private boolean frontCamera;
    @NotNull
    private final Handler handler;
    private boolean isMirror;
    private boolean isPusherFrozen;
    private int lastAudioId;
    private boolean paused;
    @Nullable
    private String placeHolderPath;
    @NotNull
    private final View preview;
    private boolean previewSet;
    private boolean previewStarted;
    @Nullable
    private ILivePusher.PushSoundLevelListener pushSoundLevelListener;
    @NotNull
    private final V2TXLivePusher pusher;
    @NotNull
    private final String string;
    private boolean thirdBeauty;
    private boolean videoMuted;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;", "", "coefficient", "", "fps", "", "(FI)V", "getCoefficient", "()F", "getFps", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DeviceBitrate {
        private final float coefficient;
        private final int fps;

        public DeviceBitrate(float f10, int i9) {
            this.coefficient = f10;
            this.fps = i9;
        }

        public static /* synthetic */ DeviceBitrate copy$default(DeviceBitrate deviceBitrate, float f10, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = deviceBitrate.coefficient;
            }
            if ((i10 & 2) != 0) {
                i9 = deviceBitrate.fps;
            }
            return deviceBitrate.copy(f10, i9);
        }

        public final float component1() {
            return this.coefficient;
        }

        public final int component2() {
            return this.fps;
        }

        @NotNull
        public final DeviceBitrate copy(float f10, int i9) {
            return new DeviceBitrate(f10, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DeviceBitrate) {
                DeviceBitrate deviceBitrate = (DeviceBitrate) obj;
                return Intrinsics.areEqual((Object) Float.valueOf(this.coefficient), (Object) Float.valueOf(deviceBitrate.coefficient)) && this.fps == deviceBitrate.fps;
            }
            return false;
        }

        public final float getCoefficient() {
            return this.coefficient;
        }

        public final int getFps() {
            return this.fps;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.coefficient) * 31) + this.fps;
        }

        @NotNull
        public String toString() {
            return "DeviceBitrate(coefficient=" + this.coefficient + ", fps=" + this.fps + ')';
        }
    }

    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J$\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\fH\u0016J\b\u0010\u0016\u001a\u00020\fH\u0016J\u0010\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0010H\u0016J\u001c\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J&\u0010\u001d\u001a\u00020\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010 \u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010!\u001a\u00020\f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\f2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J$\u0010'\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006("}, d2 = {"Lcom/guochao/pusher/tencent/TencentLivePusher$PushObserver;", "Lcom/tencent/live2/V2TXLivePusherObserver;", "hostPusher", "Lcom/guochao/pusher/tencent/TencentLivePusher;", "(Lcom/guochao/pusher/tencent/TencentLivePusher;)V", "beautyManager", "Lcom/guochao/pusher/beauty/XMagicBeautyManager;", "getBeautyManager", "()Lcom/guochao/pusher/beauty/XMagicBeautyManager;", "getHostPusher", "()Lcom/guochao/pusher/tencent/TencentLivePusher;", "onCaptureFirstAudioFrame", "", "onCaptureFirstVideoFrame", "onError", "code", "", "msg", "", "extraInfo", "Landroid/os/Bundle;", "onGLContextCreated", "onGLContextDestroyed", "onMicrophoneVolumeUpdate", "volume", "onProcessVideoFrame", "srcFrame", "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;", "dstFrame", "onPushStatusUpdate", "status", "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;", "onSetMixTranscodingConfig", "onSnapshotComplete", "image", "Landroid/graphics/Bitmap;", "onStatisticsUpdate", "statistics", "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;", "onWarning", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    private static final class PushObserver extends V2TXLivePusherObserver {
        @NotNull
        private final XMagicBeautyManager beautyManager;
        @NotNull
        private final TencentLivePusher hostPusher;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[V2TXLiveDef.V2TXLivePushStatus.values().length];
                iArr[V2TXLiveDef.V2TXLivePushStatus.V2TXLivePushStatusConnectSuccess.ordinal()] = 1;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public PushObserver(@NotNull TencentLivePusher hostPusher) {
            Intrinsics.checkNotNullParameter(hostPusher, "hostPusher");
            this.hostPusher = hostPusher;
            this.beautyManager = hostPusher.beautyManager;
        }

        @NotNull
        public final XMagicBeautyManager getBeautyManager() {
            return this.beautyManager;
        }

        @NotNull
        public final TencentLivePusher getHostPusher() {
            return this.hostPusher;
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onCaptureFirstAudioFrame() {
            super.onCaptureFirstAudioFrame();
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onCaptureFirstVideoFrame() {
            super.onCaptureFirstVideoFrame();
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onError(int i9, @Nullable String str, @Nullable Bundle bundle) {
            super.onError(i9, str, bundle);
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onGLContextCreated() {
            super.onGLContextCreated();
            if (this.hostPusher.isPusherFrozen()) {
                return;
            }
            this.beautyManager.glContextCreated();
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onGLContextDestroyed() {
            super.onGLContextDestroyed();
            if (this.hostPusher.isPusherFrozen()) {
                return;
            }
            XMagicBeautyManager.Companion.getInstance(this.hostPusher.getContext()).destroyOnGLThread();
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onMicrophoneVolumeUpdate(int i9) {
            super.onMicrophoneVolumeUpdate(i9);
            ILivePusher.PushSoundLevelListener pushSoundLevelListener = this.hostPusher.getPushSoundLevelListener();
            if (pushSoundLevelListener != null) {
                pushSoundLevelListener.onSoundLevel(i9);
            }
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public int onProcessVideoFrame(@Nullable V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame, @Nullable V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame2) {
            if (this.hostPusher.isPusherFrozen()) {
                return 0;
            }
            Intrinsics.checkNotNull(v2TXLiveVideoFrame2);
            V2TXLiveDef.V2TXLiveTexture v2TXLiveTexture = v2TXLiveVideoFrame2.texture;
            XMagicBeautyManager xMagicBeautyManager = this.beautyManager;
            Intrinsics.checkNotNull(v2TXLiveVideoFrame);
            v2TXLiveTexture.textureId = xMagicBeautyManager.process(v2TXLiveVideoFrame.texture.textureId, v2TXLiveVideoFrame.width, v2TXLiveVideoFrame.height);
            return super.onProcessVideoFrame(v2TXLiveVideoFrame, v2TXLiveVideoFrame2);
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onPushStatusUpdate(@Nullable V2TXLiveDef.V2TXLivePushStatus v2TXLivePushStatus, @Nullable String str, @Nullable Bundle bundle) {
            List<ILivePusher.PushEventListener> pushEventListeners;
            super.onPushStatusUpdate(v2TXLivePushStatus, str, bundle);
            if ((v2TXLivePushStatus == null ? -1 : WhenMappings.$EnumSwitchMapping$0[v2TXLivePushStatus.ordinal()]) != 1 || (pushEventListeners = this.hostPusher.getPushEventListeners()) == null) {
                return;
            }
            for (ILivePusher.PushEventListener pushEventListener : pushEventListeners) {
                pushEventListener.onPushSuccess(this.hostPusher);
            }
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onSetMixTranscodingConfig(int i9, @Nullable String str) {
            super.onSetMixTranscodingConfig(i9, str);
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onSnapshotComplete(@Nullable Bitmap bitmap) {
            super.onSnapshotComplete(bitmap);
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onStatisticsUpdate(@Nullable V2TXLiveDef.V2TXLivePusherStatistics v2TXLivePusherStatistics) {
            super.onStatisticsUpdate(v2TXLivePusherStatistics);
        }

        @Override // com.tencent.live2.V2TXLivePusherObserver
        public void onWarning(int i9, @Nullable String str, @Nullable Bundle bundle) {
            super.onWarning(i9, str, bundle);
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[V2TXLiveDef.V2TXLiveVideoResolution.values().length];
            iArr[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1280x720.ordinal()] = 1;
            iArr[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1920x1080.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TencentLivePusher(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.frontCamera = true;
        this.handler = new Handler(Looper.getMainLooper());
        this.deviceBitrate = calBit(context);
        this.string = "{    \"api\":\"enableAudioANS\",   \"params\":{        \"enable\":0,        \"level\": 100,     }}";
        this.placeHolderPath = "";
        this.preview = obtainPreviewView();
        this.beautyManager = XMagicBeautyManager.Companion.getInstance(context);
        V2TXLivePusherImpl v2TXLivePusherImpl = new V2TXLivePusherImpl(context, V2TXLiveDef.V2TXLiveMode.TXLiveMode_RTC);
        v2TXLivePusherImpl.setAudioQuality(V2TXLiveDef.V2TXLiveAudioQuality.V2TXLiveAudioQualityDefault);
        v2TXLivePusherImpl.setVideoQuality(new V2TXLiveDef.V2TXLiveVideoEncoderParam(V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution960x540));
        v2TXLivePusherImpl.setObserver(new PushObserver(this));
        TRTCCloud.sharedInstance(context).setGSensorMode(0);
        this.pusher = v2TXLivePusherImpl;
        this.audioEnabled = true;
        this.thirdBeauty = true;
        this.lastAudioId = -1;
    }

    private final DeviceBitrate calBit(Context context) {
        Object systemService = context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        float f10 = (((float) memoryInfo.totalMem) / 1024.0f) / 1024.0f;
        if (f10 < 2000.0f) {
            return new DeviceBitrate(0.8f, 12);
        }
        if (f10 < 3000.0f) {
            return new DeviceBitrate(1.0f, 15);
        }
        return new DeviceBitrate(1.2f, 15);
    }

    private final V2TXLiveDef.V2TXLiveVideoEncoderParam makeVideoResolution(V2TXLiveDef.V2TXLiveVideoEncoderParam v2TXLiveVideoEncoderParam) {
        int i9;
        int i10;
        V2TXLiveDef.V2TXLiveVideoResolution v2TXLiveVideoResolution = v2TXLiveVideoEncoderParam.videoResolution;
        int i11 = v2TXLiveVideoResolution == null ? -1 : WhenMappings.$EnumSwitchMapping$0[v2TXLiveVideoResolution.ordinal()];
        if (i11 != 1) {
            i9 = i11 != 2 ? v2TXLiveVideoEncoderParam.minVideoBitrate : 2800;
        } else {
            i9 = 1200;
        }
        V2TXLiveDef.V2TXLiveVideoResolution v2TXLiveVideoResolution2 = v2TXLiveVideoEncoderParam.videoResolution;
        int i12 = v2TXLiveVideoResolution2 != null ? WhenMappings.$EnumSwitchMapping$0[v2TXLiveVideoResolution2.ordinal()] : -1;
        if (i12 != 1) {
            i10 = i12 != 2 ? v2TXLiveVideoEncoderParam.videoBitrate : 3200;
        } else {
            i10 = 2400;
        }
        v2TXLiveVideoEncoderParam.videoBitrate = (int) (i10 * this.deviceBitrate.getCoefficient());
        v2TXLiveVideoEncoderParam.minVideoBitrate = (int) (i9 * this.deviceBitrate.getCoefficient());
        v2TXLiveVideoEncoderParam.videoFps = this.deviceBitrate.getFps();
        return v2TXLiveVideoEncoderParam;
    }

    private final View obtainPreviewView() {
        if (Build.VERSION.SDK_INT >= 24) {
            SurfaceView surfaceView = new SurfaceView(getContext());
            surfaceView.setZOrderOnTop(true);
            surfaceView.setZOrderMediaOverlay(true);
            surfaceView.getHolder().setFormat(-2);
            return surfaceView;
        }
        return new TextureView(getContext().getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startPreview$lambda-1  reason: not valid java name */
    public static final void m812startPreview$lambda1(TencentLivePusher this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pusher.enableCustomVideoProcess(true, V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D, V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture);
    }

    private final void switchToMedia() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("api", "enableAudioANS");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("enable", 0);
        jSONObject2.put("level", 100);
        Unit unit = Unit.INSTANCE;
        jSONObject.put(NativeProtocol.WEB_DIALOG_PARAMS, jSONObject2);
        TRTCCloud.sharedInstance(getContext()).callExperimentalAPI(jSONObject.toString());
    }

    @Override // com.guochao.pusher.base.BaseLivePusher, com.guochao.pusher.base.ILivePusher
    public void enableAudio(boolean z10) {
        if (this.audioMuted) {
            this.audioEnabled = z10;
        } else if (this.audioEnabled == z10) {
        } else {
            if (z10) {
                this.pusher.resumeAudio();
            } else {
                this.pusher.pauseAudio();
            }
            this.audioEnabled = z10;
        }
    }

    @Override // com.guochao.pusher.base.BaseLivePusher, com.guochao.pusher.base.ILivePusher
    public void enableCamera(boolean z10) {
        this.videoMuted = !z10;
        if (this.paused) {
            return;
        }
        if (z10) {
            this.pusher.resumeVideo();
        } else {
            this.pusher.pauseVideo();
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void enableThirdBeauty(boolean z10) {
        this.thirdBeauty = z10;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void freezePusher() {
        String str = this.placeHolderPath;
        if (str != null) {
            InputStream open = getContext().getAssets().open(str);
            Intrinsics.checkNotNullExpressionValue(open, "context.assets.open(this)");
            Bitmap decodeStream = BitmapFactory.decodeStream(open);
            try {
                open.close();
            } catch (Exception unused) {
            }
            this.pusher.startVirtualCamera(decodeStream);
        }
        this.pusher.stopMicrophone();
        setPusherFrozen(true);
        if (this.audioEnabled && !this.audioMuted) {
            this.pusher.pauseAudio();
        }
        this.preview.setVisibility(4);
    }

    public final int getLastAudioId() {
        return this.lastAudioId;
    }

    @Nullable
    public final ILivePusher.PushSoundLevelListener getPushSoundLevelListener() {
        return this.pushSoundLevelListener;
    }

    @NotNull
    public final String getString() {
        return this.string;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public boolean isPusherFrozen() {
        return this.isPusherFrozen;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public boolean isPushing() {
        return this.pusher.isPushing() == 1;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void onPause() {
        if (isPusherFrozen()) {
            return;
        }
        this.paused = true;
        if (this.audioEnabled && !this.audioMuted) {
            this.pusher.pauseAudio();
        }
        if (this.videoMuted || TextUtils.isEmpty(this.placeHolderPath)) {
            return;
        }
        AssetManager assets = getContext().getAssets();
        String str = this.placeHolderPath;
        Intrinsics.checkNotNull(str);
        InputStream open = assets.open(str);
        Intrinsics.checkNotNullExpressionValue(open, "context.assets.open(placeHolderPath!!)");
        Bitmap decodeStream = BitmapFactory.decodeStream(open);
        try {
            open.close();
        } catch (Exception unused) {
        }
        this.pusher.startVirtualCamera(decodeStream);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void onResume() {
        if (isPusherFrozen()) {
            return;
        }
        this.paused = false;
        if (this.audioEnabled && !this.audioMuted) {
            this.pusher.resumeAudio();
        }
        if (this.videoMuted) {
            return;
        }
        this.pusher.stopVirtualCamera();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void playBGM(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        TXAudioEffectManager audioEffectManager = this.pusher.getAudioEffectManager();
        int hashCode = path.hashCode();
        this.lastAudioId = hashCode;
        TXAudioEffectManager.AudioMusicParam audioMusicParam = new TXAudioEffectManager.AudioMusicParam(hashCode, path);
        audioMusicParam.publish = true;
        audioEffectManager.startPlayMusic(audioMusicParam);
    }

    @Override // com.guochao.pusher.base.BaseLivePusher, com.guochao.pusher.base.ILivePusher
    public void reset() {
        super.reset();
        setSoundLevelListener(null);
        this.frontCamera = true;
    }

    public final void setLastAudioId(int i9) {
        this.lastAudioId = i9;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setLiveResolution(int i9) {
        if (i9 == 0) {
            this.pusher.setVideoQuality(makeVideoResolution(new V2TXLiveDef.V2TXLiveVideoEncoderParam(V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x360)));
        } else if (i9 == 1) {
            this.pusher.setVideoQuality(makeVideoResolution(new V2TXLiveDef.V2TXLiveVideoEncoderParam(V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution960x540)));
        } else if (i9 == 2) {
            this.pusher.setVideoQuality(makeVideoResolution(new V2TXLiveDef.V2TXLiveVideoEncoderParam(V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1280x720)));
        } else if (i9 == 3) {
            this.pusher.setVideoQuality(makeVideoResolution(new V2TXLiveDef.V2TXLiveVideoEncoderParam(V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1920x1080)));
        } else if (i9 != 10) {
        } else {
            this.pusher.setVideoQuality(makeVideoResolution(new V2TXLiveDef.V2TXLiveVideoEncoderParam(V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x360)));
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setMirror(boolean z10) {
        if (this.frontCamera) {
            this.pusher.setEncoderMirror(z10);
        } else {
            this.pusher.setEncoderMirror(!z10);
        }
        this.isMirror = z10;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setMute(boolean z10) {
        if (!this.audioEnabled) {
            this.audioMuted = z10;
        } else if (this.audioMuted == z10) {
        } else {
            this.audioMuted = z10;
            if (z10) {
                this.pusher.pauseAudio();
            } else {
                this.pusher.resumeAudio();
            }
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setPauseImage(@Nullable String str, int i9, int i10) {
        this.placeHolderPath = str;
    }

    public final void setPushSoundLevelListener(@Nullable ILivePusher.PushSoundLevelListener pushSoundLevelListener) {
        this.pushSoundLevelListener = pushSoundLevelListener;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setPusherFrozen(boolean z10) {
        this.isPusherFrozen = z10;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setSoundLevelListener(@Nullable ILivePusher.PushSoundLevelListener pushSoundLevelListener) {
        this.pushSoundLevelListener = pushSoundLevelListener;
        if (pushSoundLevelListener == null) {
            this.pusher.enableVolumeEvaluation(0);
        } else {
            this.pusher.enableVolumeEvaluation(1000);
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void startPreview(@NotNull ViewGroup view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.thirdBeauty) {
            this.handler.postDelayed(new Runnable() { // from class: com.guochao.pusher.tencent.a
                @Override // java.lang.Runnable
                public final void run() {
                    TencentLivePusher.m812startPreview$lambda1(TencentLivePusher.this);
                }
            }, 2000L);
        }
        if (this.preview.getParent() == null || !Intrinsics.areEqual(this.preview.getParent(), view)) {
            ViewGroup viewGroup = (ViewGroup) this.preview.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.preview);
            }
            view.addView(this.preview);
        }
        if (!this.previewSet) {
            View view2 = this.preview;
            if (view2 instanceof TextureView) {
                this.pusher.setRenderView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                this.pusher.setRenderView((SurfaceView) view2);
            } else if (view2 instanceof TXCloudVideoView) {
                this.pusher.setRenderView((TXCloudVideoView) view2);
            }
            this.previewSet = true;
        }
        if (this.previewStarted) {
            return;
        }
        this.pusher.startCamera(this.frontCamera);
        this.pusher.enableVolumeEvaluation(1000);
        this.pusher.startMicrophone();
        switchToMedia();
        this.previewStarted = true;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public int startPush(@Nullable String str, @Nullable String str2, @Nullable RoomInfo roomInfo) {
        this.currentPushUrl = str;
        enableCamera(true);
        int startPush = this.pusher.startPush(str);
        if (this.audioMuted || !this.audioEnabled) {
            this.audioEnabled = true;
            this.audioMuted = false;
            this.pusher.resumeAudio();
        }
        switchToMedia();
        return startPush;
    }

    @Override // com.guochao.pusher.base.BaseLivePusher, com.guochao.pusher.base.ILivePusher
    public void startPushToRtc(@Nullable String str, @Nullable String str2) {
        this.currentPushUrl = str;
        enableCamera(true);
        enableAudio(true);
        setMute(false);
        switchToMedia();
        this.pusher.startPush(str);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopAll() {
        stopPreview(false);
        stopBGM();
        stopPush();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopBGM() {
        if (this.lastAudioId != -1) {
            this.pusher.getAudioEffectManager().stopPlayMusic(this.lastAudioId);
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopPreview(boolean z10) {
        this.pusher.stopCamera();
        this.pusher.stopMicrophone();
        this.previewStarted = false;
        ViewGroup viewGroup = (ViewGroup) this.preview.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.preview);
        }
        this.handler.removeMessages(0);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopPush() {
        this.pusher.stopPush();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void switchCamera() {
        this.pusher.getDeviceManager().switchCamera(!this.frontCamera);
        boolean z10 = !this.frontCamera;
        this.frontCamera = z10;
        if (z10) {
            setMirror(false);
        } else {
            setMirror(true);
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void unfreezePusher() {
        this.pusher.stopVirtualCamera();
        this.pusher.startMicrophone();
        if (this.audioEnabled && !this.audioMuted) {
            this.pusher.resumeAudio();
        }
        setPusherFrozen(false);
        this.preview.setVisibility(0);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void startPreview(@NotNull TextureView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.previewStarted) {
            this.previewSet = false;
            this.pusher.setRenderView(view);
            return;
        }
        this.pusher.enableCustomVideoProcess(true, V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D, V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture);
        this.pusher.startCamera(this.frontCamera);
        this.pusher.startMicrophone();
        this.previewStarted = true;
        this.previewSet = false;
    }
}
