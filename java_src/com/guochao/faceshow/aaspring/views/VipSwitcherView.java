package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.aaspring.modulars.vip.activity.BuyVipGuideActivity;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipGuideParentFragment;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class VipSwitcherView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    BuyVipGuideParentFragment f24121a;

    /* renamed from: b  reason: collision with root package name */
    int f24122b;

    /* renamed from: c  reason: collision with root package name */
    private int f24123c;
    @BindView
    View mRedPoint;
    @BindView
    View mView1;
    @BindView
    View mView2;
    @BindView
    View mViewIndicator;
    @BindView
    TextView svipTV;
    @BindView
    TextView vipTV;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            VipSwitcherView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            int measuredHeight = VipSwitcherView.this.getMeasuredHeight();
            int measuredWidth = VipSwitcherView.this.getMeasuredWidth();
            ViewGroup.LayoutParams layoutParams = VipSwitcherView.this.mViewIndicator.getLayoutParams();
            layoutParams.width = (measuredWidth / 2) - DensityUtil.dp2px(6.0f);
            layoutParams.height = measuredHeight - DensityUtil.dp2px(6.0f);
            VipSwitcherView.this.mViewIndicator.setLayoutParams(layoutParams);
            VipSwitcherView.this.f24123c = (measuredWidth - layoutParams.width) - DensityUtil.dp2px(6.0f);
        }
    }

    public VipSwitcherView(@NonNull Context context) {
        super(context);
        this.f24122b = 2;
        d(null);
    }

    private void d(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.VipSwitcherView);
            this.f24122b = obtainStyledAttributes.getInt(0, this.f24122b);
            obtainStyledAttributes.recycle();
        }
        LayoutInflater.from(getContext()).inflate(R.layout.layout_vip_switcher_view, (ViewGroup) this, true);
        ButterKnife.c(this, this);
        View view = this.mRedPoint;
        ja.a b10 = ja.a.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("KEY_RED_DOT_BUY_VVIP");
        sb2.append(this.f24122b);
        view.setVisibility(b10.f(sb2.toString()) ? 0 : 4);
        setBackgroundResource(R.drawable.shape_vip_switcher_bg);
        this.mViewIndicator.setBackgroundResource(R.drawable.shape_vip_switcher_indicator);
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    public void b(int i9, float f10, int i10) {
        if (getLayoutDirection() == 0) {
            if (i9 == 0) {
                this.mViewIndicator.setTranslationX(f10 * this.f24123c);
            } else if (i9 == 1) {
                this.mViewIndicator.setTranslationX(this.f24123c);
            }
        } else if (i9 == 0) {
            this.mViewIndicator.setTranslationX((-f10) * this.f24123c);
        } else if (i9 == 1) {
            this.mViewIndicator.setTranslationX(-this.f24123c);
        }
    }

    public void c(BuyVipGuideParentFragment buyVipGuideParentFragment) {
        this.f24121a = buyVipGuideParentFragment;
        buyVipGuideParentFragment.Q1(this);
    }

    @OnClick
    public void click(View view) {
        ViewPager viewPager;
        ViewPager viewPager2;
        switch (view.getId()) {
            case R.id.text1 /* 2131364680 */:
                BuyVipGuideParentFragment buyVipGuideParentFragment = this.f24121a;
                if (buyVipGuideParentFragment != null && (viewPager = buyVipGuideParentFragment.mViewPager2) != null) {
                    viewPager.setCurrentItem(0);
                }
                BuyVipGuideParentFragment buyVipGuideParentFragment2 = this.f24121a;
                if (buyVipGuideParentFragment2 != null && (buyVipGuideParentFragment2.getParentFragment() instanceof BuyVipContainerDialogFragment)) {
                    ((BuyVipContainerDialogFragment) this.f24121a.getParentFragment()).bgTitleLay.setBackgroundResource(R.mipmap.vip_bj);
                }
                BuyVipGuideParentFragment buyVipGuideParentFragment3 = this.f24121a;
                if (buyVipGuideParentFragment3 != null && (buyVipGuideParentFragment3.getActivity() instanceof BuyVipGuideActivity)) {
                    ((BuyVipGuideActivity) this.f24121a.getActivity()).bgTitleLay.setBackgroundResource(R.mipmap.vip_bj);
                }
                setBackgroundResource(R.drawable.shape_vip_switcher_bg);
                this.mViewIndicator.setBackgroundResource(R.drawable.shape_vip_switcher_indicator);
                this.vipTV.setTextColor(Color.parseColor("#ffffff"));
                this.svipTV.setTextColor(Color.parseColor("#222222"));
                return;
            case R.id.text2 /* 2131364681 */:
                BuyVipGuideParentFragment buyVipGuideParentFragment4 = this.f24121a;
                if (buyVipGuideParentFragment4 != null && (viewPager2 = buyVipGuideParentFragment4.mViewPager2) != null) {
                    viewPager2.setCurrentItem(1);
                }
                BuyVipGuideParentFragment buyVipGuideParentFragment5 = this.f24121a;
                if (buyVipGuideParentFragment5 != null && (buyVipGuideParentFragment5.getParentFragment() instanceof BuyVipContainerDialogFragment)) {
                    ((BuyVipContainerDialogFragment) this.f24121a.getParentFragment()).bgTitleLay.setBackgroundResource(R.mipmap.vvip_bj);
                }
                BuyVipGuideParentFragment buyVipGuideParentFragment6 = this.f24121a;
                if (buyVipGuideParentFragment6 != null && (buyVipGuideParentFragment6.getActivity() instanceof BuyVipGuideActivity)) {
                    ((BuyVipGuideActivity) this.f24121a.getActivity()).bgTitleLay.setBackgroundResource(R.mipmap.vvip_bj);
                }
                this.mRedPoint.setVisibility(4);
                ja.a b10 = ja.a.b();
                b10.e("KEY_RED_DOT_BUY_VVIP" + this.f24122b);
                setBackgroundResource(R.drawable.shape_vvip_switcher_bg);
                this.mViewIndicator.setBackgroundResource(R.drawable.shape_vvip_switcher_indicator);
                this.svipTV.setTextColor(Color.parseColor("#ffffff"));
                this.vipTV.setTextColor(Color.parseColor("#222222"));
                return;
            default:
                return;
        }
    }

    public void setCurrentItem(int i9) {
        if (i9 == 0) {
            click(this.mView1);
        } else {
            click(this.mView2);
        }
    }

    public void setStyle(int i9) {
        if (i9 == 0) {
            setBackgroundResource(R.drawable.shape_vip_switcher_bg);
            click(this.mView1);
            this.mViewIndicator.setBackgroundResource(R.drawable.shape_vip_switcher_indicator);
        } else if (i9 != 1) {
        } else {
            click(this.mView2);
            this.mRedPoint.setVisibility(4);
            ja.a b10 = ja.a.b();
            b10.e("KEY_RED_DOT_BUY_VVIP" + this.f24122b);
            setBackgroundResource(R.drawable.shape_vvip_switcher_bg);
            this.mViewIndicator.setBackgroundResource(R.drawable.shape_vvip_switcher_indicator);
        }
    }

    public VipSwitcherView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24122b = 2;
        d(attributeSet);
    }

    public VipSwitcherView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24122b = 2;
        d(attributeSet);
    }
}
