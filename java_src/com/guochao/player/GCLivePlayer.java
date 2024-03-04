package com.guochao.player;

import android.content.Context;
import android.util.Size;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.player.base.ILivePlayer;
import com.guochao.player.tencent.TencentLivePlayer;
import com.guochao.user.RoomInfo;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u0005H\u0016J\b\u0010\u0015\u001a\u00020\u0005H\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\b\u0010\u0018\u001a\u00020\u000bH\u0016J\b\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u001c\u001a\u00020\u000bH\u0016J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0005H\u0016J\u001a\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010 \u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010 \u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u0005H\u0016J\u001c\u0010&\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J&\u0010)\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u00122\b\u0010*\u001a\u0004\u0018\u00010$H\u0016J\u0018\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0016J\u0012\u0010+\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010.\u001a\u00020\u000bH\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/guochao/player/GCLivePlayer;", "Lcom/guochao/player/base/ILivePlayer;", "player", "(Lcom/guochao/player/base/ILivePlayer;)V", "value", "", "isPlayerFrozen", "()Z", "setPlayerFrozen", "(Z)V", "addPlayEventListener", "", "playEventListener", "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;", "freezeAllPlayers", "getVideoSize", "Landroid/util/Size;", "handleUrl", "", "url", "isCompatMode", "isLoading", "isPlaying", "streamId", "onPause", "onResume", "pause", "removePlayEventListener", "reset", "resume", "setMute", "mute", "setPlayerView", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "viewGroup", "Landroid/view/ViewGroup;", "forceReset", "startPlay", "roomInfo", "Lcom/guochao/user/RoomInfo;", "startPlayAcc", "previewView", "stopPlay", "clearLastFrame", "exitRoom", "unfreezeAllPlayers", "Companion", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GCLivePlayer implements ILivePlayer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final ILivePlayer player;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/player/GCLivePlayer$Companion;", "", "()V", "createPlayer", "Lcom/guochao/player/GCLivePlayer;", "context", "Landroid/content/Context;", "playerType", "", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GCLivePlayer createPlayer(@NotNull Context context, int i9) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new GCLivePlayer(new TencentLivePlayer(context), null);
        }
    }

    private GCLivePlayer(ILivePlayer iLivePlayer) {
        this.player = iLivePlayer;
    }

    public /* synthetic */ GCLivePlayer(ILivePlayer iLivePlayer, DefaultConstructorMarker defaultConstructorMarker) {
        this(iLivePlayer);
    }

    @JvmStatic
    @NotNull
    public static final GCLivePlayer createPlayer(@NotNull Context context, int i9) {
        return Companion.createPlayer(context, i9);
    }

    private final String handleUrl(String str) {
        int lastIndexOf$default;
        int lastIndexOf$default2;
        String replace$default;
        String replace$default2;
        if (str == null) {
            return str;
        }
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, FileUtils.RES_PREFIX_STORAGE, 0, false, 6, (Object) null);
        lastIndexOf$default2 = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, ".", 0, false, 6, (Object) null);
        String substring = str.substring(lastIndexOf$default + 1, lastIndexOf$default2);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        replace$default = StringsKt__StringsJVMKt.replace$default(str, substring, substring + "_av1test", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, BaseConfig.LIVE_DOMAIN_NAME, "testlive.gchao.com", false, 4, (Object) null);
        return replace$default2;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void addPlayEventListener(@NotNull ILivePlayer.PlayEventListener playEventListener) {
        Intrinsics.checkNotNullParameter(playEventListener, "playEventListener");
        this.player.addPlayEventListener(playEventListener);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void freezeAllPlayers() {
        this.player.freezeAllPlayers();
    }

    @Override // com.guochao.player.base.ILivePlayer
    @NotNull
    public Size getVideoSize() {
        return this.player.getVideoSize();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isCompatMode() {
        return this.player.isCompatMode();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isLoading() {
        return this.player.isLoading();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isPlayerFrozen() {
        return this.player.isPlayerFrozen();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isPlaying() {
        return this.player.isPlaying();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void onPause() {
        this.player.onPause();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void onResume() {
        this.player.onResume();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void pause(@NotNull String streamId) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        this.player.pause(streamId);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void removePlayEventListener(@NotNull ILivePlayer.PlayEventListener playEventListener) {
        Intrinsics.checkNotNullParameter(playEventListener, "playEventListener");
        this.player.removePlayEventListener(playEventListener);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void reset() {
        this.player.reset();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void resume(@NotNull String streamId) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        this.player.resume(streamId);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setMute(boolean z10) {
        this.player.setMute(z10);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerFrozen(boolean z10) {
        this.player.setPlayerFrozen(z10);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerView(@Nullable ViewGroup viewGroup) {
        this.player.setPlayerView(viewGroup);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void startPlay(@Nullable String str, @Nullable RoomInfo roomInfo) {
        this.player.startPlay(str, roomInfo);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void startPlayAcc(@Nullable String str, @Nullable String str2, @Nullable ViewGroup viewGroup) {
        this.player.startPlayAcc(str, str2, viewGroup);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void stopPlay(boolean z10, boolean z11) {
        this.player.stopPlay(z10, false);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void unfreezeAllPlayers() {
        this.player.unfreezeAllPlayers();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isPlaying(@NotNull String streamId) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        return this.player.isPlaying(streamId);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setMute(boolean z10, @Nullable String str) {
        this.player.setMute(z10, str);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.player.setPlayerView(view);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void stopPlay(@Nullable String str) {
        this.player.stopPlay(str);
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setPlayerView(@Nullable ViewGroup viewGroup, boolean z10) {
        this.player.setPlayerView(viewGroup, z10);
    }
}
