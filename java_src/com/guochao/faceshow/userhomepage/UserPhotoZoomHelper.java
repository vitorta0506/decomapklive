package com.guochao.faceshow.userhomepage;

import android.animation.ValueAnimator;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.HorizontalScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicFullscreenImageFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.k;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
import com.guochao.faceshow.aaspring.views.HackyViewPager;
import com.guochao.faceshow.userhomepage.PhotoWallIndicator;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b0\u00101J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\u000b\u001a\u00020\u00032\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0014J\b\u0010\u0011\u001a\u00020\u0006H\u0016J\u0012\u0010\u0014\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\f\u001a\u00020\u0006J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0006H\u0016R\u0017\u0010\u001a\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R$\u0010#\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u0010*\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;", "Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;", "Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;", "", "init", "resetZoom", "", "getLayoutId", "", "", "bean", "bindData", "position", "Landroidx/fragment/app/Fragment;", "createItem", "Landroidx/viewpager/widget/ViewPager;", "makeViewPager", "getItemCount", "Lcom/guochao/faceshow/aaspring/views/HackyViewPager;", "viewPager", "onSwipeRight", "Landroid/view/View;", "thumbView", "startZoom", "onPageSelected", "Landroidx/fragment/app/FragmentActivity;", PushConstants.INTENT_ACTIVITY_NAME, "Landroidx/fragment/app/FragmentActivity;", "getActivity", "()Landroidx/fragment/app/FragmentActivity;", "mCurData", "Ljava/util/List;", "getMCurData", "()Ljava/util/List;", "Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;", "photoWallIndicator", "Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;", "getPhotoWallIndicator", "()Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;", "setPhotoWallIndicator", "(Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;)V", "Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;", "mFullScreenScrollToExitView", "Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;", "getMFullScreenScrollToExitView", "()Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;", "setMFullScreenScrollToExitView", "(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;)V", "<init>", "(Landroidx/fragment/app/FragmentActivity;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes4.dex */
public final class UserPhotoZoomHelper extends BaseZoomHelper implements HackyViewPager.a {
    @NotNull
    private final FragmentActivity activity;
    @NotNull
    private final List<String> mCurData;
    @Nullable
    private FullScreenScrollToExitViewV2 mFullScreenScrollToExitView;
    @Nullable
    private PhotoWallIndicator photoWallIndicator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserPhotoZoomHelper(@NotNull FragmentActivity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.mCurData = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-0  reason: not valid java name */
    public static final void m775init$lambda0(UserPhotoZoomHelper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.resetZoom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startZoom$lambda-4$lambda-3  reason: not valid java name */
    public static final void m776startZoom$lambda4$lambda3(int i9, ViewPager viewPager) {
        Intrinsics.checkNotNullParameter(viewPager, "$viewPager");
        if (i9 > 0) {
            try {
                viewPager.setCurrentItem(i9, false);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startZoom$lambda-5  reason: not valid java name */
    public static final void m777startZoom$lambda5(UserPhotoZoomHelper this$0, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ColorDrawable colorDrawable = this$0.mColorDrawable;
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        colorDrawable.setAlpha(((Integer) animatedValue).intValue());
    }

    public final void bindData(@Nullable List<String> list) {
        if (list != null) {
            this.mCurData.clear();
            this.mCurData.addAll(list);
            PhotoWallIndicator photoWallIndicator = this.photoWallIndicator;
            if (photoWallIndicator != null) {
                photoWallIndicator.bindData(this.mCurData);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    @NotNull
    public Fragment createItem(int i9) {
        String str;
        if (this.mCurData.isEmpty()) {
            str = "";
        } else {
            List<String> list = this.mCurData;
            str = list.get(Math.min(list.size() - 1, i9));
        }
        DynamicFullscreenImageFragment fullscreenImageFragment = DynamicFullscreenImageFragment.Z1(str, 300, 300, i9);
        fullscreenImageFragment.setOnScaleListener(this);
        fullscreenImageFragment.setOnPhotoTapListener(this);
        fullscreenImageFragment.d2(this.mFullScreenScrollToExitView);
        Intrinsics.checkNotNullExpressionValue(fullscreenImageFragment, "fullscreenImageFragment");
        return fullscreenImageFragment;
    }

    @NotNull
    public final FragmentActivity getActivity() {
        return this.activity;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public int getItemCount() {
        return this.mCurData.size();
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public int getLayoutId() {
        return R.layout.layout_fullscreen_photo_wall;
    }

    @NotNull
    public final List<String> getMCurData() {
        return this.mCurData;
    }

    @Nullable
    public final FullScreenScrollToExitViewV2 getMFullScreenScrollToExitView() {
        return this.mFullScreenScrollToExitView;
    }

    @Nullable
    public final PhotoWallIndicator getPhotoWallIndicator() {
        return this.photoWallIndicator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public void init() {
        View findViewById;
        super.init();
        View view = this.mLargeView;
        this.mFullScreenScrollToExitView = view != null ? (FullScreenScrollToExitViewV2) view.findViewById(R.id.content) : null;
        View view2 = this.mLargeView;
        PhotoWallIndicator photoWallIndicator = view2 != null ? (PhotoWallIndicator) view2.findViewById(R.id.photo_wall_indicator) : null;
        this.photoWallIndicator = photoWallIndicator;
        if (photoWallIndicator != null) {
            photoWallIndicator.setOnItemSelectListener(new PhotoWallIndicator.OnItemSelectListener() { // from class: com.guochao.faceshow.userhomepage.UserPhotoZoomHelper$init$1
                @Override // com.guochao.faceshow.userhomepage.PhotoWallIndicator.OnItemSelectListener
                public void onSelect(int i9) {
                    ViewPager viewPager;
                    viewPager = ((BaseZoomHelper) UserPhotoZoomHelper.this).mViewPager;
                    if (viewPager == null) {
                        return;
                    }
                    viewPager.setCurrentItem(i9);
                }
            });
        }
        View view3 = this.mLargeView;
        if (view3 == null || (findViewById = view3.findViewById(R.id.iv_close)) == null) {
            return;
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                UserPhotoZoomHelper.m775init$lambda0(UserPhotoZoomHelper.this, view4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    @NotNull
    public ViewPager makeViewPager() {
        ViewPager makeViewPager = super.makeViewPager();
        Intrinsics.checkNotNull(makeViewPager, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.views.HackyViewPager");
        HackyViewPager hackyViewPager = (HackyViewPager) makeViewPager;
        hackyViewPager.setOnSwipeBackListener(this);
        return hackyViewPager;
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper, androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        super.onPageSelected(i9);
        PhotoWallIndicator photoWallIndicator = this.photoWallIndicator;
        if (photoWallIndicator != null) {
            photoWallIndicator.onPageSelected(i9);
            int dp2px = ((DensityUtil.dp2px(56.0f) * photoWallIndicator.getChildCount()) + DensityUtil.dp2px(20.0f)) - ScreenTools.getScreenWidth();
            if (dp2px > 0) {
                PhotoWallIndicator photoWallIndicator2 = this.photoWallIndicator;
                ViewParent parent = photoWallIndicator2 != null ? photoWallIndicator2.getParent() : null;
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.widget.HorizontalScrollView");
                ((HorizontalScrollView) parent).scrollTo((int) ((i9 * dp2px) / photoWallIndicator.getChildCount()), 0);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper, com.guochao.faceshow.aaspring.modulars.ugc.fragment.l
    public /* bridge */ /* synthetic */ void onScaled(MotionEvent motionEvent, int i9) {
        k.a(this, motionEvent, i9);
    }

    @Override // com.guochao.faceshow.aaspring.views.HackyViewPager.a
    public void onSwipeRight(@Nullable HackyViewPager hackyViewPager) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper
    public void resetZoom() {
        super.resetZoom();
        FragmentActivity fragmentActivity = this.activity;
        if (fragmentActivity instanceof UserHomePageAct) {
            ((UserHomePageAct) fragmentActivity).resetStatusBarColor();
        }
    }

    public final void setMFullScreenScrollToExitView(@Nullable FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2) {
        this.mFullScreenScrollToExitView = fullScreenScrollToExitViewV2;
    }

    public final void setPhotoWallIndicator(@Nullable PhotoWallIndicator photoWallIndicator) {
        this.photoWallIndicator = photoWallIndicator;
    }

    public final void startZoom(@Nullable View view, final int i9) {
        View view2 = this.mLargeView;
        if (view2 != null) {
            view2.setBackground(this.mColorDrawable);
        }
        ViewPager viewPager = this.mViewPager;
        if ((viewPager != null ? viewPager.getParent() : null) instanceof ViewGroup) {
            ViewPager viewPager2 = this.mViewPager;
            ViewParent parent = viewPager2 != null ? viewPager2.getParent() : null;
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this.mViewPager);
        }
        removeCurrentViewPager();
        final ViewPager makeViewPager = makeViewPager();
        BaseZoomHelper.ViewPagerAdapter viewPagerAdapter = new BaseZoomHelper.ViewPagerAdapter(this.mActivity.getSupportFragmentManager());
        this.mViewPagerAdapter = viewPagerAdapter;
        makeViewPager.setAdapter(viewPagerAdapter);
        makeViewPager.setOffscreenPageLimit(this.mCurData.size() - 1);
        FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2 = this.mFullScreenScrollToExitView;
        if (fullScreenScrollToExitViewV2 != null) {
            fullScreenScrollToExitViewV2.addView(makeViewPager, 0);
        }
        this.mViewZoomHelper.startZoom(view, this.mFullScreenScrollToExitView, this.mActivity.findViewById(16908290));
        makeViewPager.postDelayed(this.mRunnable, 300L);
        makeViewPager.postDelayed(new Runnable() { // from class: com.guochao.faceshow.userhomepage.d
            @Override // java.lang.Runnable
            public final void run() {
                UserPhotoZoomHelper.m776startZoom$lambda4$lambda3(i9, makeViewPager);
            }
        }, 30L);
        this.mViewPager = makeViewPager;
        this.mLargeView.setVisibility(0);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        FragmentActivity fragmentActivity = this.mActivity;
        if (fragmentActivity instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity).setLightStatusBar(false);
        }
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.userhomepage.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                UserPhotoZoomHelper.m777startZoom$lambda5(UserPhotoZoomHelper.this, valueAnimator);
            }
        });
        ofInt.start();
        FragmentActivity fragmentActivity2 = this.mActivity;
        if (fragmentActivity2 instanceof BaseActivity) {
            ((BaseActivity) fragmentActivity2).setOnBackButtonPressedHandler(this);
        }
        onPageSelected(i9);
    }
}
