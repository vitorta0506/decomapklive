package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ShortVideoFragment_ViewBinding extends BaseShortVideoFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ShortVideoFragment f20779c;

    /* renamed from: d  reason: collision with root package name */
    private View f20780d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShortVideoFragment f20781a;

        a(ShortVideoFragment shortVideoFragment) {
            this.f20781a = shortVideoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20781a.publish(view);
        }
    }

    @UiThread
    public ShortVideoFragment_ViewBinding(ShortVideoFragment shortVideoFragment, View view) {
        super(shortVideoFragment, view);
        this.f20779c = shortVideoFragment;
        shortVideoFragment.ivVideoBg = (ImageView) butterknife.internal.c.d(view, R.id.iv_video_bg, "field 'ivVideoBg'", ImageView.class);
        shortVideoFragment.mEmptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'mEmptyView'");
        View c10 = butterknife.internal.c.c(view, R.id.publish, "method 'publish'");
        this.f20780d = c10;
        c10.setOnClickListener(new a(shortVideoFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ShortVideoFragment shortVideoFragment = this.f20779c;
        if (shortVideoFragment != null) {
            this.f20779c = null;
            shortVideoFragment.ivVideoBg = null;
            shortVideoFragment.mEmptyView = null;
            this.f20780d.setOnClickListener(null);
            this.f20780d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
