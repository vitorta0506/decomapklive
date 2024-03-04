package com.guochao.pusher.base;

import android.content.Context;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import nb.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0018\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/guochao/pusher/base/BaseLivePusher;", "Lcom/guochao/pusher/base/ILivePusher;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "pushEventListeners", "", "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;", "getPushEventListeners", "()Ljava/util/List;", "setPushEventListeners", "(Ljava/util/List;)V", "addPushEventListener", "", "pushEventListener", "enableAudio", "enable", "", "enableCamera", "getBeautyManager", "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "removePushEventListener", "reset", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class BaseLivePusher implements ILivePusher {
    @NotNull
    private final Context context;
    @Nullable
    private List<ILivePusher.PushEventListener> pushEventListeners;

    public BaseLivePusher(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void addPushEventListener(@NotNull ILivePusher.PushEventListener pushEventListener) {
        Intrinsics.checkNotNullParameter(pushEventListener, "pushEventListener");
        if (this.pushEventListeners == null) {
            this.pushEventListeners = new ArrayList();
        }
        List<ILivePusher.PushEventListener> list = this.pushEventListeners;
        Intrinsics.checkNotNull(list);
        if (list.contains(pushEventListener)) {
            return;
        }
        List<ILivePusher.PushEventListener> list2 = this.pushEventListeners;
        Intrinsics.checkNotNull(list2);
        list2.add(pushEventListener);
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void enableAudio(boolean z10) {
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void enableCamera(boolean z10) {
    }

    @Override // com.guochao.pusher.base.ILivePusher
    @NotNull
    public ILivePusher.BeautyManager getBeautyManager() {
        return XMagicBeautyManager.Companion.getInstance(this.context);
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final List<ILivePusher.PushEventListener> getPushEventListeners() {
        return this.pushEventListeners;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void removePushEventListener(@NotNull ILivePusher.PushEventListener pushEventListener) {
        Intrinsics.checkNotNullParameter(pushEventListener, "pushEventListener");
        List<ILivePusher.PushEventListener> list = this.pushEventListeners;
        if (list != null) {
            list.remove(pushEventListener);
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public void reset() {
        List<ILivePusher.PushEventListener> list = this.pushEventListeners;
        if (list != null) {
            list.clear();
        }
        this.pushEventListeners = null;
        XMagicBeautyManager.Companion.getInstance(this.context).destroyOnMainThread();
    }

    public final void setPushEventListeners(@Nullable List<ILivePusher.PushEventListener> list) {
        this.pushEventListeners = list;
    }

    @Override // com.guochao.pusher.base.ILivePusher
    public /* synthetic */ void startPushToRtc(String str, String str2) {
        a.a(this, str, str2);
    }
}
