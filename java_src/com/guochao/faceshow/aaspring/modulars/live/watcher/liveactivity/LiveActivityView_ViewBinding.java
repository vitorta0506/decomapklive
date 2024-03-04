package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes3.dex */
public class LiveActivityView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveActivityView f20153b;

    @UiThread
    public LiveActivityView_ViewBinding(LiveActivityView liveActivityView, View view) {
        this.f20153b = liveActivityView;
        liveActivityView.banner = (RecyclerView) c.d(view, R.id.banner, "field 'banner'", RecyclerView.class);
        liveActivityView.pageIndicatorView = (PageIndicatorView) c.d(view, R.id.pageIndicatorView, "field 'pageIndicatorView'", PageIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveActivityView liveActivityView = this.f20153b;
        if (liveActivityView != null) {
            this.f20153b = null;
            liveActivityView.banner = null;
            liveActivityView.pageIndicatorView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
