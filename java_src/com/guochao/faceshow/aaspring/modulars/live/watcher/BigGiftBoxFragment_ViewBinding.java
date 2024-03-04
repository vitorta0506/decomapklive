package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
/* loaded from: classes3.dex */
public class BigGiftBoxFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private BigGiftBoxFragment f19968d;

    /* renamed from: e  reason: collision with root package name */
    private View f19969e;

    /* renamed from: f  reason: collision with root package name */
    private View f19970f;

    /* renamed from: g  reason: collision with root package name */
    private View f19971g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BigGiftBoxFragment f19972a;

        a(BigGiftBoxFragment bigGiftBoxFragment) {
            this.f19972a = bigGiftBoxFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19972a.openGiftBox(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BigGiftBoxFragment f19974a;

        b(BigGiftBoxFragment bigGiftBoxFragment) {
            this.f19974a = bigGiftBoxFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19974a.showGiftUserList(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BigGiftBoxFragment f19976a;

        c(BigGiftBoxFragment bigGiftBoxFragment) {
            this.f19976a = bigGiftBoxFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19976a.back(view);
        }
    }

    @UiThread
    public BigGiftBoxFragment_ViewBinding(BigGiftBoxFragment bigGiftBoxFragment, View view) {
        super(bigGiftBoxFragment, view);
        this.f19968d = bigGiftBoxFragment;
        bigGiftBoxFragment.mShakeIconView = (ImageView) butterknife.internal.c.d(view, R.id.gift_box_icon, "field 'mShakeIconView'", ImageView.class);
        bigGiftBoxFragment.mTipsTextView = (TextView) butterknife.internal.c.d(view, R.id.tips, "field 'mTipsTextView'", TextView.class);
        bigGiftBoxFragment.mFailTipsTextView = (TextView) butterknife.internal.c.d(view, R.id.fail_tips, "field 'mFailTipsTextView'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.open_gift, "field 'mOpenGiftView' and method 'openGiftBox'");
        bigGiftBoxFragment.mOpenGiftView = c10;
        this.f19969e = c10;
        c10.setOnClickListener(new a(bigGiftBoxFragment));
        bigGiftBoxFragment.mResultView = butterknife.internal.c.c(view, R.id.result_view, "field 'mResultView'");
        bigGiftBoxFragment.mCountDownContainerView = butterknife.internal.c.c(view, R.id.count_down_view, "field 'mCountDownContainerView'");
        bigGiftBoxFragment.mSuccessCountView = butterknife.internal.c.c(view, R.id.success_view, "field 'mSuccessCountView'");
        bigGiftBoxFragment.mRecyclerView = (InnerRecyclerView) butterknife.internal.c.d(view, R.id.recycler_view_user_list, "field 'mRecyclerView'", InnerRecyclerView.class);
        bigGiftBoxFragment.mTextViewCountDown = (TextView) butterknife.internal.c.d(view, R.id.count_down_tips, "field 'mTextViewCountDown'", TextView.class);
        bigGiftBoxFragment.mGrabResultView = butterknife.internal.c.c(view, R.id.gift_result_view, "field 'mGrabResultView'");
        bigGiftBoxFragment.mTextViewDiamondCount = (TextView) butterknife.internal.c.d(view, R.id.diamond_count, "field 'mTextViewDiamondCount'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.show_gift_user_list, "field 'mViewShowUserList' and method 'showGiftUserList'");
        bigGiftBoxFragment.mViewShowUserList = c11;
        this.f19970f = c11;
        c11.setOnClickListener(new b(bigGiftBoxFragment));
        View c12 = butterknife.internal.c.c(view, R.id.back_button, "field 'mBackButton'");
        bigGiftBoxFragment.mBackButton = c12;
        this.f19971g = c12;
        c12.setOnClickListener(new c(bigGiftBoxFragment));
        bigGiftBoxFragment.ivBoxOpen = (ImageView) butterknife.internal.c.d(view, R.id.iv_box_open, "field 'ivBoxOpen'", ImageView.class);
        bigGiftBoxFragment.mCloseDialog = (ImageView) butterknife.internal.c.d(view, R.id.close_dialog, "field 'mCloseDialog'", ImageView.class);
        bigGiftBoxFragment.emptyUsers = (TextView) butterknife.internal.c.d(view, R.id.empty_users, "field 'emptyUsers'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BigGiftBoxFragment bigGiftBoxFragment = this.f19968d;
        if (bigGiftBoxFragment != null) {
            this.f19968d = null;
            bigGiftBoxFragment.mShakeIconView = null;
            bigGiftBoxFragment.mTipsTextView = null;
            bigGiftBoxFragment.mFailTipsTextView = null;
            bigGiftBoxFragment.mOpenGiftView = null;
            bigGiftBoxFragment.mResultView = null;
            bigGiftBoxFragment.mCountDownContainerView = null;
            bigGiftBoxFragment.mSuccessCountView = null;
            bigGiftBoxFragment.mRecyclerView = null;
            bigGiftBoxFragment.mTextViewCountDown = null;
            bigGiftBoxFragment.mGrabResultView = null;
            bigGiftBoxFragment.mTextViewDiamondCount = null;
            bigGiftBoxFragment.mViewShowUserList = null;
            bigGiftBoxFragment.mBackButton = null;
            bigGiftBoxFragment.ivBoxOpen = null;
            bigGiftBoxFragment.mCloseDialog = null;
            bigGiftBoxFragment.emptyUsers = null;
            this.f19969e.setOnClickListener(null);
            this.f19969e = null;
            this.f19970f.setOnClickListener(null);
            this.f19970f = null;
            this.f19971g.setOnClickListener(null);
            this.f19971g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
