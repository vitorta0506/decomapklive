package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LiveMusicActivityView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveMusicActivityView f20165b;

    /* renamed from: c  reason: collision with root package name */
    private View f20166c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveMusicActivityView f20167a;

        a(LiveMusicActivityView liveMusicActivityView) {
            this.f20167a = liveMusicActivityView;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20167a.onViewClicked(view);
        }
    }

    @UiThread
    public LiveMusicActivityView_ViewBinding(LiveMusicActivityView liveMusicActivityView, View view) {
        this.f20165b = liveMusicActivityView;
        liveMusicActivityView.ivExpand = (ImageView) c.d(view, R.id.iv_expand, "field 'ivExpand'", ImageView.class);
        liveMusicActivityView.indicatorLay = (RecyclerView) c.d(view, R.id.indicator_lay, "field 'indicatorLay'", RecyclerView.class);
        liveMusicActivityView.bgFloatView = c.c(view, R.id.bg_float_view, "field 'bgFloatView'");
        liveMusicActivityView.topImageLay = (CardView) c.d(view, R.id.top_image_lay, "field 'topImageLay'", CardView.class);
        View c10 = c.c(view, R.id.expand_lay, "method 'onViewClicked'");
        this.f20166c = c10;
        c10.setOnClickListener(new a(liveMusicActivityView));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveMusicActivityView liveMusicActivityView = this.f20165b;
        if (liveMusicActivityView != null) {
            this.f20165b = null;
            liveMusicActivityView.ivExpand = null;
            liveMusicActivityView.indicatorLay = null;
            liveMusicActivityView.bgFloatView = null;
            liveMusicActivityView.topImageLay = null;
            this.f20166c.setOnClickListener(null);
            this.f20166c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
