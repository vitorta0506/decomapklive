package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class AppEventFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AppEventFragment f19161b;

    /* renamed from: c  reason: collision with root package name */
    private View f19162c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppEventFragment f19163a;

        a(AppEventFragment appEventFragment) {
            this.f19163a = appEventFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19163a.onBannerClick(view);
        }
    }

    @UiThread
    public AppEventFragment_ViewBinding(AppEventFragment appEventFragment, View view) {
        this.f19161b = appEventFragment;
        appEventFragment.mImageView = (ImageView) butterknife.internal.c.d(view, R.id.img, "field 'mImageView'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.content, "method 'onBannerClick'");
        this.f19162c = c10;
        c10.setOnClickListener(new a(appEventFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AppEventFragment appEventFragment = this.f19161b;
        if (appEventFragment != null) {
            this.f19161b = null;
            appEventFragment.mImageView = null;
            this.f19162c.setOnClickListener(null);
            this.f19162c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
