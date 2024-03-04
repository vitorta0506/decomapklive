package com.guochao.faceshow.aaspring.views;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class GuideDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private GuideDialogFragment f23716b;

    /* renamed from: c  reason: collision with root package name */
    private View f23717c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GuideDialogFragment f23718a;

        a(GuideDialogFragment guideDialogFragment) {
            this.f23718a = guideDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23718a.onViewClicked();
        }
    }

    @UiThread
    public GuideDialogFragment_ViewBinding(GuideDialogFragment guideDialogFragment, View view) {
        this.f23716b = guideDialogFragment;
        guideDialogFragment.svgGuid = (SVGAImageView) butterknife.internal.c.d(view, R.id.svg_guid, "field 'svgGuid'", SVGAImageView.class);
        guideDialogFragment.llGuid = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_guid, "field 'llGuid'", LinearLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.fl_content, "field 'flContent' and method 'onViewClicked'");
        guideDialogFragment.flContent = (FrameLayout) butterknife.internal.c.a(c10, R.id.fl_content, "field 'flContent'", FrameLayout.class);
        this.f23717c = c10;
        c10.setOnClickListener(new a(guideDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GuideDialogFragment guideDialogFragment = this.f23716b;
        if (guideDialogFragment != null) {
            this.f23716b = null;
            guideDialogFragment.svgGuid = null;
            guideDialogFragment.llGuid = null;
            guideDialogFragment.flContent = null;
            this.f23717c.setOnClickListener(null);
            this.f23717c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
