package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class LotteryFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LotteryFragment f20473b;

    /* renamed from: c  reason: collision with root package name */
    private View f20474c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LotteryFragment f20475a;

        a(LotteryFragment lotteryFragment) {
            this.f20475a = lotteryFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20475a.dismiss(view);
        }
    }

    @UiThread
    public LotteryFragment_ViewBinding(LotteryFragment lotteryFragment, View view) {
        this.f20473b = lotteryFragment;
        lotteryFragment.mViewGrid = butterknife.internal.c.c(view, R.id.grid, "field 'mViewGrid'");
        lotteryFragment.mViewGroupGrid = (ViewGroup) butterknife.internal.c.d(view, R.id.grid_view_group, "field 'mViewGroupGrid'", ViewGroup.class);
        lotteryFragment.mViewResult = butterknife.internal.c.c(view, R.id.result, "field 'mViewResult'");
        View c10 = butterknife.internal.c.c(view, R.id.i_know, "field 'mTextViewIKnow' and method 'dismiss'");
        lotteryFragment.mTextViewIKnow = (TextView) butterknife.internal.c.a(c10, R.id.i_know, "field 'mTextViewIKnow'", TextView.class);
        this.f20474c = c10;
        c10.setOnClickListener(new a(lotteryFragment));
        lotteryFragment.mSVGAImageView = (SVGAImageView) butterknife.internal.c.d(view, R.id.svga, "field 'mSVGAImageView'", SVGAImageView.class);
        lotteryFragment.mViewNewAvatar = butterknife.internal.c.c(view, R.id.new_avatar, "field 'mViewNewAvatar'");
        lotteryFragment.mViewFreeDiamonds = butterknife.internal.c.c(view, R.id.free_diamonds, "field 'mViewFreeDiamonds'");
        lotteryFragment.mTextViewDiamondCount = (TextView) butterknife.internal.c.d(view, R.id.diamond_count, "field 'mTextViewDiamondCount'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LotteryFragment lotteryFragment = this.f20473b;
        if (lotteryFragment != null) {
            this.f20473b = null;
            lotteryFragment.mViewGrid = null;
            lotteryFragment.mViewGroupGrid = null;
            lotteryFragment.mViewResult = null;
            lotteryFragment.mTextViewIKnow = null;
            lotteryFragment.mSVGAImageView = null;
            lotteryFragment.mViewNewAvatar = null;
            lotteryFragment.mViewFreeDiamonds = null;
            lotteryFragment.mTextViewDiamondCount = null;
            this.f20474c.setOnClickListener(null);
            this.f20474c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
