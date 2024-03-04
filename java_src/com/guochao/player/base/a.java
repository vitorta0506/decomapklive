package com.guochao.player.base;

import android.os.Bundle;
import com.guochao.player.base.ILivePlayer;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes4.dex */
public final /* synthetic */ class a {
    public static void a(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, @NotNull ILivePlayer livePlayer) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
    }

    public static void b(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, @NotNull ILivePlayer livePlayer) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
    }

    public static void c(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, int i9, @Nullable String str, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
    }

    public static void d(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, @NotNull ILivePlayer livePlayer) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(livePlayer, "livePlayer");
    }

    public static void e(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, float f10) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
    }

    public static void f(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, @NotNull List streamInfoList) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        Intrinsics.checkNotNullParameter(streamInfoList, "streamInfoList");
    }

    public static void g(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
    }

    public static void h(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
    }

    public static void i(ILivePlayer.PlayEventListener playEventListener, @NotNull String streamId, int i9, int i10) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
    }
}
