package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.PKProgressView;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class PKLiveInfoFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private PKLiveInfoFragment f18967d;

    /* renamed from: e  reason: collision with root package name */
    private View f18968e;

    /* renamed from: f  reason: collision with root package name */
    private View f18969f;

    /* renamed from: g  reason: collision with root package name */
    private View f18970g;

    /* renamed from: h  reason: collision with root package name */
    private View f18971h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PKLiveInfoFragment f18972a;

        a(PKLiveInfoFragment pKLiveInfoFragment) {
            this.f18972a = pKLiveInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18972a.showTime(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PKLiveInfoFragment f18974a;

        b(PKLiveInfoFragment pKLiveInfoFragment) {
            this.f18974a = pKLiveInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18974a.onViewClicked();
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PKLiveInfoFragment f18976a;

        c(PKLiveInfoFragment pKLiveInfoFragment) {
            this.f18976a = pKLiveInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18976a.richList(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PKLiveInfoFragment f18978a;

        d(PKLiveInfoFragment pKLiveInfoFragment) {
            this.f18978a = pKLiveInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18978a.richList(view);
        }
    }

    @UiThread
    public PKLiveInfoFragment_ViewBinding(PKLiveInfoFragment pKLiveInfoFragment, View view) {
        super(pKLiveInfoFragment, view);
        this.f18967d = pKLiveInfoFragment;
        pKLiveInfoFragment.mRatioFrameLayout = (RatioFrameLayout) butterknife.internal.c.d(view, R.id.info_content, "field 'mRatioFrameLayout'", RatioFrameLayout.class);
        pKLiveInfoFragment.marqueeView = butterknife.internal.c.c(view, R.id.marqueeView, "field 'marqueeView'");
        pKLiveInfoFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_text_list, "field 'recyclerView'", RecyclerView.class);
        View c10 = butterknife.internal.c.c(view, R.id.pk_count_down_time, "field 'mTextViewCountDown' and method 'showTime'");
        pKLiveInfoFragment.mTextViewCountDown = (TextView) butterknife.internal.c.a(c10, R.id.pk_count_down_time, "field 'mTextViewCountDown'", TextView.class);
        this.f18968e = c10;
        c10.setOnClickListener(new a(pKLiveInfoFragment));
        pKLiveInfoFragment.mLeftCoinTextView = (TextView) butterknife.internal.c.d(view, R.id.left_coin, "field 'mLeftCoinTextView'", TextView.class);
        pKLiveInfoFragment.mRightCoinTextView = (TextView) butterknife.internal.c.d(view, R.id.right_coin, "field 'mRightCoinTextView'", TextView.class);
        pKLiveInfoFragment.mPKProgressView = (PKProgressView) butterknife.internal.c.d(view, R.id.pk_progress, "field 'mPKProgressView'", PKProgressView.class);
        pKLiveInfoFragment.mAnimStartRightView = (SVGAImageView) butterknife.internal.c.d(view, R.id.right_anim, "field 'mAnimStartRightView'", SVGAImageView.class);
        pKLiveInfoFragment.mAnimEndRightView = butterknife.internal.c.c(view, R.id.right_anim_end, "field 'mAnimEndRightView'");
        pKLiveInfoFragment.mAnimStartLeftView = (SVGAImageView) butterknife.internal.c.d(view, R.id.left_anim, "field 'mAnimStartLeftView'", SVGAImageView.class);
        pKLiveInfoFragment.mSVGAImageViewVS = (SVGAImageView) butterknife.internal.c.d(view, R.id.vs_anim, "field 'mSVGAImageViewVS'", SVGAImageView.class);
        pKLiveInfoFragment.pkBroadcastName = (TextView) butterknife.internal.c.d(view, R.id.pk_broadcast_name, "field 'pkBroadcastName'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.iv_add, "field 'ivAdd' and method 'onViewClicked'");
        pKLiveInfoFragment.ivAdd = (ImageView) butterknife.internal.c.a(c11, R.id.iv_add, "field 'ivAdd'", ImageView.class);
        this.f18969f = c11;
        c11.setOnClickListener(new b(pKLiveInfoFragment));
        pKLiveInfoFragment.addSVGA = butterknife.internal.c.c(view, R.id.addSVGA, "field 'addSVGA'");
        pKLiveInfoFragment.mTextViewPunishTimeTip = (TextView) butterknife.internal.c.d(view, R.id.punish_time_tip, "field 'mTextViewPunishTimeTip'", TextView.class);
        pKLiveInfoFragment.mAnimEndLeftView = butterknife.internal.c.c(view, R.id.left_anim_end, "field 'mAnimEndLeftView'");
        pKLiveInfoFragment.mImageViewCountryFlag = (ImageView) butterknife.internal.c.d(view, R.id.country_flag, "field 'mImageViewCountryFlag'", ImageView.class);
        pKLiveInfoFragment.mLlImageViewCountryFlag = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_country_flag, "field 'mLlImageViewCountryFlag'", LinearLayout.class);
        pKLiveInfoFragment.mLeftArea = butterknife.internal.c.c(view, R.id.left_area, "field 'mLeftArea'");
        pKLiveInfoFragment.mRightArea = butterknife.internal.c.c(view, R.id.right_area, "field 'mRightArea'");
        View c12 = butterknife.internal.c.c(view, R.id.left_rich_box, "method 'richList'");
        this.f18970g = c12;
        c12.setOnClickListener(new c(pKLiveInfoFragment));
        View c13 = butterknife.internal.c.c(view, R.id.right_rich_box, "method 'richList'");
        this.f18971h = c13;
        c13.setOnClickListener(new d(pKLiveInfoFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PKLiveInfoFragment pKLiveInfoFragment = this.f18967d;
        if (pKLiveInfoFragment != null) {
            this.f18967d = null;
            pKLiveInfoFragment.mRatioFrameLayout = null;
            pKLiveInfoFragment.marqueeView = null;
            pKLiveInfoFragment.recyclerView = null;
            pKLiveInfoFragment.mTextViewCountDown = null;
            pKLiveInfoFragment.mLeftCoinTextView = null;
            pKLiveInfoFragment.mRightCoinTextView = null;
            pKLiveInfoFragment.mPKProgressView = null;
            pKLiveInfoFragment.mAnimStartRightView = null;
            pKLiveInfoFragment.mAnimEndRightView = null;
            pKLiveInfoFragment.mAnimStartLeftView = null;
            pKLiveInfoFragment.mSVGAImageViewVS = null;
            pKLiveInfoFragment.pkBroadcastName = null;
            pKLiveInfoFragment.ivAdd = null;
            pKLiveInfoFragment.addSVGA = null;
            pKLiveInfoFragment.mTextViewPunishTimeTip = null;
            pKLiveInfoFragment.mAnimEndLeftView = null;
            pKLiveInfoFragment.mImageViewCountryFlag = null;
            pKLiveInfoFragment.mLlImageViewCountryFlag = null;
            pKLiveInfoFragment.mLeftArea = null;
            pKLiveInfoFragment.mRightArea = null;
            this.f18968e.setOnClickListener(null);
            this.f18968e = null;
            this.f18969f.setOnClickListener(null);
            this.f18969f = null;
            this.f18970g.setOnClickListener(null);
            this.f18970g = null;
            this.f18971h.setOnClickListener(null);
            this.f18971h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
