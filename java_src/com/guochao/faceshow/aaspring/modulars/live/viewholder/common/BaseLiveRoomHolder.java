package com.guochao.faceshow.aaspring.modulars.live.viewholder.common;

import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
/* loaded from: classes3.dex */
public class BaseLiveRoomHolder extends BaseViewHolder implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    protected BaseLiveRoomFragment f19916a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19917b;

    /* renamed from: c  reason: collision with root package name */
    public LiveRoomModel f19918c;

    /* renamed from: d  reason: collision with root package name */
    private LiveInfoMatchBean f19919d;

    /* renamed from: e  reason: collision with root package name */
    public String f19920e;

    public BaseLiveRoomHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view) {
        super(view);
        view.setLayoutDirection(3);
        this.f19916a = baseLiveRoomFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends BaseLiveRoomHolder> T c() {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f19916a;
        if (baseLiveRoomFragment != null) {
            baseLiveRoomFragment.getLifecycle().addObserver(this);
        }
        return this;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public void create() {
    }

    public void d(LiveRoomModel liveRoomModel) {
        this.f19918c = liveRoomModel;
    }

    public void e(LiveRoomModel liveRoomModel, long j10) {
        this.f19918c = liveRoomModel;
    }

    public void f(boolean z10) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f19916a;
        if (baseLiveRoomFragment != null) {
            baseLiveRoomFragment.getLifecycle().removeObserver(this);
        }
    }

    public void g() {
        this.f19918c = null;
        BaseLiveRoomFragment baseLiveRoomFragment = this.f19916a;
        if (baseLiveRoomFragment != null) {
            baseLiveRoomFragment.getLifecycle().removeObserver(this);
        }
    }

    public void h(int i9) {
    }

    public void i(LiveInfoMatchBean liveInfoMatchBean) {
        this.f19919d = liveInfoMatchBean;
    }

    public void j(boolean z10) {
        this.f19917b = z10;
    }

    public void k(boolean z10, long j10, boolean z11) {
    }

    public void l(LiveRoomModel liveRoomModel) {
    }

    public void m(boolean z10, long j10, boolean z11) {
    }

    public void n(VolumeMessage volumeMessage) {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void pause() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void resume() {
    }
}
