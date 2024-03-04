package com.guochao.player.base;

import android.content.Context;
import com.guochao.player.base.ILivePlayer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/guochao/player/base/BaseLivePlayer;", "Lcom/guochao/player/base/ILivePlayer;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "listeners", "", "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;", "getListeners", "()Ljava/util/List;", "setListeners", "(Ljava/util/List;)V", "addPlayEventListener", "", "playEventListener", "isPlaying", "", "streamId", "", "pause", "removePlayEventListener", "resume", "setMute", "mute", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class BaseLivePlayer implements ILivePlayer {
    @NotNull
    private final Context context;
    @Nullable
    private List<ILivePlayer.PlayEventListener> listeners;

    public BaseLivePlayer(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void addPlayEventListener(@NotNull ILivePlayer.PlayEventListener playEventListener) {
        Intrinsics.checkNotNullParameter(playEventListener, "playEventListener");
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        List<ILivePlayer.PlayEventListener> list = this.listeners;
        if (list != null) {
            list.add(playEventListener);
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final List<ILivePlayer.PlayEventListener> getListeners() {
        return this.listeners;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public boolean isPlaying(@NotNull String streamId) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        return isPlaying();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void pause(@NotNull String streamId) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        onPause();
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void removePlayEventListener(@NotNull ILivePlayer.PlayEventListener playEventListener) {
        Intrinsics.checkNotNullParameter(playEventListener, "playEventListener");
        List<ILivePlayer.PlayEventListener> list = this.listeners;
        if (list != null) {
            list.remove(playEventListener);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void resume(@NotNull String streamId) {
        Intrinsics.checkNotNullParameter(streamId, "streamId");
        onResume();
    }

    protected final void setListeners(@Nullable List<ILivePlayer.PlayEventListener> list) {
        this.listeners = list;
    }

    @Override // com.guochao.player.base.ILivePlayer
    public void setMute(boolean z10, @Nullable String str) {
        setMute(z10);
    }
}
