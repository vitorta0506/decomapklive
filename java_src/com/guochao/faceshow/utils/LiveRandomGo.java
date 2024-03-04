package com.guochao.faceshow.utils;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005J\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/utils/LiveRandomGo;", "", "()V", "listeners", "", "Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;", "getListeners", "()Ljava/util/List;", "addRewardDiamond", "", "diamond", "", "goRandomLive", "gotoUgc", "registerRandomLiveListener", "listener", "sendLiveGift", "sendLiveMsg", "sendVideo", "showRechargeDialog", "unRegisterRandomLiveListener", "GoRandomLiveListener", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LiveRandomGo {
    @NotNull
    public static final LiveRandomGo INSTANCE = new LiveRandomGo();
    @NotNull
    private static final List<GoRandomLiveListener> listeners = new ArrayList();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;", "", "addRewardDiamond", "", "diamond", "", "goRandomLive", "gotoUgc", "sendLiveGift", "sendLiveMsg", "sendVideo", "showRechargeDialog", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface GoRandomLiveListener {
        void addRewardDiamond(int i9);

        void goRandomLive();

        void gotoUgc();

        void sendLiveGift();

        void sendLiveMsg();

        void sendVideo();

        void showRechargeDialog();
    }

    private LiveRandomGo() {
    }

    public final void addRewardDiamond(int i9) {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.addRewardDiamond(i9);
        }
    }

    @NotNull
    public final List<GoRandomLiveListener> getListeners() {
        return listeners;
    }

    public final void goRandomLive() {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.goRandomLive();
        }
    }

    public final void gotoUgc() {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.gotoUgc();
        }
    }

    public final void registerRandomLiveListener(@NotNull GoRandomLiveListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        listeners.add(listener);
    }

    public final void sendLiveGift() {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.sendLiveGift();
        }
    }

    public final void sendLiveMsg() {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.sendLiveMsg();
        }
    }

    public final void sendVideo() {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.sendVideo();
        }
    }

    public final void showRechargeDialog() {
        for (GoRandomLiveListener goRandomLiveListener : listeners) {
            goRandomLiveListener.showRechargeDialog();
        }
    }

    public final void unRegisterRandomLiveListener(@NotNull GoRandomLiveListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        listeners.remove(listener);
    }
}
