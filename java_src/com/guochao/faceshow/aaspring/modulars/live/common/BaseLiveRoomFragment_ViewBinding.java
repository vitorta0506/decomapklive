package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
import com.guochao.faceshow.aaspring.views.AddZanHeartView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
/* loaded from: classes3.dex */
public class BaseLiveRoomFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseLiveRoomFragment f18625b;

    /* renamed from: c  reason: collision with root package name */
    private View f18626c;

    /* renamed from: d  reason: collision with root package name */
    private View f18627d;

    /* renamed from: e  reason: collision with root package name */
    private View f18628e;

    /* renamed from: f  reason: collision with root package name */
    private View f18629f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveRoomFragment f18630a;

        a(BaseLiveRoomFragment baseLiveRoomFragment) {
            this.f18630a = baseLiveRoomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18630a.showLinkMic(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveRoomFragment f18632a;

        b(BaseLiveRoomFragment baseLiveRoomFragment) {
            this.f18632a = baseLiveRoomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18632a.clickLittlePlayer(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveRoomFragment f18634a;

        c(BaseLiveRoomFragment baseLiveRoomFragment) {
            this.f18634a = baseLiveRoomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18634a.send(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveRoomFragment f18636a;

        d(BaseLiveRoomFragment baseLiveRoomFragment) {
            this.f18636a = baseLiveRoomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18636a.openDanmu(view);
        }
    }

    @UiThread
    public BaseLiveRoomFragment_ViewBinding(BaseLiveRoomFragment baseLiveRoomFragment, View view) {
        this.f18625b = baseLiveRoomFragment;
        baseLiveRoomFragment.mPushCloudView = (FrameLayout) butterknife.internal.c.b(view, R.id.push_cloud_view, "field 'mPushCloudView'", FrameLayout.class);
        baseLiveRoomFragment.flWatcherDate = (LinearLayout) butterknife.internal.c.d(view, R.id.fl_watcher_date, "field 'flWatcherDate'", LinearLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.request_linkmic, "field 'mRequestLink'");
        baseLiveRoomFragment.mRequestLink = c10;
        this.f18626c = c10;
        c10.setOnClickListener(new a(baseLiveRoomFragment));
        baseLiveRoomFragment.mRequestLinkCountTextView = (TextView) butterknife.internal.c.d(view, R.id.apply_linkmic_count, "field 'mRequestLinkCountTextView'", TextView.class);
        baseLiveRoomFragment.adsLay = butterknife.internal.c.c(view, R.id.ads_lay, "field 'adsLay'");
        baseLiveRoomFragment.mLiveScrollToClearScreenView = (LiveScrollToClearScreenView) butterknife.internal.c.d(view, R.id.scroll_layout, "field 'mLiveScrollToClearScreenView'", LiveScrollToClearScreenView.class);
        baseLiveRoomFragment.mTextViewFaceCastId = (TextView) butterknife.internal.c.d(view, R.id.facecast_id, "field 'mTextViewFaceCastId'", TextView.class);
        baseLiveRoomFragment.mLiveViewContainer = (ViewGroup) butterknife.internal.c.b(view, R.id.float_recycler_view_container, "field 'mLiveViewContainer'", ViewGroup.class);
        baseLiveRoomFragment.mVideoRecyclerView = (MultiLivePlayView) butterknife.internal.c.d(view, R.id.video_recycler_view, "field 'mVideoRecyclerView'", MultiLivePlayView.class);
        baseLiveRoomFragment.mLiveViewMaskContainer = view.findViewById(R.id.float_info_recycler_view_container);
        baseLiveRoomFragment.mMaskRecyclerView = (MultiLivePlayView) butterknife.internal.c.d(view, R.id.video_info_recycler_view, "field 'mMaskRecyclerView'", MultiLivePlayView.class);
        baseLiveRoomFragment.mMaskVideoRecyclerView = (MultiLivePlayView) butterknife.internal.c.d(view, R.id.mask_video_view, "field 'mMaskVideoRecyclerView'", MultiLivePlayView.class);
        baseLiveRoomFragment.mTextViewBigGiftBoxCount = (TextView) butterknife.internal.c.d(view, R.id.big_gift_box_count, "field 'mTextViewBigGiftBoxCount'", TextView.class);
        baseLiveRoomFragment.iconBigBox = (ImageView) butterknife.internal.c.d(view, R.id.icon_big_box, "field 'iconBigBox'", ImageView.class);
        baseLiveRoomFragment.mTextViewCountDownGift = (TextView) butterknife.internal.c.d(view, R.id.gift_box_count_down_tv, "field 'mTextViewCountDownGift'", TextView.class);
        baseLiveRoomFragment.mViewGiftBox = butterknife.internal.c.c(view, R.id.big_gift_box, "field 'mViewGiftBox'");
        baseLiveRoomFragment.mRunwayMessageViewArea = (FrameLayout) butterknife.internal.c.d(view, R.id.big_gift_view, "field 'mRunwayMessageViewArea'", FrameLayout.class);
        baseLiveRoomFragment.rcvGift = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_gift, "field 'rcvGift'", RecyclerView.class);
        baseLiveRoomFragment.clickView = butterknife.internal.c.c(view, R.id.click_view, "field 'clickView'");
        baseLiveRoomFragment.mTextViewLinkMicUserName = (TextView) butterknife.internal.c.b(view, R.id.linkmic_user_name, "field 'mTextViewLinkMicUserName'", TextView.class);
        baseLiveRoomFragment.mPkInfoAreaView = butterknife.internal.c.c(view, R.id.pk_info_area, "field 'mPkInfoAreaView'");
        baseLiveRoomFragment.giftAndAdsView = view.findViewById(R.id.ads_and_gift_box);
        baseLiveRoomFragment.mAdsAndActivityView = butterknife.internal.c.c(view, R.id.ads_and_activity, "field 'mAdsAndActivityView'");
        baseLiveRoomFragment.musicViewSub = (ViewStub) butterknife.internal.c.d(view, R.id.music_activity_live, "field 'musicViewSub'", ViewStub.class);
        baseLiveRoomFragment.dishWheelView = (ViewStub) butterknife.internal.c.d(view, R.id.dish_wheel_layout, "field 'dishWheelView'", ViewStub.class);
        baseLiveRoomFragment.smallMiniGameLay = butterknife.internal.c.c(view, R.id.small_mini_game_lay, "field 'smallMiniGameLay'");
        baseLiveRoomFragment.mTXCloudVideoViewAcc = (FrameLayout) butterknife.internal.c.b(view, R.id.acc_video_view, "field 'mTXCloudVideoViewAcc'", FrameLayout.class);
        baseLiveRoomFragment.mPeriscopeLayout = (AddZanHeartView) butterknife.internal.c.b(view, R.id.live_zan_ly, "field 'mPeriscopeLayout'", AddZanHeartView.class);
        baseLiveRoomFragment.firstRechargeClose = (ImageView) butterknife.internal.c.b(view, R.id.first_recharge_close, "field 'firstRechargeClose'", ImageView.class);
        baseLiveRoomFragment.firstRechargeLay = (ViewGroup) butterknife.internal.c.d(view, R.id.first_recharge_lay, "field 'firstRechargeLay'", ViewGroup.class);
        baseLiveRoomFragment.tvRechargeDowntownTime = (TextView) butterknife.internal.c.d(view, R.id.tv_recharge_downtown_time, "field 'tvRechargeDowntownTime'", TextView.class);
        baseLiveRoomFragment.firstRechargeCloseVoice = (ImageView) butterknife.internal.c.d(view, R.id.first_recharge_close_voice, "field 'firstRechargeCloseVoice'", ImageView.class);
        baseLiveRoomFragment.firstRechargeLayVoice = (ViewGroup) butterknife.internal.c.d(view, R.id.first_recharge_lay_voice, "field 'firstRechargeLayVoice'", ViewGroup.class);
        baseLiveRoomFragment.tvRechargeDowntownTimeVoice = (TextView) butterknife.internal.c.d(view, R.id.tv_recharge_downtown_time_voice, "field 'tvRechargeDowntownTimeVoice'", TextView.class);
        View findViewById = view.findViewById(R.id.little_pusher_info_area_click_area);
        baseLiveRoomFragment.mLittleClickView = findViewById;
        if (findViewById != null) {
            this.f18627d = findViewById;
            findViewById.setOnClickListener(new b(baseLiveRoomFragment));
        }
        baseLiveRoomFragment.mIDanmakuView = (DanmuView) butterknife.internal.c.d(view, R.id.danmu, "field 'mIDanmakuView'", DanmuView.class);
        baseLiveRoomFragment.mInputArea = butterknife.internal.c.c(view, R.id.live_bottom_input_ly, "field 'mInputArea'");
        baseLiveRoomFragment.mEditText = (EditText) butterknife.internal.c.d(view, R.id.live_bottom_edit_text, "field 'mEditText'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.btn_send, "field 'btnSend' and method 'send'");
        baseLiveRoomFragment.btnSend = (ImageView) butterknife.internal.c.a(c11, R.id.btn_send, "field 'btnSend'", ImageView.class);
        this.f18628e = c11;
        c11.setOnClickListener(new c(baseLiveRoomFragment));
        View c12 = butterknife.internal.c.c(view, R.id.switch_live_danmu, "field 'mViewLiveDanmuSwitch' and method 'openDanmu'");
        baseLiveRoomFragment.mViewLiveDanmuSwitch = c12;
        this.f18629f = c12;
        c12.setOnClickListener(new d(baseLiveRoomFragment));
        baseLiveRoomFragment.mGuideDanmu = butterknife.internal.c.c(view, R.id.guide_danmu, "field 'mGuideDanmu'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18625b;
        if (baseLiveRoomFragment != null) {
            this.f18625b = null;
            baseLiveRoomFragment.mPushCloudView = null;
            baseLiveRoomFragment.flWatcherDate = null;
            baseLiveRoomFragment.mRequestLink = null;
            baseLiveRoomFragment.mRequestLinkCountTextView = null;
            baseLiveRoomFragment.adsLay = null;
            baseLiveRoomFragment.mLiveScrollToClearScreenView = null;
            baseLiveRoomFragment.mTextViewFaceCastId = null;
            baseLiveRoomFragment.mLiveViewContainer = null;
            baseLiveRoomFragment.mVideoRecyclerView = null;
            baseLiveRoomFragment.mLiveViewMaskContainer = null;
            baseLiveRoomFragment.mMaskRecyclerView = null;
            baseLiveRoomFragment.mMaskVideoRecyclerView = null;
            baseLiveRoomFragment.mTextViewBigGiftBoxCount = null;
            baseLiveRoomFragment.iconBigBox = null;
            baseLiveRoomFragment.mTextViewCountDownGift = null;
            baseLiveRoomFragment.mViewGiftBox = null;
            baseLiveRoomFragment.mRunwayMessageViewArea = null;
            baseLiveRoomFragment.rcvGift = null;
            baseLiveRoomFragment.clickView = null;
            baseLiveRoomFragment.mTextViewLinkMicUserName = null;
            baseLiveRoomFragment.mPkInfoAreaView = null;
            baseLiveRoomFragment.giftAndAdsView = null;
            baseLiveRoomFragment.mAdsAndActivityView = null;
            baseLiveRoomFragment.musicViewSub = null;
            baseLiveRoomFragment.dishWheelView = null;
            baseLiveRoomFragment.smallMiniGameLay = null;
            baseLiveRoomFragment.mTXCloudVideoViewAcc = null;
            baseLiveRoomFragment.mPeriscopeLayout = null;
            baseLiveRoomFragment.firstRechargeClose = null;
            baseLiveRoomFragment.firstRechargeLay = null;
            baseLiveRoomFragment.tvRechargeDowntownTime = null;
            baseLiveRoomFragment.firstRechargeCloseVoice = null;
            baseLiveRoomFragment.firstRechargeLayVoice = null;
            baseLiveRoomFragment.tvRechargeDowntownTimeVoice = null;
            baseLiveRoomFragment.mLittleClickView = null;
            baseLiveRoomFragment.mIDanmakuView = null;
            baseLiveRoomFragment.mInputArea = null;
            baseLiveRoomFragment.mEditText = null;
            baseLiveRoomFragment.btnSend = null;
            baseLiveRoomFragment.mViewLiveDanmuSwitch = null;
            baseLiveRoomFragment.mGuideDanmu = null;
            this.f18626c.setOnClickListener(null);
            this.f18626c = null;
            View view = this.f18627d;
            if (view != null) {
                view.setOnClickListener(null);
                this.f18627d = null;
            }
            this.f18628e.setOnClickListener(null);
            this.f18628e = null;
            this.f18629f.setOnClickListener(null);
            this.f18629f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
