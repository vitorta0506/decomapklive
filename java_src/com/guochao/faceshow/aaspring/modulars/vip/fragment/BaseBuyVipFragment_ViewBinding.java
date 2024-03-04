package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ObservableScrollView;
import com.opensource.svgaplayer.SVGAImageView;
import com.rd.PageIndicatorView;
/* loaded from: classes3.dex */
public class BaseBuyVipFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseBuyVipFragment f23342b;

    @UiThread
    public BaseBuyVipFragment_ViewBinding(BaseBuyVipFragment baseBuyVipFragment, View view) {
        this.f23342b = baseBuyVipFragment;
        baseBuyVipFragment.firstItemLay = c.c(view, R.id.first_item_lay, "field 'firstItemLay'");
        baseBuyVipFragment.secondItemLay = c.c(view, R.id.second_item_lay, "field 'secondItemLay'");
        baseBuyVipFragment.thirdItemLay = c.c(view, R.id.third_item_lay, "field 'thirdItemLay'");
        baseBuyVipFragment.mSVGAImageViewNext = (SVGAImageView) c.d(view, R.id.next_svga, "field 'mSVGAImageViewNext'", SVGAImageView.class);
        baseBuyVipFragment.mScrollView = (ObservableScrollView) c.b(view, R.id.scroll, "field 'mScrollView'", ObservableScrollView.class);
        baseBuyVipFragment.mVipBg = c.c(view, R.id.vip_bj, "field 'mVipBg'");
        baseBuyVipFragment.mViewPager = (ViewPager2) c.d(view, R.id.viewpager, "field 'mViewPager'", ViewPager2.class);
        baseBuyVipFragment.mPageIndicatorView = (PageIndicatorView) c.d(view, R.id.indicator, "field 'mPageIndicatorView'", PageIndicatorView.class);
        baseBuyVipFragment.mViewNext = c.c(view, R.id.next, "field 'mViewNext'");
        baseBuyVipFragment.mViewNextBtn = (TextView) c.d(view, R.id.next_btn, "field 'mViewNextBtn'", TextView.class);
        baseBuyVipFragment.mViewNextDisableHint = c.c(view, R.id.disable_hint, "field 'mViewNextDisableHint'");
        baseBuyVipFragment.mTextViewNextHint1 = (TextView) c.d(view, R.id.next_title1, "field 'mTextViewNextHint1'", TextView.class);
        baseBuyVipFragment.mTextViewNextHint2 = (TextView) c.d(view, R.id.next_title2, "field 'mTextViewNextHint2'", TextView.class);
        baseBuyVipFragment.mViewGroupMenus = (ViewGroup) c.d(view, R.id.menus, "field 'mViewGroupMenus'", ViewGroup.class);
        baseBuyVipFragment.mLevelUpToVVipView = (TextView) c.d(view, R.id.level_up_to_vvip, "field 'mLevelUpToVVipView'", TextView.class);
        baseBuyVipFragment.btnLay = c.c(view, R.id.btn_lay, "field 'btnLay'");
        baseBuyVipFragment.mAnimTop = view.findViewById(R.id.anim_top);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseBuyVipFragment baseBuyVipFragment = this.f23342b;
        if (baseBuyVipFragment != null) {
            this.f23342b = null;
            baseBuyVipFragment.firstItemLay = null;
            baseBuyVipFragment.secondItemLay = null;
            baseBuyVipFragment.thirdItemLay = null;
            baseBuyVipFragment.mSVGAImageViewNext = null;
            baseBuyVipFragment.mScrollView = null;
            baseBuyVipFragment.mVipBg = null;
            baseBuyVipFragment.mViewPager = null;
            baseBuyVipFragment.mPageIndicatorView = null;
            baseBuyVipFragment.mViewNext = null;
            baseBuyVipFragment.mViewNextBtn = null;
            baseBuyVipFragment.mViewNextDisableHint = null;
            baseBuyVipFragment.mTextViewNextHint1 = null;
            baseBuyVipFragment.mTextViewNextHint2 = null;
            baseBuyVipFragment.mViewGroupMenus = null;
            baseBuyVipFragment.mLevelUpToVVipView = null;
            baseBuyVipFragment.btnLay = null;
            baseBuyVipFragment.mAnimTop = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
