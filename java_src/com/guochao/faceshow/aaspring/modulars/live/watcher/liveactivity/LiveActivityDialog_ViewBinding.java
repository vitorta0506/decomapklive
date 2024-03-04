package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes3.dex */
public class LiveActivityDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveActivityDialog f20085b;

    /* renamed from: c  reason: collision with root package name */
    private View f20086c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveActivityDialog f20087a;

        a(LiveActivityDialog liveActivityDialog) {
            this.f20087a = liveActivityDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20087a.onViewClicked();
        }
    }

    @UiThread
    public LiveActivityDialog_ViewBinding(LiveActivityDialog liveActivityDialog, View view) {
        this.f20085b = liveActivityDialog;
        liveActivityDialog.recyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        liveActivityDialog.cardView = (FrameLayout) c.d(view, R.id.card_view, "field 'cardView'", FrameLayout.class);
        liveActivityDialog.pageIndicatorView = (PageIndicatorView) c.d(view, R.id.pageIndicatorView, "field 'pageIndicatorView'", PageIndicatorView.class);
        View c10 = c.c(view, R.id.btn_close, "method 'onViewClicked'");
        this.f20086c = c10;
        c10.setOnClickListener(new a(liveActivityDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveActivityDialog liveActivityDialog = this.f20085b;
        if (liveActivityDialog != null) {
            this.f20085b = null;
            liveActivityDialog.recyclerView = null;
            liveActivityDialog.cardView = null;
            liveActivityDialog.pageIndicatorView = null;
            this.f20086c.setOnClickListener(null);
            this.f20086c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
