package com.guochao.player.tencent;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Size;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.player.base.BaseLivePlayer;
import com.guochao.player.base.ILivePlayer;
import com.guochao.user.RoomInfo;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.live2.V2TXLivePlayerObserver;
import com.tencent.live2.impl.V2TXLivePlayerImpl;
import com.tencent.live2.impl.V2TXLiveProperty;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0002EFB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u0006H\u0016J\b\u0010%\u001a\u00020\u0006H\u0016J\b\u0010&\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\tH\u0016J&\u0010(\u001a\u0004\u0018\u00010\u001a2\u0006\u0010'\u001a\u00020\t2\b\u0010)\u001a\u0004\u0018\u00010*2\b\b\u0002\u0010+\u001a\u00020\u0006H\u0002J\u0010\u0010,\u001a\u00020\u00182\b\b\u0002\u0010-\u001a\u00020\u0006J\b\u0010.\u001a\u00020!H\u0016J\b\u0010/\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020!2\u0006\u0010'\u001a\u00020\tH\u0016J\b\u00101\u001a\u00020!H\u0016J\u0010\u00102\u001a\u00020!2\u0006\u0010'\u001a\u00020\tH\u0016J\u0010\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020\u0006H\u0016J\u001a\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020\u00062\b\u0010'\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020\u0018H\u0016J\u0012\u00105\u001a\u00020!2\b\u00107\u001a\u0004\u0018\u00010*H\u0016J\u001a\u00105\u001a\u00020!2\b\u00107\u001a\u0004\u0018\u00010*2\u0006\u00108\u001a\u00020\u0006H\u0016J\u0012\u00109\u001a\u00020!2\b\u0010:\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010;\u001a\u00020!2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u0018H\u0002J\u001c\u0010<\u001a\u00020!2\b\u0010=\u001a\u0004\u0018\u00010\t2\b\u0010>\u001a\u0004\u0018\u00010?H\u0016J&\u0010@\u001a\u00020!2\b\u0010=\u001a\u0004\u0018\u00010\t2\b\u0010'\u001a\u0004\u0018\u00010\t2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0018\u0010A\u001a\u00020!2\u0006\u0010B\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0006H\u0016J\u0012\u0010A\u001a\u00020!2\b\u0010'\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010D\u001a\u00020!H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcom/guochao/player/tencent/TencentLivePlayer;", "Lcom/guochao/player/base/BaseLivePlayer;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "audioMuted", "", "firstPlay", "Landroid/util/ArrayMap;", "", "height", "", "isPlayerFrozen", "()Z", "setPlayerFrozen", "(Z)V", "lastStreamId", "lastUrl", "loading", "observer", "Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;", "player", "Lcom/tencent/live2/V2TXLivePlayer;", "playerView", "Landroid/view/View;", "players", "Lcom/guochao/player/tencent/TencentLivePlayer$Player;", "playing", "previewSet", "starting", "videoMuted", "width", "freezeAllPlayers", "", "getVideoSize", "Landroid/util/Size;", "isCompatMode", "isLoading", "isPlaying", "streamId", "obtainPlayer", "previewView", "Landroid/view/ViewGroup;", "initOnNull", "obtainPreviewView", "acc", "onPause", "onResume", "pause", "reset", "resume", "setMute", "mute", "setPlayerView", ViewHierarchyConstants.VIEW_KEY, "viewGroup", "forceReset", "setRefer", "refer", "setRenderView", "startPlay", "url", "roomInfo", "Lcom/guochao/user/RoomInfo;", "startPlayAcc", "stopPlay", "clearLastFrame", "exitRoom", "unfreezeAllPlayers", "PlayObserver", "Player", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class TencentLivePlayer extends BaseLivePlayer {
    private boolean audioMuted;
    @NotNull
    private final ArrayMap<String, Boolean> firstPlay;
    private int height;
    private boolean isPlayerFrozen;
    @Nullable
    private String lastStreamId;
    @NotNull
    private String lastUrl;
    private boolean loading;
    @NotNull
    private final PlayObserver observer;
    @NotNull
    private final V2TXLivePlayer player;
    @NotNull
    private final View playerView;
    @NotNull
    private final ArrayMap<String, Player> players;
    private boolean playing;
    private boolean previewSet;
    private boolean starting;
    private boolean videoMuted;
    private int width;

    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0006H\u0002J\b\u0010#\u001a\u00020\u0016H\u0002J\u001c\u0010$\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J$\u0010)\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010*\u001a\u00020+2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u001c\u0010,\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J.\u0010-\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010.\u001a\u00020\f2\b\u0010/\u001a\u0004\u0018\u00010\u00062\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u001a\u00100\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u00101\u001a\u00020\fH\u0016J$\u00102\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u00103\u001a\u00020\f2\b\u00104\u001a\u0004\u0018\u000105H\u0016J\u001c\u00106\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u00107\u001a\u0004\u0018\u000108H\u0016J\u001c\u00109\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u001c\u0010<\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u001c\u0010?\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J$\u0010@\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010*\u001a\u00020+2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\"\u0010A\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010B\u001a\u00020\f2\u0006\u0010C\u001a\u00020\fH\u0016J.\u0010D\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010.\u001a\u00020\f2\b\u0010/\u001a\u0004\u0018\u00010\u00062\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020\u0016H\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\b\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\u0010R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018¨\u0006G"}, d2 = {"Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;", "Lcom/tencent/live2/V2TXLivePlayerObserver;", "hostPlayer", "Lcom/guochao/player/tencent/TencentLivePlayer;", "(Lcom/guochao/player/tencent/TencentLivePlayer;)V", "error", "", "getError", "()Ljava/lang/String;", "lastNotify", "", "lastSeiSize", "", "lastStreamId", "getLastStreamId", "setLastStreamId", "(Ljava/lang/String;)V", "lastUrl", "getLastUrl", "setLastUrl", "list", "", "Lcom/guochao/player/base/ILivePlayer$StreamInfo;", "getList", "()Ljava/util/List;", "retryCount", "getRetryCount", "()I", "setRetryCount", "(I)V", "temp", "getTemp", "handleMixSei", "", "str", "obtain", "onAudioLoading", "player", "Lcom/tencent/live2/V2TXLivePlayer;", "extraInfo", "Landroid/os/Bundle;", "onAudioPlaying", "firstPlay", "", "onConnected", "onError", "code", "msg", "onPlayoutVolumeUpdate", "volume", "onReceiveSeiMessage", "payloadType", "data", "", "onRenderVideoFrame", "videoFrame", "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;", "onSnapshotComplete", "image", "Landroid/graphics/Bitmap;", "onStatisticsUpdate", "statistics", "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;", "onVideoLoading", "onVideoPlaying", "onVideoResolutionChanged", "width", "height", "onWarning", "recycle", "info", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class PlayObserver extends V2TXLivePlayerObserver {
        @NotNull
        private final String error;
        @NotNull
        private final TencentLivePlayer hostPlayer;
        private long lastNotify;
        private int lastSeiSize;
        @Nullable
        private String lastStreamId;
        @Nullable
        private String lastUrl;
        @NotNull
        private final List<ILivePlayer.StreamInfo> list;
        private int retryCount;
        @NotNull
        private final List<ILivePlayer.StreamInfo> temp;

        public PlayObserver(@NotNull TencentLivePlayer hostPlayer) {
            Intrinsics.checkNotNullParameter(hostPlayer, "hostPlayer");
            this.hostPlayer = hostPlayer;
            this.error = "anchor normal stopped";
            this.list = new ArrayList();
            this.temp = new ArrayList();
        }

        private final void handleMixSei(String str) throws JSONException {
            int indexOf$default;
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "{", 0, false, 6, (Object) null);
            String substring = str.substring(indexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            this.lastNotify = System.currentTimeMillis();
            JSONArray optJSONArray = new JSONObject(substring).optJSONArray("d");
            if (optJSONArray == null) {
                return;
            }
            for (ILivePlayer.StreamInfo streamInfo : this.list) {
                recycle(streamInfo);
            }
            this.list.clear();
            int length = optJSONArray.length();
            for (int i9 = 0; i9 < length; i9++) {
                JSONObject jSONObject = optJSONArray.getJSONObject(i9);
                ILivePlayer.StreamInfo obtain = obtain();
                obtain.setTop(jSONObject.getInt("t"));
                obtain.setLeft(jSONObject.getInt(NotifyType.LIGHTS));
                obtain.setWidth(jSONObject.getInt("w"));
                obtain.setHeight(jSONObject.getInt("h"));
                obtain.setRight(obtain.getLeft() + obtain.getWidth());
                obtain.setBottom(obtain.getTop() + obtain.getHeight());
                String string = jSONObject.getString(NotifyType.SOUND);
                Intrinsics.checkNotNullExpressionValue(string, "j.getString(\"s\")");
                obtain.setStreamId(string);
                this.list.add(obtain);
            }
            List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
            if (listeners != null) {
                for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                    String str2 = this.lastStreamId;
                    Intrinsics.checkNotNull(str2);
                    playEventListener.onPublishStreamInfo(str2, this.list);
                }
            }
        }

        private final ILivePlayer.StreamInfo obtain() {
            if (this.temp.isEmpty()) {
                return new ILivePlayer.StreamInfo(0, 0, 0, 0, null, 31, null);
            }
            return this.temp.remove(0);
        }

        private final void recycle(ILivePlayer.StreamInfo streamInfo) {
            streamInfo.setWidth(0);
            streamInfo.setHeight(0);
            streamInfo.setLeft(0);
            streamInfo.setRight(0);
            streamInfo.setTop(0);
            streamInfo.setBottom(0);
            this.temp.add(streamInfo);
        }

        @NotNull
        public final String getError() {
            return this.error;
        }

        @Nullable
        public final String getLastStreamId() {
            return this.lastStreamId;
        }

        @Nullable
        public final String getLastUrl() {
            return this.lastUrl;
        }

        @NotNull
        public final List<ILivePlayer.StreamInfo> getList() {
            return this.list;
        }

        public final int getRetryCount() {
            return this.retryCount;
        }

        @NotNull
        public final List<ILivePlayer.StreamInfo> getTemp() {
            return this.temp;
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onAudioLoading(@Nullable V2TXLivePlayer v2TXLivePlayer, @Nullable Bundle bundle) {
            super.onAudioLoading(v2TXLivePlayer, bundle);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onAudioPlaying(@Nullable V2TXLivePlayer v2TXLivePlayer, boolean z10, @Nullable Bundle bundle) {
            super.onAudioPlaying(v2TXLivePlayer, z10, bundle);
            if (z10) {
                this.hostPlayer.playing = true;
                List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
                if (listeners != null) {
                    for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                        String str = this.lastStreamId;
                        if (str == null) {
                            str = "";
                        }
                        playEventListener.onPlayFirstAudioFrame(str, this.hostPlayer);
                    }
                }
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onConnected(@Nullable V2TXLivePlayer v2TXLivePlayer, @Nullable Bundle bundle) {
            super.onConnected(v2TXLivePlayer, bundle);
            List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
            if (listeners != null) {
                for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                    String str = this.lastStreamId;
                    Intrinsics.checkNotNull(str);
                    playEventListener.onConnectToServer(str, this.hostPlayer);
                }
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onError(@Nullable V2TXLivePlayer v2TXLivePlayer, int i9, @Nullable String str, @Nullable Bundle bundle) {
            super.onError(v2TXLivePlayer, i9, str, bundle);
            this.hostPlayer.starting = false;
            if (i9 != -8 || Intrinsics.areEqual(str, this.error)) {
                return;
            }
            List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
            if (listeners != null) {
                for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                    String str2 = this.lastStreamId;
                    Intrinsics.checkNotNull(str2);
                    playEventListener.onPlayEvent(str2, 1001, str, null);
                }
            }
            if (this.retryCount >= 3) {
                this.retryCount = 0;
                return;
            }
            Intrinsics.checkNotNull(v2TXLivePlayer);
            v2TXLivePlayer.startLivePlay(this.lastUrl);
            this.retryCount++;
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onPlayoutVolumeUpdate(@Nullable V2TXLivePlayer v2TXLivePlayer, int i9) {
            super.onPlayoutVolumeUpdate(v2TXLivePlayer, i9);
            List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
            if (listeners != null) {
                for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                    String str = this.lastStreamId;
                    if (str == null) {
                        str = "";
                    }
                    playEventListener.onPlayerVolumeUpdate(str, i9);
                }
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onReceiveSeiMessage(@Nullable V2TXLivePlayer v2TXLivePlayer, int i9, @Nullable byte[] bArr) {
            if (bArr == null) {
                return;
            }
            int length = bArr.length;
            if (length != this.lastSeiSize || System.currentTimeMillis() - this.lastNotify >= 1000) {
                if (i9 == 5) {
                    try {
                        handleMixSei(new String(bArr, Charsets.UTF_8));
                    } catch (Exception unused) {
                    }
                }
                this.lastSeiSize = length;
                super.onReceiveSeiMessage(v2TXLivePlayer, i9, bArr);
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onRenderVideoFrame(@Nullable V2TXLivePlayer v2TXLivePlayer, @Nullable V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame) {
            super.onRenderVideoFrame(v2TXLivePlayer, v2TXLiveVideoFrame);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onSnapshotComplete(@Nullable V2TXLivePlayer v2TXLivePlayer, @Nullable Bitmap bitmap) {
            super.onSnapshotComplete(v2TXLivePlayer, bitmap);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onStatisticsUpdate(@Nullable V2TXLivePlayer v2TXLivePlayer, @Nullable V2TXLiveDef.V2TXLivePlayerStatistics v2TXLivePlayerStatistics) {
            super.onStatisticsUpdate(v2TXLivePlayer, v2TXLivePlayerStatistics);
            if (v2TXLivePlayerStatistics != null) {
                this.hostPlayer.width = v2TXLivePlayerStatistics.width;
                this.hostPlayer.height = v2TXLivePlayerStatistics.height;
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onVideoLoading(@Nullable V2TXLivePlayer v2TXLivePlayer, @Nullable Bundle bundle) {
            super.onVideoLoading(v2TXLivePlayer, bundle);
            if (Intrinsics.areEqual(this.hostPlayer.lastStreamId, this.lastStreamId)) {
                this.hostPlayer.loading = true;
            }
            List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
            if (listeners != null) {
                for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                    String str = this.lastStreamId;
                    if (str == null) {
                        str = "";
                    }
                    playEventListener.onVideoLoading(str, bundle);
                }
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onVideoPlaying(@Nullable V2TXLivePlayer v2TXLivePlayer, boolean z10, @Nullable Bundle bundle) {
            super.onVideoPlaying(v2TXLivePlayer, z10, bundle);
            if (Intrinsics.areEqual(this.hostPlayer.lastStreamId, this.lastStreamId)) {
                this.hostPlayer.loading = false;
            }
            String str = this.lastStreamId;
            if (str == null) {
                return;
            }
            if (z10) {
                this.hostPlayer.playing = true;
                List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
                if (listeners != null) {
                    for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                        playEventListener.onDrawFirstFrame(str, this.hostPlayer);
                    }
                    return;
                }
                return;
            }
            List<ILivePlayer.PlayEventListener> listeners2 = this.hostPlayer.getListeners();
            if (listeners2 != null) {
                for (ILivePlayer.PlayEventListener playEventListener2 : listeners2) {
                    playEventListener2.onVideoPlaying(str, bundle);
                }
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onVideoResolutionChanged(@Nullable V2TXLivePlayer v2TXLivePlayer, int i9, int i10) {
            super.onVideoResolutionChanged(v2TXLivePlayer, i9, i10);
            this.hostPlayer.width = i9;
            this.hostPlayer.height = i10;
            List<ILivePlayer.PlayEventListener> listeners = this.hostPlayer.getListeners();
            if (listeners != null) {
                for (ILivePlayer.PlayEventListener playEventListener : listeners) {
                    String str = this.lastStreamId;
                    Intrinsics.checkNotNull(str);
                    playEventListener.onVideoSizeChanged(str, i9, i10);
                }
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onWarning(@Nullable V2TXLivePlayer v2TXLivePlayer, int i9, @Nullable String str, @Nullable Bundle bundle) {
            super.onWarning(v2TXLivePlayer, i9, str, bundle);
        }

        public final void setLastStreamId(@Nullable String str) {
            this.lastStreamId = str;
        }

        public final void setLastUrl(@Nullable String str) {
            this.lastUrl = str;
        }

        public final void setRetryCount(int i9) {
            this.retryCount = i9;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TencentLivePlayer(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        V2TXLivePlayerImpl v2TXLivePlayerImpl = new V2TXLivePlayerImpl(context);
        v2TXLivePlayerImpl.setRenderFillMode(V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFill);
        v2TXLivePlayerImpl.enableReceiveSeiMessage(true, 5);
        this.player = v2TXLivePlayerImpl;
        this.playerView = obtainPreviewView$default(this, false, 1, null);
        this.players = new ArrayMap<>();
        PlayObserver playObserver = new PlayObserver(this);
        v2TXLivePlayerImpl.setObserver(playObserver);
        this.observer = playObserver;
        this.firstPlay = new ArrayMap<>();
        this.lastUrl = "";
    }

    /* JADX WARN: Type inference failed for: r12v19, types: [T, com.guochao.player.tencent.TencentLivePlayer$Player] */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
    private final Player obtainPlayer(String str, final ViewGroup viewGroup, boolean z10) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? r12 = this.players.get(str);
        objectRef.element = r12;
        if (!z10) {
            return (Player) r12;
        }
        if (r12 == 0) {
            ?? player = new Player(this, getContext(), null, null, 12, null);
            objectRef.element = player;
            player.setCurrentStreamId(str);
            this.players.put(str, objectRef.element);
        }
        if (((Player) objectRef.element).getPreviewView().getParent() == null || !Intrinsics.areEqual(((Player) objectRef.element).getPreviewView().getParent(), viewGroup)) {
            ViewGroup viewGroup2 = (ViewGroup) ((Player) objectRef.element).getPreviewView().getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(((Player) objectRef.element).getPreviewView());
            }
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.guochao.player.tencent.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        TencentLivePlayer.m807obtainPlayer$lambda10(Ref.ObjectRef.this, viewGroup);
                    }
                });
            }
        }
        setRenderView(((Player) objectRef.element).getPlayer(), ((Player) objectRef.element).getPreviewView());
        ((Player) objectRef.element).getObserver().setLastStreamId(str);
        return (Player) objectRef.element;
    }

    static /* synthetic */ Player obtainPlayer$default(TencentLivePlayer tencentLivePlayer, String str, ViewGroup viewGroup, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = true;
        }
        return tencentLivePlayer.obtainPlayer(str, viewGroup, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: obtainPlayer$lambda-10  reason: not valid java name */
    public static final void m807obtainPlayer$lambda10(Ref.ObjectRef player, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(player, "$player");
        if (((Player) player.element).getPreviewView().getParent() == null) {
            viewGroup.addView(((Player) player.element).getPreviewView());
        }
    }

    public static /* synthetic */ View obtainPreviewView$default(TencentLivePlayer tencentLivePlayer, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        return tencentLivePlayer.obtainPreviewView(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setPlayerView$lambda-8  reason: not valid java name */
    public static final void m808setPlayerView$lambda8(TencentLivePlayer this$0, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.playerView.getParent() == null) {
            viewGroup.addView(this$0.playerView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setPlayerView$lambda-9  reason: not valid java name */
    public static final void m809setPlayerView$lambda9(TencentLivePlayer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        this$0.previewSet = false;
        this$0.setRenderView(this$0.player, view);
    }

    private final void setRefer(String str) {
        if (str == null) {
            this.player.setProperty(V2TXLiveProperty.kV2SetHeaders, new JSONObject().toString());
            return;
        }
        V2TXLivePlayer v2TXLivePlayer = this.player;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("key", "Referer");
            jSONObject2.put("value", str);
            jSONArray.put(jSONObject2);
            Unit unit = Unit.INSTANCE;
            jSONObject.put("headers", jSONArray);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Unit unit2 = Unit.INSTANCE;
        v2TXLivePlayer.setProperty(V2TXLiveProperty.kV2SetHeaders, jSONObject.toString());
    }

    private final void setRenderView(V2TXLivePlayer v2TXLivePlayer, View view) {
        if (view instanceof SurfaceView) {
            v2TXLivePlayer.setRenderView((SurfaceView) view);
        } else if (view instanceof TextureView) {
            v2TXLivePlayer.setRenderView((TextureView) view);
        } else if (view instanceof TXCloudVideoView) {
            v2TXLivePlayer.setRenderView((TXCloudVideoView) view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startPlayAcc$lambda-3  reason: not valid java name */
    public static final void m810startPlayAcc$lambda3(View preview, ViewGroup viewGroup, TencentLivePlayer this$0, Player player) {
        Intrinsics.checkNotNullParameter(preview, "$preview");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(player, "$player");
        if (preview.getParent() == null) {
            viewGroup.addView(preview);
            this$0.setRenderView(player.getPlayer(), player.getPreviewView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startPlayAcc$lambda-4  reason: not valid java name */
    public static final void m811startPlayAcc$lambda4(TencentLivePlayer this$0, Player player) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(player, "$player");
        this$0.setRenderView(player.getPlayer(), player.getPreviewView());
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void freezeAllPlayers() {
        V2TXLivePlayerImpl player;
        if (isPlayerFrozen()) {
            return;
        }
        setPlayerFrozen(true);
        for (Map.Entry<String, Player> entry : this.players.entrySet()) {
            Player value = entry.getValue();
            if (value != null && (player = value.getPlayer()) != null && player.isPlaying() == 1) {
                player.pauseAudio();
                player.pauseVideo();
            }
        }
        if (!this.audioMuted) {
            this.player.pauseAudio();
        }
        this.player.pauseVideo();
    }

    @Override // com.guochao.player.base.ILivePlayer
    @NotNull
    public Size getVideoSize() {
        return new Size(this.width, this.height);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isCompatMode() {
        return true;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isLoading() {
        return this.loading;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isPlayerFrozen() {
        return this.isPlayerFrozen;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isPlaying() {
        return this.playing;
    }

    @NotNull
    public final View obtainPreviewView(boolean z10) {
        if (z10) {
            return new TXCloudVideoView(getContext().getApplicationContext());
        }
        if (!isCompatMode()) {
            SurfaceView surfaceView = new SurfaceView(getContext().getApplicationContext());
            surfaceView.setZOrderOnTop(true);
            surfaceView.setZOrderMediaOverlay(true);
            surfaceView.getHolder().setFormat(-2);
            return surfaceView;
        }
        return new TXCloudVideoView(getContext().getApplicationContext());
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void onPause() {
        if (!this.audioMuted) {
            this.player.pauseAudio();
        }
        this.player.pauseVideo();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void onResume() {
        if (!this.audioMuted) {
            this.player.resumeAudio();
        }
        this.player.resumeVideo();
    }

    @Override // com.guochao.player.base.BaseLivePlayer, com.guochao.player.base.ILivePlayer
    public void pause(@NotNull String streamId) {
        Player obtainPlayer;
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        if (isPlayerFrozen() || (obtainPlayer = obtainPlayer(streamId, null, false)) == null) {
            return;
        }
        obtainPlayer.pause();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void reset() {
        this.player.stopPlay();
    }

    @Override // com.guochao.player.base.BaseLivePlayer, com.guochao.player.base.ILivePlayer
    public void resume(@NotNull String streamId) {
        Player obtainPlayer;
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        if (isPlayerFrozen() || (obtainPlayer = obtainPlayer(streamId, null, false)) == null) {
            return;
        }
        obtainPlayer.resume();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setMute(boolean z10) {
        if (z10 == this.audioMuted) {
            return;
        }
        this.audioMuted = z10;
        if (z10) {
            this.player.pauseAudio();
        } else {
            this.player.resumeAudio();
        }
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerFrozen(boolean z10) {
        this.isPlayerFrozen = z10;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerView(@Nullable final ViewGroup viewGroup) {
        if (viewGroup == null) {
            ViewGroup viewGroup2 = (ViewGroup) this.playerView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.playerView);
            }
            this.previewSet = false;
            this.player.setRenderView((TextureView) null);
            return;
        }
        if (this.playerView.getParent() == null || !Intrinsics.areEqual(this.playerView.getParent(), viewGroup)) {
            ViewGroup viewGroup3 = (ViewGroup) this.playerView.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.playerView);
            }
            viewGroup.post(new Runnable() { // from class: com.guochao.player.tencent.c
                @Override // java.lang.Runnable
                public final void run() {
                    TencentLivePlayer.m808setPlayerView$lambda8(TencentLivePlayer.this, viewGroup);
                }
            });
        }
        if (this.previewSet) {
            return;
        }
        this.previewSet = true;
        setRenderView(this.player, this.playerView);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void startPlay(@Nullable String str, @Nullable RoomInfo roomInfo) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.starting && Objects.equals(str, this.lastUrl)) {
            if (this.loading) {
                return;
            }
            this.observer.onVideoPlaying(this.player, true, null);
            return;
        }
        this.starting = true;
        this.loading = true;
        this.firstPlay.remove(roomInfo != null ? roomInfo.getRoomId() : null);
        setRefer(roomInfo != null ? roomInfo.getRefer() : null);
        this.player.startLivePlay(str);
        this.lastUrl = str == null ? "" : str;
        String roomId = roomInfo != null ? roomInfo.getRoomId() : null;
        this.lastStreamId = roomId;
        this.observer.setLastStreamId(roomId);
        this.observer.setLastUrl(str);
        this.observer.setRetryCount(0);
        this.width = 0;
        this.height = 0;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void startPlayAcc(@Nullable String str, @Nullable String str2, @Nullable final ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (viewGroup != null && viewGroup.getVisibility() == 4) {
            viewGroup.setVisibility(0);
        }
        Intrinsics.checkNotNull(str2);
        final Player obtainPlayer = obtainPlayer(str2, viewGroup, true);
        Intrinsics.checkNotNull(obtainPlayer);
        obtainPlayer.getObserver().setLastUrl(str);
        if (obtainPlayer.getPlayer().isPlaying() == 1) {
            final View previewView = obtainPlayer.getPreviewView();
            if (Intrinsics.areEqual(previewView.getParent(), viewGroup)) {
                return;
            }
            ViewGroup viewGroup2 = (ViewGroup) previewView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(previewView);
            }
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.guochao.player.tencent.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        TencentLivePlayer.m810startPlayAcc$lambda3(previewView, viewGroup, this, obtainPlayer);
                    }
                });
                return;
            }
            return;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.guochao.player.tencent.d
                @Override // java.lang.Runnable
                public final void run() {
                    TencentLivePlayer.m811startPlayAcc$lambda4(TencentLivePlayer.this, obtainPlayer);
                }
            });
        }
        V2TXLivePlayerImpl player = obtainPlayer.getPlayer();
        Intrinsics.checkNotNull(str);
        player.startLivePlay(str);
        if (isPlayerFrozen()) {
            obtainPlayer.getPlayer().pauseAudio();
            obtainPlayer.getPlayer().pauseVideo();
        }
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void stopPlay(boolean z10, boolean z11) {
        if (this.starting) {
            this.player.stopPlay();
        }
        this.starting = false;
        this.firstPlay.remove(this.lastStreamId);
        this.lastUrl = "";
        this.lastStreamId = null;
        this.playing = false;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void unfreezeAllPlayers() {
        V2TXLivePlayerImpl player;
        if (isPlayerFrozen()) {
            setPlayerFrozen(false);
            for (Map.Entry<String, Player> entry : this.players.entrySet()) {
                Player value = entry.getValue();
                if (value != null && (player = value.getPlayer()) != null && player.isPlaying() == 1) {
                    player.resumeAudio();
                    player.resumeVideo();
                }
            }
            if (!this.audioMuted) {
                this.player.resumeAudio();
            }
            this.player.resumeVideo();
        }
    }

    @Override // com.guochao.player.base.BaseLivePlayer, com.guochao.player.base.ILivePlayer
    public boolean isPlaying(@NotNull String streamId) {
        V2TXLivePlayerImpl player;
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Player obtainPlayer = obtainPlayer(streamId, null, false);
        return (obtainPlayer == null || (player = obtainPlayer.getPlayer()) == null || player.isPlaying() != 1) ? false : true;
    }

    @Override // com.guochao.player.base.BaseLivePlayer, com.guochao.player.base.ILivePlayer
    public void setMute(boolean z10, @Nullable String str) {
        Player obtainPlayer;
        if (str == null || (obtainPlayer = obtainPlayer(str, null, false)) == null) {
            return;
        }
        if (z10) {
            obtainPlayer.getPlayer().pauseAudio();
        } else {
            obtainPlayer.getPlayer().resumeAudio();
        }
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void stopPlay(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            for (Map.Entry<String, Player> entry : this.players.entrySet()) {
                Player value = entry.getValue();
                if (value != null) {
                    value.getPlayer().stopPlay();
                }
            }
            this.players.clear();
        } else if (Objects.equals(str, this.lastStreamId)) {
            stopPlay(true, true);
        } else {
            Intrinsics.checkNotNull(str);
            Player obtainPlayer = obtainPlayer(str, null, false);
            if (obtainPlayer != null) {
                obtainPlayer.getPlayer().stopPlay();
                this.players.remove(str);
            }
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/guochao/player/tencent/TencentLivePlayer$Player;", "", "hostPlayer", "Lcom/guochao/player/tencent/TencentLivePlayer;", "context", "Landroid/content/Context;", "previewView", "Landroid/view/View;", "player", "Lcom/tencent/live2/impl/V2TXLivePlayerImpl;", "(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/content/Context;Landroid/view/View;Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V", "getContext", "()Landroid/content/Context;", "currentStreamId", "", "getCurrentStreamId", "()Ljava/lang/String;", "setCurrentStreamId", "(Ljava/lang/String;)V", "observer", "Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;", "getObserver", "()Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;", "getPlayer", "()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;", "getPreviewView", "()Landroid/view/View;", "pause", "", "resume", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Player {
        @NotNull
        private final Context context;
        @Nullable
        private String currentStreamId;
        @NotNull
        private final PlayObserver observer;
        @NotNull
        private final V2TXLivePlayerImpl player;
        @NotNull
        private final View previewView;

        public Player(@NotNull TencentLivePlayer hostPlayer, @NotNull Context context, @NotNull View previewView, @NotNull V2TXLivePlayerImpl player) {
            Intrinsics.checkNotNullParameter(hostPlayer, "hostPlayer");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(previewView, "previewView");
            Intrinsics.checkNotNullParameter(player, "player");
            this.context = context;
            this.previewView = previewView;
            this.player = player;
            player.enableVolumeEvaluation(1500);
            PlayObserver playObserver = new PlayObserver(hostPlayer);
            playObserver.setLastStreamId(this.currentStreamId);
            player.setObserver(playObserver);
            this.observer = playObserver;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Nullable
        public final String getCurrentStreamId() {
            return this.currentStreamId;
        }

        @NotNull
        public final PlayObserver getObserver() {
            return this.observer;
        }

        @NotNull
        public final V2TXLivePlayerImpl getPlayer() {
            return this.player;
        }

        @NotNull
        public final View getPreviewView() {
            return this.previewView;
        }

        public final void pause() {
            this.player.pauseAudio();
            this.player.pauseVideo();
        }

        public final void resume() {
            this.player.resumeAudio();
            this.player.resumeVideo();
        }

        public final void setCurrentStreamId(@Nullable String str) {
            this.currentStreamId = str;
        }

        public /* synthetic */ Player(TencentLivePlayer tencentLivePlayer, Context context, View view, V2TXLivePlayerImpl v2TXLivePlayerImpl, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(tencentLivePlayer, context, (i9 & 4) != 0 ? tencentLivePlayer.obtainPreviewView(true) : view, (i9 & 8) != 0 ? new V2TXLivePlayerImpl(context) : v2TXLivePlayerImpl);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerView(@NotNull final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.playerView.getParent() != null) {
            ViewParent parent = this.playerView.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this.playerView);
        }
        view.post(new Runnable() { // from class: com.guochao.player.tencent.b
            @Override // java.lang.Runnable
            public final void run() {
                TencentLivePlayer.m809setPlayerView$lambda9(TencentLivePlayer.this, view);
            }
        });
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerView(@Nullable ViewGroup viewGroup, boolean z10) {
        if (z10) {
            this.previewSet = false;
        }
        setPlayerView(viewGroup);
    }
}
