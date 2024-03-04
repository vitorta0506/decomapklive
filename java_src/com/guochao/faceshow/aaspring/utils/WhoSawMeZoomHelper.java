package com.guochao.faceshow.aaspring.utils;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicFullscreenImageFragment;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import com.guochao.faceshow.aaspring.views.HackyViewPager;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class WhoSawMeZoomHelper extends BaseZoomHelper implements HackyViewPager.a {
    @BindView
    ImageView focus;
    @BindView
    HeadPortraitView headImg;
    @Nullable
    @BindView
    View mActionArea;
    @Nullable
    @BindView
    View mConversation;
    private WhoSawMeBean.ListBean.Bean mCurData;
    List<String> mUserBeans;
    View[] mViews;
    @BindView
    TextView nickName;
    private OnFocusListener onFocusListener;
    @BindView
    VipIndicatorView vipIndicator;

    /* loaded from: classes3.dex */
    public interface OnFocusListener {
        void onFocus();
    }

    public WhoSawMeZoomHelper(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.mUserBeans = new ArrayList();
    }

    private void refreshFocus() {
        WhoSawMeBean.ListBean.Bean bean;
        if (this.focus == null || (bean = this.mCurData) == null) {
            return;
        }
        boolean z10 = bean.getIsAttention() > 0;
        if (!b8.e.g().getUserId().equals(this.mCurData.getUserId()) && !z10) {
            this.focus.setVisibility(0);
            this.focus.setImageResource(R.mipmap.icon_ugc_dynamic_focuson);
            return;
        }
        this.focus.setVisibility(4);
    }

    private void setDataToView() {
        this.headImg.d(this.mCurData);
        this.nickName.setText(this.mCurData.getNickName());
        this.vipIndicator.setVipLevel(this.mCurData.getVipInfo().getVipLevel());
        refreshFocus();
    }

    public void bindData(WhoSawMeBean.ListBean.Bean bean) {
        this.mCurData = bean;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public Fragment createItem(int i9) {
        DynamicFullscreenImageFragment Z1 = DynamicFullscreenImageFragment.Z1(this.mUserBeans.get(i9), 300, 300, i9);
        Z1.setOnScaleListener(this);
        Z1.setOnPhotoTapListener(this);
        Z1.d2(this.mFullScreenScrollToExitView);
        return Z1;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public int getItemCount() {
        return this.mUserBeans.size();
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public int getLayoutId() {
        return R.layout.layout_fullscreen_image_who_saw_me;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public View getResetThumbView() {
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            int currentItem = viewPager.getCurrentItem();
            View[] viewArr = this.mViews;
            if (viewArr != null && currentItem < viewArr.length) {
                return viewArr[currentItem];
            }
        }
        return super.getResetThumbView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public ViewPager makeViewPager() {
        HackyViewPager hackyViewPager = (HackyViewPager) super.makeViewPager();
        hackyViewPager.setOnSwipeBackListener(this);
        return hackyViewPager;
    }

    public void onFocusEvent(y7.e eVar) {
        if (this.mCurData == null) {
            return;
        }
        if (eVar.a().equalsIgnoreCase(this.mCurData.getUserId())) {
            this.mCurData.setIsAttention(eVar.c() ? 1 : 0);
        }
        refreshFocus();
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper, com.guochao.faceshow.aaspring.modulars.ugc.fragment.l
    public /* bridge */ /* synthetic */ void onScaled(MotionEvent motionEvent, int i9) {
        com.guochao.faceshow.aaspring.modulars.ugc.fragment.k.a(this, motionEvent, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public void onShowActionArea() {
        super.onShowActionArea();
        View view = this.mActionArea;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.mConversation;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.HackyViewPager.a
    public void onSwipeRight(HackyViewPager hackyViewPager) {
        UserHomePageAct.start(this.mActivity, this.mCurData.getUserId());
    }

    @OnClick
    public void requestFocus(View view) {
        if (DisableDoubleClickUtils.canClick(view, 500L)) {
            ib.b.b(this.mCurData.getUserId(), FriendFromSource.DEFAULT, (Activity) view.getContext(), new hb.b<String>() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.2
                @Override // hb.b
                public void onResponse(String str) {
                }

                @Override // hb.b
                public void onFail(String str) {
                    HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentActivity fragmentActivity = WhoSawMeZoomHelper.this.mActivity;
                            if (fragmentActivity == null || fragmentActivity.isDestroyed() || WhoSawMeZoomHelper.this.mActivity.isFinishing() || WhoSawMeZoomHelper.this.mCurData == null) {
                                return;
                            }
                            y7.e eVar = new y7.e(WhoSawMeZoomHelper.this.mCurData.getUserId());
                            eVar.g(false);
                            EventBus.getDefault().post(eVar);
                        }
                    }, 480L);
                }
            });
            HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.3
                @Override // java.lang.Runnable
                public void run() {
                    WhoSawMeZoomHelper.this.mCurData.setIsAttention(WhoSawMeZoomHelper.this.mCurData.getIsAttention() + 1);
                    WhoSawMeZoomHelper.this.focus.setVisibility(4);
                    if (WhoSawMeZoomHelper.this.onFocusListener != null) {
                        WhoSawMeZoomHelper.this.onFocusListener.onFocus();
                    }
                }
            }, 480L);
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public void resetZoom() {
        super.resetZoom();
        View view = this.mActionArea;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.mConversation;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    public void setOnFocusListener(OnFocusListener onFocusListener) {
        this.onFocusListener = onFocusListener;
    }

    @OnClick
    @Optional
    public void startChat(View view) {
        ChatActivity.navToChat(view.getContext(), this.mCurData.getUserId(), 1, this.mCurData.getNickName());
    }

    @OnClick
    public void startUserHome(View view) {
        UserHomePageAct.start(this.mActivity, this.mCurData.getUserId());
    }

    public void startZoom(List<String> list, View view, int i9, View[] viewArr) {
        this.mUserBeans.clear();
        this.mUserBeans.addAll(list);
        this.mViews = viewArr;
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null && viewPager.getParent() != null) {
            ((ViewGroup) this.mViewPager.getParent()).removeView(this.mViewPager);
        }
        removeCurrentViewPager();
        ViewPager makeViewPager = makeViewPager();
        this.mViewPager = makeViewPager;
        BaseZoomHelper.ViewPagerAdapter viewPagerAdapter = new BaseZoomHelper.ViewPagerAdapter(this.mActivity.getSupportFragmentManager());
        this.mViewPagerAdapter = viewPagerAdapter;
        makeViewPager.setAdapter(viewPagerAdapter);
        if (i9 > 0) {
            this.mViewPager.setCurrentItem(i9);
        }
        this.mFullScreenScrollToExitView.addView(this.mViewPager, 0);
        this.mLargeView.setBackground(this.mColorDrawable);
        this.mTextView.setText(this.mActivity.getString(R.string.viewpager_indicator, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(getItemCount())}));
        this.mViewZoomHelper.startZoom(view, this.mFullScreenScrollToExitView, this.mActivity.findViewById(16908290));
        this.mTextView.setVisibility(4);
        this.mViewPager.postDelayed(this.mRunnable, 300L);
        this.mLargeView.setVisibility(0);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        FragmentActivity fragmentActivity = this.mActivity;
        if (fragmentActivity instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity).setLightStatusBar(false);
        }
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WhoSawMeZoomHelper.this.mColorDrawable.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.start();
        FragmentActivity fragmentActivity2 = this.mActivity;
        if (fragmentActivity2 instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity2).setOnBackButtonPressedHandler(this);
        }
        onPageSelected(i9);
        setDataToView();
    }
}
