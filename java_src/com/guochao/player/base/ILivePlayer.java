package com.guochao.player.base;

import android.os.Bundle;
import android.util.Size;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.user.RoomInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u0000 +2\u00020\u0001:\u0003+,-J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\bH&J\b\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0013\u001a\u00020\bH&J\b\u0010\u0014\u001a\u00020\bH&J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u0017\u001a\u00020\bH&J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0003H&J\u001a\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0012\u0010\u001b\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH&J\u001a\u0010\u001b\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u0003H&J\u001c\u0010!\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010\u00122\b\u0010#\u001a\u0004\u0018\u00010$H&J&\u0010%\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010&\u001a\u0004\u0018\u00010\u001fH&J\u0018\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003H&J\u0012\u0010'\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\b\u0010*\u001a\u00020\bH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0006¨\u0006.À\u0006\u0003"}, d2 = {"Lcom/guochao/player/base/ILivePlayer;", "", "isPlayerFrozen", "", "()Z", "setPlayerFrozen", "(Z)V", "addPlayEventListener", "", "playEventListener", "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;", "freezeAllPlayers", "getVideoSize", "Landroid/util/Size;", "isCompatMode", "isLoading", "isPlaying", "streamId", "", "onPause", "onResume", "pause", "removePlayEventListener", "reset", "resume", "setMute", "mute", "setPlayerView", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "viewGroup", "Landroid/view/ViewGroup;", "forceReset", "startPlay", "url", "roomInfo", "Lcom/guochao/user/RoomInfo;", "startPlayAcc", "previewView", "stopPlay", "clearLastFrame", "exitRoom", "unfreezeAllPlayers", "Companion", "PlayEventListener", "StreamInfo", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface ILivePlayer {
    public static final int CODE_PLAY_FAIL = 1001;
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/player/base/ILivePlayer$Companion;", "", "()V", "CODE_PLAY_FAIL", "", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int CODE_PLAY_FAIL = 1001;

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J,\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\u001a\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J \u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016¨\u0006\u001eÀ\u0006\u0003"}, d2 = {"Lcom/guochao/player/base/ILivePlayer$PlayEventListener;", "", "onConnectToServer", "", "streamId", "", "livePlayer", "Lcom/guochao/player/base/ILivePlayer;", "onDrawFirstFrame", "onPlayEvent", "eventCode", "", "msg", "throwable", "", "onPlayFirstAudioFrame", "onPlayerVolumeUpdate", "volume", "", "onPublishStreamInfo", "streamInfoList", "", "Lcom/guochao/player/base/ILivePlayer$StreamInfo;", "onVideoLoading", PushConstants.EXTRA, "Landroid/os/Bundle;", "onVideoPlaying", "onVideoSizeChanged", "width", "height", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface PlayEventListener {

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class DefaultImpls {
            @Deprecated
            public static void onConnectToServer(@NotNull PlayEventListener playEventListener, @NotNull String streamId, @NotNull ILivePlayer livePlayer) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
                a.a(playEventListener, streamId, livePlayer);
            }

            @Deprecated
            public static void onDrawFirstFrame(@NotNull PlayEventListener playEventListener, @NotNull String streamId, @NotNull ILivePlayer livePlayer) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
                a.b(playEventListener, streamId, livePlayer);
            }

            @Deprecated
            public static void onPlayEvent(@NotNull PlayEventListener playEventListener, @NotNull String streamId, int i9, @Nullable String str, @Nullable Throwable th2) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                a.c(playEventListener, streamId, i9, str, th2);
            }

            @Deprecated
            public static void onPlayFirstAudioFrame(@NotNull PlayEventListener playEventListener, @NotNull String streamId, @NotNull ILivePlayer livePlayer) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
                a.d(playEventListener, streamId, livePlayer);
            }

            @Deprecated
            public static void onPlayerVolumeUpdate(@NotNull PlayEventListener playEventListener, @NotNull String streamId, float f10) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                a.e(playEventListener, streamId, f10);
            }

            @Deprecated
            public static void onPublishStreamInfo(@NotNull PlayEventListener playEventListener, @NotNull String streamId, @NotNull List<StreamInfo> streamInfoList) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                Intrinsics.checkNotNullParameter(streamInfoList, "streamInfoList");
                a.f(playEventListener, streamId, streamInfoList);
            }

            @Deprecated
            public static void onVideoLoading(@NotNull PlayEventListener playEventListener, @NotNull String streamId, @Nullable Bundle bundle) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                a.g(playEventListener, streamId, bundle);
            }

            @Deprecated
            public static void onVideoPlaying(@NotNull PlayEventListener playEventListener, @NotNull String streamId, @Nullable Bundle bundle) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                a.h(playEventListener, streamId, bundle);
            }

            @Deprecated
            public static void onVideoSizeChanged(@NotNull PlayEventListener playEventListener, @NotNull String streamId, int i9, int i10) {
                Intrinsics.checkNotNullParameter(streamId, "streamId");
                a.i(playEventListener, streamId, i9, i10);
            }
        }

        void onConnectToServer(@NotNull String str, @NotNull ILivePlayer iLivePlayer);

        void onDrawFirstFrame(@NotNull String str, @NotNull ILivePlayer iLivePlayer);

        void onPlayEvent(@NotNull String str, int i9, @Nullable String str2, @Nullable Throwable th2);

        void onPlayFirstAudioFrame(@NotNull String str, @NotNull ILivePlayer iLivePlayer);

        void onPlayerVolumeUpdate(@NotNull String str, float f10);

        void onPublishStreamInfo(@NotNull String str, @NotNull List<StreamInfo> list);

        void onVideoLoading(@NotNull String str, @Nullable Bundle bundle);

        void onVideoPlaying(@NotNull String str, @Nullable Bundle bundle);

        void onVideoSizeChanged(@NotNull String str, int i9, int i10);
    }

    void addPlayEventListener(@NotNull PlayEventListener playEventListener);

    void freezeAllPlayers();

    @NotNull
    Size getVideoSize();

    boolean isCompatMode();

    boolean isLoading();

    boolean isPlayerFrozen();

    boolean isPlaying();

    boolean isPlaying(@NotNull String str);

    void onPause();

    void onResume();

    void pause(@NotNull String str);

    void removePlayEventListener(@NotNull PlayEventListener playEventListener);

    void reset();

    void resume(@NotNull String str);

    void setMute(boolean z10);

    void setMute(boolean z10, @Nullable String str);

    void setPlayerFrozen(boolean z10);

    void setPlayerView(@NotNull View view);

    void setPlayerView(@Nullable ViewGroup viewGroup);

    void setPlayerView(@Nullable ViewGroup viewGroup, boolean z10);

    void startPlay(@Nullable String str, @Nullable RoomInfo roomInfo);

    void startPlayAcc(@Nullable String str, @Nullable String str2, @Nullable ViewGroup viewGroup);

    void stopPlay(@Nullable String str);

    void stopPlay(boolean z10, boolean z11);

    void unfreezeAllPlayers();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J;\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\bHÖ\u0001R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\f\"\u0004\b\u001b\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000e¨\u0006)"}, d2 = {"Lcom/guochao/player/base/ILivePlayer$StreamInfo;", "", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "", "top", "width", "height", "streamId", "", "(IIIILjava/lang/String;)V", "bottom", "getBottom", "()I", "setBottom", "(I)V", "getHeight", "setHeight", "getLeft", "setLeft", "right", "getRight", "setRight", "getStreamId", "()Ljava/lang/String;", "setStreamId", "(Ljava/lang/String;)V", "getTop", "setTop", "getWidth", "setWidth", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class StreamInfo {
        private int bottom;
        private int height;
        private int left;
        private int right;
        @NotNull
        private String streamId;
        private int top;
        private int width;

        public StreamInfo() {
            this(0, 0, 0, 0, null, 31, null);
        }

        public StreamInfo(int i9, int i10, int i11, int i12, @NotNull String streamId) {
            Intrinsics.checkNotNullParameter(streamId, "streamId");
            this.left = i9;
            this.top = i10;
            this.width = i11;
            this.height = i12;
            this.streamId = streamId;
        }

        public static /* synthetic */ StreamInfo copy$default(StreamInfo streamInfo, int i9, int i10, int i11, int i12, String str, int i13, Object obj) {
            if ((i13 & 1) != 0) {
                i9 = streamInfo.left;
            }
            if ((i13 & 2) != 0) {
                i10 = streamInfo.top;
            }
            int i14 = i10;
            if ((i13 & 4) != 0) {
                i11 = streamInfo.width;
            }
            int i15 = i11;
            if ((i13 & 8) != 0) {
                i12 = streamInfo.height;
            }
            int i16 = i12;
            if ((i13 & 16) != 0) {
                str = streamInfo.streamId;
            }
            return streamInfo.copy(i9, i14, i15, i16, str);
        }

        public final int component1() {
            return this.left;
        }

        public final int component2() {
            return this.top;
        }

        public final int component3() {
            return this.width;
        }

        public final int component4() {
            return this.height;
        }

        @NotNull
        public final String component5() {
            return this.streamId;
        }

        @NotNull
        public final StreamInfo copy(int i9, int i10, int i11, int i12, @NotNull String streamId) {
            Intrinsics.checkNotNullParameter(streamId, "streamId");
            return new StreamInfo(i9, i10, i11, i12, streamId);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StreamInfo) {
                StreamInfo streamInfo = (StreamInfo) obj;
                return this.left == streamInfo.left && this.top == streamInfo.top && this.width == streamInfo.width && this.height == streamInfo.height && Intrinsics.areEqual(this.streamId, streamInfo.streamId);
            }
            return false;
        }

        public final int getBottom() {
            return this.bottom;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getLeft() {
            return this.left;
        }

        public final int getRight() {
            return this.right;
        }

        @NotNull
        public final String getStreamId() {
            return this.streamId;
        }

        public final int getTop() {
            return this.top;
        }

        public final int getWidth() {
            return this.width;
        }

        public int hashCode() {
            return (((((((this.left * 31) + this.top) * 31) + this.width) * 31) + this.height) * 31) + this.streamId.hashCode();
        }

        public final void setBottom(int i9) {
            this.bottom = i9;
        }

        public final void setHeight(int i9) {
            this.height = i9;
        }

        public final void setLeft(int i9) {
            this.left = i9;
        }

        public final void setRight(int i9) {
            this.right = i9;
        }

        public final void setStreamId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.streamId = str;
        }

        public final void setTop(int i9) {
            this.top = i9;
        }

        public final void setWidth(int i9) {
            this.width = i9;
        }

        @NotNull
        public String toString() {
            return "StreamInfo(left=" + this.left + ", top=" + this.top + ", width=" + this.width + ", height=" + this.height + ", streamId=" + this.streamId + ')';
        }

        public /* synthetic */ StreamInfo(int i9, int i10, int i11, int i12, String str, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? 0 : i9, (i13 & 2) != 0 ? 0 : i10, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) == 0 ? i12 : 0, (i13 & 16) != 0 ? "" : str);
        }
    }
}
