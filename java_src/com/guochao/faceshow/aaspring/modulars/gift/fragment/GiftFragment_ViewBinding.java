package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.gift.view.GiftComboView;
import com.guochao.faceshow.gift.view.NumCheckSendView;
/* loaded from: classes3.dex */
public class GiftFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private GiftFragment f17827b;

    /* renamed from: c  reason: collision with root package name */
    private View f17828c;

    /* renamed from: d  reason: collision with root package name */
    private View f17829d;

    /* renamed from: e  reason: collision with root package name */
    private View f17830e;

    /* renamed from: f  reason: collision with root package name */
    private View f17831f;

    /* renamed from: g  reason: collision with root package name */
    private View f17832g;

    /* renamed from: h  reason: collision with root package name */
    private View f17833h;

    /* renamed from: i  reason: collision with root package name */
    private View f17834i;

    /* renamed from: j  reason: collision with root package name */
    private View f17835j;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17836a;

        a(GiftFragment giftFragment) {
            this.f17836a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17836a.initAd(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17838a;

        b(GiftFragment giftFragment) {
            this.f17838a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17838a.fansRank(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17840a;

        c(GiftFragment giftFragment) {
            this.f17840a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17840a.onViewClicked();
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17842a;

        d(GiftFragment giftFragment) {
            this.f17842a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17842a.collectionClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17844a;

        e(GiftFragment giftFragment) {
            this.f17844a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17844a.gotoLuckyDetail();
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17846a;

        f(GiftFragment giftFragment) {
            this.f17846a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17846a.selectAll(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17848a;

        g(GiftFragment giftFragment) {
            this.f17848a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17848a.gotoCharge(view);
        }
    }

    /* loaded from: classes3.dex */
    class h extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f17850a;

        h(GiftFragment giftFragment) {
            this.f17850a = giftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17850a.dismiss(view);
        }
    }

    @UiThread
    public GiftFragment_ViewBinding(GiftFragment giftFragment, View view) {
        this.f17827b = giftFragment;
        giftFragment.mViewPager = (ViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'mViewPager'", ViewPager.class);
        giftFragment.mTabLayout = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        giftFragment.mNumCheckSendView = (NumCheckSendView) butterknife.internal.c.d(view, R.id.btnTopUp, "field 'mNumCheckSendView'", NumCheckSendView.class);
        giftFragment.mTextViewDiamonds = (TextView) butterknife.internal.c.d(view, R.id.balance, "field 'mTextViewDiamonds'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.ads_ll, "method 'initAd'");
        giftFragment.mAdsView = (ViewGroup) butterknife.internal.c.a(c10, R.id.ads_ll, "field 'mAdsView'", ViewGroup.class);
        this.f17828c = c10;
        c10.setOnClickListener(new a(giftFragment));
        giftFragment.mAdsArea = (ViewGroup) butterknife.internal.c.b(view, R.id.ads_area, "field 'mAdsArea'", ViewGroup.class);
        View c11 = butterknife.internal.c.c(view, R.id.rank_list, "field 'mRankList' and method 'fansRank'");
        giftFragment.mRankList = (ImageView) butterknife.internal.c.a(c11, R.id.rank_list, "field 'mRankList'", ImageView.class);
        this.f17829d = c11;
        c11.setOnClickListener(new b(giftFragment));
        giftFragment.mAdsTips = (ImageView) butterknife.internal.c.b(view, R.id.ads_img, "field 'mAdsTips'", ImageView.class);
        giftFragment.llMultiPlayer = butterknife.internal.c.c(view, R.id.ll_multi_player, "field 'llMultiPlayer'");
        giftFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        View c12 = butterknife.internal.c.c(view, R.id.iv_user_info, "field 'ivUserInfo' and method 'onViewClicked'");
        giftFragment.ivUserInfo = (ImageView) butterknife.internal.c.a(c12, R.id.iv_user_info, "field 'ivUserInfo'", ImageView.class);
        this.f17830e = c12;
        c12.setOnClickListener(new c(giftFragment));
        giftFragment.firstRechargeActivity = butterknife.internal.c.c(view, R.id.first_recharge_activity, "field 'firstRechargeActivity'");
        giftFragment.firstRechargeBottomText = (TextView) butterknife.internal.c.d(view, R.id.first_recharge_bottom_text, "field 'firstRechargeBottomText'", TextView.class);
        giftFragment.ivWeight = butterknife.internal.c.c(view, R.id.iv_weight, "field 'ivWeight'");
        View c13 = butterknife.internal.c.c(view, R.id.my_collection, "field 'myCollection' and method 'collectionClick'");
        giftFragment.myCollection = (ImageView) butterknife.internal.c.a(c13, R.id.my_collection, "field 'myCollection'", ImageView.class);
        this.f17831f = c13;
        c13.setOnClickListener(new d(giftFragment));
        giftFragment.tabLayout = butterknife.internal.c.c(view, R.id.tab_layout, "field 'tabLayout'");
        giftFragment.backpackTitle = butterknife.internal.c.c(view, R.id.backpack_title, "field 'backpackTitle'");
        giftFragment.topSend = butterknife.internal.c.c(view, R.id.btn_send1, "field 'topSend'");
        View c14 = butterknife.internal.c.c(view, R.id.lucky_gift_header, "field 'luckyGiftHeader' and method 'gotoLuckyDetail'");
        giftFragment.luckyGiftHeader = c14;
        this.f17832g = c14;
        c14.setOnClickListener(new e(giftFragment));
        giftFragment.luckyGiftAnimator = (ImageView) butterknife.internal.c.d(view, R.id.lucky_gift_anim, "field 'luckyGiftAnimator'", ImageView.class);
        giftFragment.giftComboView = (GiftComboView) butterknife.internal.c.d(view, R.id.combo_container, "field 'giftComboView'", GiftComboView.class);
        giftFragment.luckyGiftRule = (TextView) butterknife.internal.c.d(view, R.id.gift_tips_1, "field 'luckyGiftRule'", TextView.class);
        giftFragment.firstCharge = butterknife.internal.c.c(view, R.id.first_area, "field 'firstCharge'");
        giftFragment.firstRechargeHeader = (ViewGroup) butterknife.internal.c.d(view, R.id.first_recharge_header, "field 'firstRechargeHeader'", ViewGroup.class);
        giftFragment.firstRechargeText = (TextView) butterknife.internal.c.d(view, R.id.first_recharge_text, "field 'firstRechargeText'", TextView.class);
        giftFragment.firstRechargeGet = (TextView) butterknife.internal.c.d(view, R.id.iv_get_first_recharge, "field 'firstRechargeGet'", TextView.class);
        giftFragment.realContent = butterknife.internal.c.c(view, R.id.real_content, "field 'realContent'");
        View c15 = butterknife.internal.c.c(view, R.id.select_all, "field 'mSelectAllView' and method 'selectAll'");
        giftFragment.mSelectAllView = c15;
        this.f17833h = c15;
        c15.setOnClickListener(new f(giftFragment));
        View c16 = butterknife.internal.c.c(view, R.id.charge, "method 'gotoCharge'");
        this.f17834i = c16;
        c16.setOnClickListener(new g(giftFragment));
        View c17 = butterknife.internal.c.c(view, R.id.empty_click, "method 'dismiss'");
        this.f17835j = c17;
        c17.setOnClickListener(new h(giftFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GiftFragment giftFragment = this.f17827b;
        if (giftFragment != null) {
            this.f17827b = null;
            giftFragment.mViewPager = null;
            giftFragment.mTabLayout = null;
            giftFragment.mNumCheckSendView = null;
            giftFragment.mTextViewDiamonds = null;
            giftFragment.mAdsView = null;
            giftFragment.mAdsArea = null;
            giftFragment.mRankList = null;
            giftFragment.mAdsTips = null;
            giftFragment.llMultiPlayer = null;
            giftFragment.recyclerView = null;
            giftFragment.ivUserInfo = null;
            giftFragment.firstRechargeActivity = null;
            giftFragment.firstRechargeBottomText = null;
            giftFragment.ivWeight = null;
            giftFragment.myCollection = null;
            giftFragment.tabLayout = null;
            giftFragment.backpackTitle = null;
            giftFragment.topSend = null;
            giftFragment.luckyGiftHeader = null;
            giftFragment.luckyGiftAnimator = null;
            giftFragment.giftComboView = null;
            giftFragment.luckyGiftRule = null;
            giftFragment.firstCharge = null;
            giftFragment.firstRechargeHeader = null;
            giftFragment.firstRechargeText = null;
            giftFragment.firstRechargeGet = null;
            giftFragment.realContent = null;
            giftFragment.mSelectAllView = null;
            this.f17828c.setOnClickListener(null);
            this.f17828c = null;
            this.f17829d.setOnClickListener(null);
            this.f17829d = null;
            this.f17830e.setOnClickListener(null);
            this.f17830e = null;
            this.f17831f.setOnClickListener(null);
            this.f17831f = null;
            this.f17832g.setOnClickListener(null);
            this.f17832g = null;
            this.f17833h.setOnClickListener(null);
            this.f17833h = null;
            this.f17834i.setOnClickListener(null);
            this.f17834i = null;
            this.f17835j.setOnClickListener(null);
            this.f17835j = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
