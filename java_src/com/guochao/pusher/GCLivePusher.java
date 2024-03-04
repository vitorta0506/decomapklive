package com.guochao.pusher;

import android.content.Context;
import android.view.TextureView;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.tencent.TencentLivePusher;
import com.guochao.user.RoomInfo;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 ?2\u00020\u0001:\u0001?B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\b\u0010\u0015\u001a\u00020\rH\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\rH\u0016J\b\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u001f\u001a\u00020\rH\u0016J\u0012\u0010 \u001a\u00020\r2\b\b\u0001\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0005H\u0016J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0005H\u0016J\"\u0010'\u001a\u00020\r2\b\u0010(\u001a\u0004\u0018\u00010\u001d2\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0012\u0010+\u001a\u00020\r2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u000201H\u0016J&\u00102\u001a\u00020\"2\b\u00103\u001a\u0004\u0018\u00010\u001d2\b\u00104\u001a\u0004\u0018\u00010\u001d2\b\u00105\u001a\u0004\u0018\u000106H\u0016J\u001c\u00107\u001a\u00020\r2\b\u00103\u001a\u0004\u0018\u00010\u001d2\b\u00104\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u00108\u001a\u00020\rH\u0016J\b\u00109\u001a\u00020\rH\u0016J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\u0005H\u0016J\b\u0010<\u001a\u00020\rH\u0016J\b\u0010=\u001a\u00020\rH\u0016J\b\u0010>\u001a\u00020\rH\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006@"}, d2 = {"Lcom/guochao/pusher/GCLivePusher;", "Lcom/guochao/pusher/base/ILivePusher;", "pusher", "(Lcom/guochao/pusher/base/ILivePusher;)V", "value", "", "isPusherFrozen", "()Z", "setPusherFrozen", "(Z)V", "getPusher", "()Lcom/guochao/pusher/base/ILivePusher;", "addPushEventListener", "", "pushEventListener", "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;", "enableAudio", "enable", "enableCamera", "enableThirdBeauty", TypedValues.Custom.S_BOOLEAN, "freezePusher", "getBeautyManager", "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "isPushing", "onPause", "onResume", "playBGM", TCConstants.VIDEO_RECORD_VIDEPATH, "", "removePushEventListener", "reset", "setLiveResolution", "liveResolution", "", "setMirror", TCConstants.ELK_ACTION_MIRROR, "setMute", "mute", "setPauseImage", "assetPath", "pauseTime", "pauseFPS", "setSoundLevelListener", "listener", "Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;", "startPreview", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/TextureView;", "Landroid/view/ViewGroup;", "startPush", "cdnPushUrl", "streamId", "roomInfo", "Lcom/guochao/user/RoomInfo;", "startPushToRtc", "stopAll", "stopBGM", "stopPreview", "clearLastFrame", "stopPush", "switchCamera", "unfreezePusher", "Companion", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GCLivePusher implements ILivePusher {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_TENCENT = 1;
    public static final int TYPE_ZEGO = 2;
    @NotNull
    private final ILivePusher pusher;

    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/guochao/pusher/GCLivePusher$Companion;", "", "Landroid/content/Context;", "context", "", "pusherType", "Lcom/guochao/pusher/GCLivePusher;", "createPusher", "", "init", "TYPE_TENCENT", "I", "TYPE_ZEGO", "<init>", "()V", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GCLivePusher createPusher(@NotNull Context context, int i9) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new GCLivePusher(new TencentLivePusher(context), null);
        }

        @JvmStatic
        public final void init(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
        }
    }

    private GCLivePusher(ILivePusher iLivePusher) {
        this.pusher = iLivePusher;
    }

    public /* synthetic */ GCLivePusher(ILivePusher iLivePusher, DefaultConstructorMarker defaultConstructorMarker) {
        this(iLivePusher);
    }

    @JvmStatic
    @NotNull
    public static final GCLivePusher createPusher(@NotNull Context context, int i9) {
        return Companion.createPusher(context, i9);
    }

    @JvmStatic
    public static final void init(@NotNull Context context) {
        Companion.init(context);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void addPushEventListener(@NotNull ILivePusher.PushEventListener pushEventListener) {
        Intrinsics.checkNotNullParameter(pushEventListener, "pushEventListener");
        this.pusher.addPushEventListener(pushEventListener);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void enableAudio(boolean z10) {
        this.pusher.enableAudio(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void enableCamera(boolean z10) {
        this.pusher.enableCamera(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void enableThirdBeauty(boolean z10) {
        this.pusher.enableThirdBeauty(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void freezePusher() {
        this.pusher.freezePusher();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    @NotNull
    public ILivePusher.BeautyManager getBeautyManager() {
        return this.pusher.getBeautyManager();
    }

    @NotNull
    public final ILivePusher getPusher() {
        return this.pusher;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public boolean isPusherFrozen() {
        return this.pusher.isPusherFrozen();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public boolean isPushing() {
        return this.pusher.isPushing();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void onPause() {
        this.pusher.onPause();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void onResume() {
        this.pusher.onResume();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void playBGM(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.pusher.playBGM(path);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void removePushEventListener(@NotNull ILivePusher.PushEventListener pushEventListener) {
        Intrinsics.checkNotNullParameter(pushEventListener, "pushEventListener");
        this.pusher.removePushEventListener(pushEventListener);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void reset() {
        this.pusher.reset();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setLiveResolution(int i9) {
        this.pusher.setLiveResolution(i9);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setMirror(boolean z10) {
        this.pusher.setMirror(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setMute(boolean z10) {
        this.pusher.setMute(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setPauseImage(@Nullable String str, int i9, int i10) {
        this.pusher.setPauseImage(str, i9, i10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setPusherFrozen(boolean z10) {
        this.pusher.setPusherFrozen(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void setSoundLevelListener(@Nullable ILivePusher.PushSoundLevelListener pushSoundLevelListener) {
        this.pusher.setSoundLevelListener(pushSoundLevelListener);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void startPreview(@NotNull ViewGroup view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.pusher.startPreview(view);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public int startPush(@Nullable String str, @Nullable String str2, @Nullable RoomInfo roomInfo) {
        return this.pusher.startPush(str, str2, roomInfo);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void startPushToRtc(@Nullable String str, @Nullable String str2) {
        this.pusher.startPushToRtc(str, str2);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopAll() {
        this.pusher.stopAll();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopBGM() {
        this.pusher.stopBGM();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopPreview(boolean z10) {
        this.pusher.stopPreview(z10);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void stopPush() {
        this.pusher.stopPush();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void switchCamera() {
        this.pusher.switchCamera();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void unfreezePusher() {
        this.pusher.unfreezePusher();
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void startPreview(@NotNull TextureView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.pusher.startPreview(view);
    }
}
