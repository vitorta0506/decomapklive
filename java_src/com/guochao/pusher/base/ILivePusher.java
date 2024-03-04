package com.guochao.pusher.base;

import android.view.TextureView;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.pusher.beauty.BeautyItem;
import com.guochao.pusher.beauty.FilterItem;
import com.guochao.user.RoomInfo;
import java.util.List;
import kotlin.Metadata;
import nb.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\bf\u0018\u00002\u00020\u0001:\u0004:;<=J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\bH&J\b\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0013\u001a\u00020\u0003H&J\b\u0010\u0014\u001a\u00020\bH&J\b\u0010\u0015\u001a\u00020\bH&J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u001a\u001a\u00020\bH&J\u0012\u0010\u001b\u001a\u00020\b2\b\b\u0001\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u0003H&J\u0010\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\u0003H&J&\u0010\"\u001a\u00020\b2\b\u0010#\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010$\u001a\u00020\u001d2\b\b\u0002\u0010%\u001a\u00020\u001dH&J\u0012\u0010&\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010(H&J\u0010\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020+H&J\u0010\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020,H&J&\u0010-\u001a\u00020\u001d2\b\u0010.\u001a\u0004\u0018\u00010\u00182\b\u0010/\u001a\u0004\u0018\u00010\u00182\b\u00100\u001a\u0004\u0018\u000101H&J\u001c\u00102\u001a\u00020\b2\b\u0010.\u001a\u0004\u0018\u00010\u00182\b\u0010/\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u00103\u001a\u00020\bH&J\b\u00104\u001a\u00020\bH&J\u0012\u00105\u001a\u00020\b2\b\b\u0002\u00106\u001a\u00020\u0003H&J\b\u00107\u001a\u00020\bH&J\b\u00108\u001a\u00020\bH&J\b\u00109\u001a\u00020\bH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0006¨\u0006>À\u0006\u0003"}, d2 = {"Lcom/guochao/pusher/base/ILivePusher;", "", "isPusherFrozen", "", "()Z", "setPusherFrozen", "(Z)V", "addPushEventListener", "", "pushEventListener", "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;", "enableAudio", "enable", "enableCamera", "enableThirdBeauty", TypedValues.Custom.S_BOOLEAN, "freezePusher", "getBeautyManager", "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "isPushing", "onPause", "onResume", "playBGM", TCConstants.VIDEO_RECORD_VIDEPATH, "", "removePushEventListener", "reset", "setLiveResolution", "liveResolution", "", "setMirror", TCConstants.ELK_ACTION_MIRROR, "setMute", "mute", "setPauseImage", "assetPath", "pauseTime", "pauseFPS", "setSoundLevelListener", "listener", "Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;", "startPreview", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/TextureView;", "Landroid/view/ViewGroup;", "startPush", "cdnPushUrl", "streamId", "roomInfo", "Lcom/guochao/user/RoomInfo;", "startPushToRtc", "stopAll", "stopBGM", "stopPreview", "clearLastFrame", "stopPush", "switchCamera", "unfreezePusher", "BeautyManager", "FaceDetectListener", "PushEventListener", "PushSoundLevelListener", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface ILivePusher {

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H&J\b\u0010\n\u001a\u00020\u0003H&J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\rH&J\u001c\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u0012H&J\u0012\u0010\u0013\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H&¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "", "destroyOnGLThread", "", "destroyOnMainThread", "getBeautyItems", "", "Lcom/guochao/pusher/beauty/BeautyItem;", "getFilterItems", "Lcom/guochao/pusher/beauty/FilterItem;", "reInit", "setFaceDetectListener", "faceDetectListener", "Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;", "setFilter", "bitmapPath", "", "strength", "", "setMotionTmpl", TCConstants.VIDEO_RECORD_VIDEPATH, "update", "beautyItem", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface BeautyManager {
        void destroyOnGLThread();

        void destroyOnMainThread();

        @NotNull
        List<BeautyItem> getBeautyItems();

        @NotNull
        List<FilterItem> getFilterItems();

        void reInit();

        void setFaceDetectListener(@Nullable FaceDetectListener faceDetectListener);

        void setFilter(@Nullable String str, @FloatRange(from = 0.0d, to = 100.0d) float f10);

        void setMotionTmpl(@Nullable String str);

        void update(@NotNull BeautyItem beautyItem);
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static void startPushToRtc(@NotNull ILivePusher iLivePusher, @Nullable String str, @Nullable String str2) {
            a.a(iLivePusher, str, str2);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;", "", "hasFace", "", "has", "", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface FaceDetectListener {
        void hasFace(boolean z10);
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/guochao/pusher/base/ILivePusher$PushEventListener;", "", "onGetPushIp", "", "pushIp", "", "onPushSuccess", "pusher", "Lcom/guochao/pusher/base/ILivePusher;", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface PushEventListener {
        void onGetPushIp(@Nullable String str);

        void onPushSuccess(@NotNull ILivePusher iLivePusher);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;", "", "onSoundLevel", "", "level", "", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface PushSoundLevelListener {
        void onSoundLevel(float f10);
    }

    void addPushEventListener(@NotNull PushEventListener pushEventListener);

    void enableAudio(boolean z10);

    void enableCamera(boolean z10);

    void enableThirdBeauty(boolean z10);

    void freezePusher();

    @NotNull
    BeautyManager getBeautyManager();

    boolean isPusherFrozen();

    boolean isPushing();

    void onPause();

    void onResume();

    void playBGM(@NotNull String str);

    void removePushEventListener(@NotNull PushEventListener pushEventListener);

    void reset();

    void setLiveResolution(int i9);

    void setMirror(boolean z10);

    void setMute(boolean z10);

    void setPauseImage(@Nullable String str, int i9, int i10);

    void setPusherFrozen(boolean z10);

    void setSoundLevelListener(@Nullable PushSoundLevelListener pushSoundLevelListener);

    void startPreview(@NotNull TextureView textureView);

    void startPreview(@NotNull ViewGroup viewGroup);

    int startPush(@Nullable String str, @Nullable String str2, @Nullable RoomInfo roomInfo);

    void startPushToRtc(@Nullable String str, @Nullable String str2);

    void stopAll();

    void stopBGM();

    void stopPreview(boolean z10);

    void stopPush();

    void switchCamera();

    void unfreezePusher();
}
