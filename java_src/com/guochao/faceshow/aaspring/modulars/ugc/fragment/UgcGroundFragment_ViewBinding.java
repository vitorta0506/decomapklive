package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.cardview.widget.CardView;
import butterknife.Unbinder;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public class UgcGroundFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UgcGroundFragment f22835b;

    /* renamed from: c  reason: collision with root package name */
    private View f22836c;

    /* renamed from: d  reason: collision with root package name */
    private View f22837d;

    /* renamed from: e  reason: collision with root package name */
    private View f22838e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UgcGroundFragment f22839a;

        a(UgcGroundFragment ugcGroundFragment) {
            this.f22839a = ugcGroundFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22839a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UgcGroundFragment f22841a;

        b(UgcGroundFragment ugcGroundFragment) {
            this.f22841a = ugcGroundFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22841a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UgcGroundFragment f22843a;

        c(UgcGroundFragment ugcGroundFragment) {
            this.f22843a = ugcGroundFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22843a.click(view);
        }
    }

    @UiThread
    public UgcGroundFragment_ViewBinding(UgcGroundFragment ugcGroundFragment, View view) {
        this.f22835b = ugcGroundFragment;
        ugcGroundFragment.mViewPager = (SwipeBackViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'mViewPager'", SwipeBackViewPager.class);
        ugcGroundFragment.mTabLayout = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.gender_selector, "field 'mGenderSelector' and method 'onViewClicked'");
        ugcGroundFragment.mGenderSelector = (ImageView) butterknife.internal.c.a(c10, R.id.gender_selector, "field 'mGenderSelector'", ImageView.class);
        this.f22836c = c10;
        c10.setOnClickListener(new a(ugcGroundFragment));
        ugcGroundFragment.mAppBarLayout = (AppBarLayout) butterknife.internal.c.d(view, R.id.appbar_layout, "field 'mAppBarLayout'", AppBarLayout.class);
        View c11 = butterknife.internal.c.c(view, R.id.back_button, "field 'mImageViewBackButton' and method 'click'");
        ugcGroundFragment.mImageViewBackButton = (ImageView) butterknife.internal.c.a(c11, R.id.back_button, "field 'mImageViewBackButton'", ImageView.class);
        this.f22837d = c11;
        c11.setOnClickListener(new b(ugcGroundFragment));
        ugcGroundFragment.mPeopleNearby = (CardView) butterknife.internal.c.d(view, R.id.cv_people_nearby, "field 'mPeopleNearby'", CardView.class);
        ugcGroundFragment.mFindYou = (CardView) butterknife.internal.c.d(view, R.id.cv_find_you, "field 'mFindYou'", CardView.class);
        ugcGroundFragment.mDatingSquare = (CardView) butterknife.internal.c.d(view, R.id.cv_dating_square, "field 'mDatingSquare'", CardView.class);
        ugcGroundFragment.mPlanet = (CardView) butterknife.internal.c.d(view, R.id.cv_planet, "field 'mPlanet'", CardView.class);
        ugcGroundFragment.mSearch = butterknife.internal.c.c(view, R.id.il_search, "field 'mSearch'");
        ugcGroundFragment.ugcModuleTopLL = (LinearLayout) butterknife.internal.c.d(view, R.id.ugcModuleTopLL, "field 'ugcModuleTopLL'", LinearLayout.class);
        ugcGroundFragment.mScan = (ImageView) butterknife.internal.c.d(view, R.id.scan, "field 'mScan'", ImageView.class);
        ugcGroundFragment.mSvgaImageViewV2 = (SvgaImageViewV2) butterknife.internal.c.d(view, R.id.svga, "field 'mSvgaImageViewV2'", SvgaImageViewV2.class);
        ugcGroundFragment.m1v1Bg = (ImageView) butterknife.internal.c.d(view, R.id.bg_1v1, "field 'm1v1Bg'", ImageView.class);
        View c12 = butterknife.internal.c.c(view, R.id.sendDynamic, "field 'sendDynamic' and method 'click'");
        ugcGroundFragment.sendDynamic = (ImageView) butterknife.internal.c.a(c12, R.id.sendDynamic, "field 'sendDynamic'", ImageView.class);
        this.f22838e = c12;
        c12.setOnClickListener(new c(ugcGroundFragment));
        ugcGroundFragment.sendTip = (TextView) butterknife.internal.c.d(view, R.id.sendTip, "field 'sendTip'", TextView.class);
        ugcGroundFragment.lay_sendDynamic = (LinearLayout) butterknife.internal.c.d(view, R.id.lay_sendDynamic, "field 'lay_sendDynamic'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UgcGroundFragment ugcGroundFragment = this.f22835b;
        if (ugcGroundFragment != null) {
            this.f22835b = null;
            ugcGroundFragment.mViewPager = null;
            ugcGroundFragment.mTabLayout = null;
            ugcGroundFragment.mGenderSelector = null;
            ugcGroundFragment.mAppBarLayout = null;
            ugcGroundFragment.mImageViewBackButton = null;
            ugcGroundFragment.mPeopleNearby = null;
            ugcGroundFragment.mFindYou = null;
            ugcGroundFragment.mDatingSquare = null;
            ugcGroundFragment.mPlanet = null;
            ugcGroundFragment.mSearch = null;
            ugcGroundFragment.ugcModuleTopLL = null;
            ugcGroundFragment.mScan = null;
            ugcGroundFragment.mSvgaImageViewV2 = null;
            ugcGroundFragment.m1v1Bg = null;
            ugcGroundFragment.sendDynamic = null;
            ugcGroundFragment.sendTip = null;
            ugcGroundFragment.lay_sendDynamic = null;
            this.f22836c.setOnClickListener(null);
            this.f22836c = null;
            this.f22837d.setOnClickListener(null);
            this.f22837d = null;
            this.f22838e.setOnClickListener(null);
            this.f22838e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
