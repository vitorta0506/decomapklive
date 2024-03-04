package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.os.Bundle;
import android.os.Handler;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveLinkMicPlayAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LivePlayMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveVideoAudioMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.player.GCLivePlayer;
import com.guochao.player.base.ILivePlayer;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.api.TPErrorCode;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J,\u0010\u0014\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u001e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J\u001a\u0010\"\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010%\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J \u0010&\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;", "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;", "watcherLiveRoomFragment", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;", "handler", "Landroid/os/Handler;", "(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Landroid/os/Handler;)V", "videoLoadingLongTimeRunnable", "Ljava/lang/Runnable;", "getCurrentLiveRoom", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "isBroadCasterRTCStream", "", "streamId", "", "onConnectToServer", "", "livePlayer", "Lcom/guochao/player/base/ILivePlayer;", "onDrawFirstFrame", "onPlayEvent", "eventCode", "", "msg", "throwable", "", "onPlayFirstAudioFrame", "onPlayerVolumeUpdate", "volume", "", "onPublishStreamInfo", "streamInfoList", "", "Lcom/guochao/player/base/ILivePlayer$StreamInfo;", "onVideoLoading", PushConstants.EXTRA, "Landroid/os/Bundle;", "onVideoPlaying", "onVideoSizeChanged", "width", "height", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WatchLivePlayerListener implements ILivePlayer.PlayEventListener {
    @NotNull
    private final Handler handler;
    @NotNull
    private final Runnable videoLoadingLongTimeRunnable;
    @NotNull
    private final WatcherLiveRoomFragment watcherLiveRoomFragment;

    public WatchLivePlayerListener(@NotNull WatcherLiveRoomFragment watcherLiveRoomFragment, @NotNull Handler handler) {
        Intrinsics.checkNotNullParameter(watcherLiveRoomFragment, "watcherLiveRoomFragment");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.watcherLiveRoomFragment = watcherLiveRoomFragment;
        this.handler = handler;
        this.videoLoadingLongTimeRunnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.watcher.b
            @Override // java.lang.Runnable
            public final void run() {
                WatchLivePlayerListener.m493videoLoadingLongTimeRunnable$lambda0(WatchLivePlayerListener.this);
            }
        };
    }

    private final RoomItemData getCurrentLiveRoom() {
        LiveRoomModel currentLiveRoom = this.watcherLiveRoomFragment.getCurrentLiveRoom();
        Intrinsics.checkNotNull(currentLiveRoom, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.RoomItemData");
        return (RoomItemData) currentLiveRoom;
    }

    private final boolean isBroadCasterRTCStream(String str) {
        LiveInfoMatchBean j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(getCurrentLiveRoom().getBroadCasterUserId());
        return Objects.equals(str, j10 != null ? j10.getStreamId() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: videoLoadingLongTimeRunnable$lambda-0  reason: not valid java name */
    public static final void m493videoLoadingLongTimeRunnable$lambda0(WatchLivePlayerListener this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.watcherLiveRoomFragment.G5();
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onConnectToServer(@NotNull String streamId, @NotNull ILivePlayer livePlayer) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
        if (this.watcherLiveRoomFragment.isAdded() && !this.watcherLiveRoomFragment.isDetached() && Intrinsics.areEqual("1", getCurrentLiveRoom().getMatchType()) && Intrinsics.areEqual("2", getCurrentLiveRoom().getVoiceStatus())) {
            this.watcherLiveRoomFragment.m4(streamId);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onDrawFirstFrame(@NotNull String streamId, @NotNull ILivePlayer livePlayer) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
        if (!this.watcherLiveRoomFragment.isAdded() || this.watcherLiveRoomFragment.isDetached()) {
            return;
        }
        if (!Intrinsics.areEqual(streamId, getCurrentLiveRoom().getBroadCasterUserId()) && !Intrinsics.areEqual(streamId, getCurrentLiveRoom().getLiveId())) {
            this.watcherLiveRoomFragment.m4(streamId);
            return;
        }
        WatcherLiveRoomFragment watcherLiveRoomFragment = this.watcherLiveRoomFragment;
        int i9 = 0;
        if (watcherLiveRoomFragment.f18519r5) {
            watcherLiveRoomFragment.f18519r5 = false;
            i9 = TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY;
        }
        if (getCurrentLiveRoom().isMultiLiveRoom() && i9 != 0) {
            this.handler.removeCallbacks(this.watcherLiveRoomFragment.f20015l6);
            this.handler.postDelayed(this.watcherLiveRoomFragment.f20015l6, i9);
            return;
        }
        this.handler.removeCallbacks(this.watcherLiveRoomFragment.f20014k6);
        this.handler.postDelayed(this.watcherLiveRoomFragment.f20014k6, i9);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onPlayEvent(@NotNull String streamId, int i9, @Nullable String str, @Nullable Throwable th2) {
        GCLivePlayer gCLivePlayer;
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        if (this.watcherLiveRoomFragment.isAdded() && !this.watcherLiveRoomFragment.isDetached() && i9 == 1001 && Objects.equals(streamId, this.watcherLiveRoomFragment.getCurrentLiveRoom().getBroadCasterUserId()) && (gCLivePlayer = this.watcherLiveRoomFragment.f20017n6) != null && gCLivePlayer.isCompatMode()) {
            this.watcherLiveRoomFragment.mVideoRecyclerView.setVisibility(4);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onPlayFirstAudioFrame(@NotNull String streamId, @NotNull ILivePlayer livePlayer) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
        if (this.watcherLiveRoomFragment.isAdded() && !this.watcherLiveRoomFragment.isDetached() && Intrinsics.areEqual("1", getCurrentLiveRoom().getMatchType())) {
            this.watcherLiveRoomFragment.m4(streamId);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onPlayerVolumeUpdate(@NotNull String streamId, float f10) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onPublishStreamInfo(@NotNull String streamId, @NotNull List<ILivePlayer.StreamInfo> streamInfoList) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(streamInfoList, "streamInfoList");
        if (!this.watcherLiveRoomFragment.isAdded() || this.watcherLiveRoomFragment.isDetached()) {
            return;
        }
        WatcherLiveRoomFragment watcherLiveRoomFragment = this.watcherLiveRoomFragment;
        if (watcherLiveRoomFragment.Q) {
            return;
        }
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = watcherLiveRoomFragment.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.r(streamId, streamInfoList);
        }
        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.watcherLiveRoomFragment.Z4;
        if (liveVideoAudioMaskAdapter != null) {
            liveVideoAudioMaskAdapter.r(streamId, streamInfoList);
        }
        LivePlayMaskAdapter livePlayMaskAdapter = this.watcherLiveRoomFragment.Y4;
        if (livePlayMaskAdapter != null) {
            livePlayMaskAdapter.r(streamId, streamInfoList);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onVideoLoading(@NotNull String streamId, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        if (!this.watcherLiveRoomFragment.isAdded() || this.watcherLiveRoomFragment.isDetached() || !isBroadCasterRTCStream(streamId) || getCurrentLiveRoom().isMultiLiveRoom()) {
            return;
        }
        this.handler.postDelayed(this.videoLoadingLongTimeRunnable, 15000L);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onVideoPlaying(@NotNull String streamId, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        if (!this.watcherLiveRoomFragment.isAdded() || this.watcherLiveRoomFragment.isDetached()) {
            return;
        }
        if (isBroadCasterRTCStream(streamId) && !getCurrentLiveRoom().isMultiLiveRoom()) {
            this.handler.removeCallbacks(this.videoLoadingLongTimeRunnable);
            this.watcherLiveRoomFragment.r5();
        }
        if (Objects.equals(getCurrentLiveRoom().getLiveId(), streamId) || Objects.equals(getCurrentLiveRoom().getUserId(), streamId)) {
            WatcherLiveRoomFragment watcherLiveRoomFragment = this.watcherLiveRoomFragment;
            watcherLiveRoomFragment.f18484a2 = true;
            watcherLiveRoomFragment.hideLoading(true);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onVideoSizeChanged(@NotNull String streamId, int i9, int i10) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        if (!this.watcherLiveRoomFragment.isAdded() || this.watcherLiveRoomFragment.isDetached()) {
            return;
        }
        boolean t52 = this.watcherLiveRoomFragment.t5(i9, i10);
        LivePlayMaskAdapter livePlayMaskAdapter = this.watcherLiveRoomFragment.Y4;
        if (livePlayMaskAdapter != null) {
            livePlayMaskAdapter.y(t52);
        }
        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.watcherLiveRoomFragment.Z4;
        if (liveVideoAudioMaskAdapter != null) {
            liveVideoAudioMaskAdapter.y(t52);
        }
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.watcherLiveRoomFragment.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.y(t52);
        }
        boolean s52 = WatcherLiveRoomFragment.s5(i9, i10);
        if (s52 == this.watcherLiveRoomFragment.N2()) {
            return;
        }
        if (s52) {
            this.watcherLiveRoomFragment.k4(-1L, -1L, -1L, false);
        } else {
            this.watcherLiveRoomFragment.d(1, true);
        }
    }
}
