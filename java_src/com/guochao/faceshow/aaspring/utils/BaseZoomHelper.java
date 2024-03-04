package com.guochao.faceshow.aaspring.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
import com.guochao.faceshow.aaspring.views.HackyViewPager;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
/* loaded from: classes3.dex */
public abstract class BaseZoomHelper implements OnBackButtonPressedHandler, h1.f, com.guochao.faceshow.aaspring.modulars.ugc.fragment.l, ViewPager.OnPageChangeListener {
    protected final FragmentActivity mActivity;
    @BindView
    FullScreenScrollToExitViewV2 mFullScreenScrollToExitView;
    protected View mLargeView;
    @BindView
    TextView mTextView;
    @Nullable
    @BindView
    protected ViewPager mViewPager;
    protected ViewPagerAdapter mViewPagerAdapter;
    @Nullable
    @BindView
    View mViewSave;
    protected ViewZoomHelper mViewZoomHelper;
    protected ColorDrawable mColorDrawable = new ColorDrawable(Color.parseColor("#000000"));
    View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseZoomHelper.this.save(view);
        }
    };
    protected Runnable mRunnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.8
        @Override // java.lang.Runnable
        public void run() {
            if (BaseZoomHelper.this.showIndex()) {
                BaseZoomHelper.this.mTextView.setVisibility(0);
            }
            View view = BaseZoomHelper.this.mViewSave;
            if (view != null) {
                view.setVisibility(0);
            }
            BaseZoomHelper.this.onShowActionArea();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends FragmentStatePagerAdapter {
        public ViewPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return BaseZoomHelper.this.getItemCount();
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i9) {
            return BaseZoomHelper.this.createItem(i9);
        }
    }

    /* loaded from: classes3.dex */
    public interface Zoomable {
        void save(View view);

        boolean scaled();
    }

    public BaseZoomHelper(FragmentActivity fragmentActivity) {
        ViewGroup viewGroup;
        this.mActivity = fragmentActivity;
        View findViewById = fragmentActivity.findViewById(R.id.full_screen_view);
        this.mLargeView = findViewById;
        if (findViewById == null) {
            this.mLargeView = LayoutInflater.from(fragmentActivity).inflate(getLayoutId(), (ViewGroup) fragmentActivity.getWindow().getDecorView(), false);
            if (fragmentActivity instanceof FakeLiveChatActivity) {
                viewGroup = (ViewGroup) fragmentActivity.findViewById(R.id.content);
            } else {
                viewGroup = (ViewGroup) fragmentActivity.findViewById(16908290);
            }
            if (viewGroup != null) {
                viewGroup.addView(this.mLargeView);
            }
        }
        ButterKnife.c(this, this.mLargeView);
        this.mFullScreenScrollToExitView.setOnDragFinishListener(new FullScreenScrollToExitViewV2.a() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.1
            @Override // com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2.a
            public void onDragFinish(boolean z10) {
                BaseZoomHelper.this.resetZoom();
            }
        });
        this.mLargeView.setBackground(this.mColorDrawable);
        this.mFullScreenScrollToExitView.setOnDragListener(new FullScreenScrollToExitViewV2.b() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.2
            @Override // com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2.b
            public void onCancel() {
            }

            @Override // com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2.b
            public void onDragPercent(int i9) {
                BaseZoomHelper.this.mColorDrawable.setAlpha(255 - i9);
            }
        });
        ViewZoomHelper viewZoomHelper = new ViewZoomHelper();
        this.mViewZoomHelper = viewZoomHelper;
        viewZoomHelper.setResetAnimatorListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                BaseZoomHelper.this.mLargeView.setVisibility(8);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setScaleY(1.0f);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setScaleX(1.0f);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setTranslationY(0.0f);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setTranslationX(0.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                BaseZoomHelper.this.mLargeView.setVisibility(8);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setScaleY(1.0f);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setScaleX(1.0f);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setTranslationY(0.0f);
                BaseZoomHelper.this.mFullScreenScrollToExitView.setTranslationX(0.0f);
            }
        });
        this.mViewZoomHelper.setZoomUpAnimatorListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.4
        });
        init();
    }

    public abstract Fragment createItem(int i9);

    public abstract int getItemCount();

    public int getLayoutId() {
        return R.layout.layout_fullscreen_image;
    }

    public View getResetThumbView() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPager makeViewPager() {
        HackyViewPager hackyViewPager = new HackyViewPager(this.mActivity);
        hackyViewPager.addOnPageChangeListener(this);
        hackyViewPager.setId(View.generateViewId() + 82346);
        return hackyViewPager;
    }

    @Override // com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler
    public boolean onBack() {
        if (this.mViewZoomHelper.isScaleUp()) {
            resetZoom();
            return true;
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        ViewPagerAdapter viewPagerAdapter;
        this.mTextView.setText(this.mActivity.getString(R.string.viewpager_indicator, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(getItemCount())}));
        ViewPager viewPager = this.mViewPager;
        if (viewPager == null || (viewPagerAdapter = this.mViewPagerAdapter) == null) {
            return;
        }
        Fragment fragment = (Fragment) viewPagerAdapter.instantiateItem((ViewGroup) viewPager, i9);
        if (fragment instanceof Zoomable) {
            this.mFullScreenScrollToExitView.setGestureEnabled(!((Zoomable) fragment).scaled());
        }
    }

    @Override // h1.f
    public void onPhotoTap(ImageView imageView, float f10, float f11) {
        resetZoom();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.l
    public /* bridge */ /* synthetic */ void onScaled(MotionEvent motionEvent, int i9) {
        com.guochao.faceshow.aaspring.modulars.ugc.fragment.k.a(this, motionEvent, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.l
    public void onScaled(boolean z10, float f10, int i9) {
        FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2;
        ViewPager viewPager = this.mViewPager;
        if (viewPager == null || i9 != viewPager.getCurrentItem() || (fullScreenScrollToExitViewV2 = this.mFullScreenScrollToExitView) == null) {
            return;
        }
        fullScreenScrollToExitViewV2.setGestureEnabled(!z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onShowActionArea() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeCurrentViewPager() {
        int childCount = this.mFullScreenScrollToExitView.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = this.mFullScreenScrollToExitView.getChildAt(i9);
            if (childAt instanceof ViewPager) {
                ((ViewPager) childAt).removeOnPageChangeListener(this);
                this.mFullScreenScrollToExitView.removeView(childAt);
                return;
            }
        }
    }

    public void resetZoom() {
        FragmentActivity fragmentActivity = this.mActivity;
        if (fragmentActivity instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity).setLightStatusBar(true);
        }
        View view = this.mViewSave;
        if (view != null) {
            view.setVisibility(8);
        }
        if (this.mViewZoomHelper != null) {
            View resetThumbView = getResetThumbView();
            if (resetThumbView == null) {
                this.mViewZoomHelper.resetZoom();
            } else {
                this.mViewZoomHelper.resetZoom(resetThumbView);
            }
        }
        final ColorDrawable colorDrawable = new ColorDrawable(Color.parseColor("#000000"));
        ValueAnimator ofInt = ValueAnimator.ofInt(this.mColorDrawable.getAlpha(), 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                colorDrawable.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                BaseZoomHelper.this.mLargeView.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                BaseZoomHelper.this.mLargeView.setVisibility(8);
            }
        });
        ofInt.start();
        this.mLargeView.setBackgroundDrawable(colorDrawable);
        this.mColorDrawable = new ColorDrawable(Color.parseColor("#000000"));
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            viewPager.removeCallbacks(this.mRunnable);
        }
        this.mTextView.setVisibility(4);
    }

    @OnClick
    @Optional
    public void save(View view) {
        ViewPagerAdapter viewPagerAdapter;
        ViewPager viewPager = this.mViewPager;
        if (viewPager == null || (viewPagerAdapter = this.mViewPagerAdapter) == null) {
            return;
        }
        Fragment fragment = (Fragment) viewPagerAdapter.instantiateItem((ViewGroup) viewPager, viewPager.getCurrentItem());
        if (fragment instanceof Zoomable) {
            ((Zoomable) fragment).save(view);
        }
    }

    boolean showIndex() {
        return true;
    }
}
