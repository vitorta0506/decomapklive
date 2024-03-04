package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.ViewGroup;
import com.guochao.faceshow.BaseApplication;
import com.guochao.player.GCLivePlayer;
import com.guochao.pusher.GCLivePusher;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\u0004H\u0007J\b\u0010\f\u001a\u00020\u0006H\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;", "", "()V", "sLivePlayer", "Lcom/guochao/player/GCLivePlayer;", "sLivePusher", "Lcom/guochao/pusher/GCLivePusher;", "type", "", "beautyManager", "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "player", "pusher", "release", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LivePlayerProvider {
    @NotNull
    public static final LivePlayerProvider INSTANCE = new LivePlayerProvider();
    @Nullable
    private static GCLivePlayer sLivePlayer = null;
    @Nullable
    private static GCLivePusher sLivePusher = null;
    private static final int type = 1;

    private LivePlayerProvider() {
    }

    @JvmStatic
    @NotNull
    public static final ILivePusher.BeautyManager beautyManager() {
        XMagicBeautyManager.Companion companion = XMagicBeautyManager.Companion;
        BaseApplication baseApplication = BaseApplication.getInstance();
        Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
        return companion.getInstance(baseApplication);
    }

    @JvmStatic
    @NotNull
    public static final GCLivePlayer player() {
        if (sLivePlayer == null) {
            GCLivePlayer.Companion companion = GCLivePlayer.Companion;
            BaseApplication baseApplication = BaseApplication.getInstance();
            Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
            sLivePlayer = companion.createPlayer(baseApplication, 1);
        }
        GCLivePlayer gCLivePlayer = sLivePlayer;
        Intrinsics.checkNotNull(gCLivePlayer);
        return gCLivePlayer;
    }

    @JvmStatic
    @NotNull
    public static final GCLivePusher pusher() {
        if (sLivePusher == null) {
            GCLivePusher.Companion companion = GCLivePusher.Companion;
            BaseApplication baseApplication = BaseApplication.getInstance();
            Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
            sLivePusher = companion.createPusher(baseApplication, 1);
        }
        GCLivePusher gCLivePusher = sLivePusher;
        Intrinsics.checkNotNull(gCLivePusher);
        return gCLivePusher;
    }

    @JvmStatic
    public static final void release() {
        GCLivePlayer gCLivePlayer = sLivePlayer;
        if (gCLivePlayer != null) {
            Intrinsics.checkNotNull(gCLivePlayer);
            gCLivePlayer.stopPlay(true, false);
            GCLivePlayer gCLivePlayer2 = sLivePlayer;
            Intrinsics.checkNotNull(gCLivePlayer2);
            gCLivePlayer2.setPlayerView((ViewGroup) null);
        }
    }
}
