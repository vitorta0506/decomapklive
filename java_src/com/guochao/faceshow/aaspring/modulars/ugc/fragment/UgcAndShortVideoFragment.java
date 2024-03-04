package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.ShortVideoFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FragmentUtil;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ViewPagerUtils;
import com.guochao.faceshow.databinding.FragmentUgcAndShortVideoBinding;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001+B\u0007¢\u0006\u0004\b*\u0010)J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014J\u0006\u0010\u0014\u001a\u00020\bJ\b\u0010\u0015\u001a\u00020\u0006H\u0016J\u001a\u0010\u0019\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\bH\u0016J\u0006\u0010\u001a\u001a\u00020\u0006J\u0006\u0010\u001b\u001a\u00020\u0006J\b\u0010\u001c\u001a\u00020\u0006H\u0016R\u0016\u0010\u001d\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001eR(\u0010\"\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\"\u0010#\u0012\u0004\b(\u0010)\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006,"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;", "Lp7/f;", "Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;", "it", "", "videoClick", "", "position", "setTitle", "", "show", "showVideoMenu", "showTitle", "Landroid/view/View;", "root", "Landroid/os/Bundle;", "savedInstanceState", "initView", "currentIndex", "onResume", "Lcom/google/android/material/appbar/AppBarLayout;", "appBarLayout", "verticalOffset", "onOffsetChanged", "goPublish", "ugcEvent", "reload", "titleShowing", "Z", "lastOffset", "I", "videoMenuShowing", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V", "getViewBinding$annotations", "()V", "<init>", "UgcAndShortVideoPagerAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class UgcAndShortVideoFragment extends GCCoreFragment implements AppBarLayout.OnOffsetChangedListener, p7.f {
    private int lastOffset;
    private boolean titleShowing = true;
    private boolean videoMenuShowing;
    public FragmentUgcAndShortVideoBinding viewBinding;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006H\u0016¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment$UgcAndShortVideoPagerAdapter;", "Landroidx/fragment/app/FragmentPagerAdapter;", "fm", "Landroidx/fragment/app/FragmentManager;", "(Landroidx/fragment/app/FragmentManager;)V", "getCount", "", "getItem", "Landroidx/fragment/app/Fragment;", "position", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    private static final class UgcAndShortVideoPagerAdapter extends FragmentPagerAdapter {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UgcAndShortVideoPagerAdapter(@NotNull FragmentManager fm) {
            super(fm);
            Intrinsics.checkNotNullParameter(fm, "fm");
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NotNull
        public Fragment getItem(int i9) {
            if (i9 == 0) {
                return new UgcGroundFragment();
            }
            return new ShortVideoFragment();
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-0  reason: not valid java name */
    public static final void m562initView$lambda4$lambda0(UgcAndShortVideoFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.goPublish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-1  reason: not valid java name */
    public static final void m563initView$lambda4$lambda1(UgcAndShortVideoFragment this$0, FragmentUgcAndShortVideoBinding it, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.videoClick(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-2  reason: not valid java name */
    public static final void m564initView$lambda4$lambda2(FragmentUgcAndShortVideoBinding it, View view) {
        Intrinsics.checkNotNullParameter(it, "$it");
        it.viewPager.setCurrentItem(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTitle(int i9) {
        FragmentUgcAndShortVideoBinding viewBinding = getViewBinding();
        if (i9 == 0) {
            StatusBarHelper.showStatusBar(getActivity(), true);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_page);
            viewBinding.video.setTextSize(16.0f);
            viewBinding.dynamic.setTextSize(21.0f);
            viewBinding.indicator1.setVisibility(0);
            viewBinding.indicator2.setVisibility(4);
            viewBinding.video.setTypeface(null, 0);
            viewBinding.dynamic.setTypeface(null, 1);
            viewBinding.video.setTextColor(Color.parseColor("#222222"));
            viewBinding.dynamic.setTextColor(Color.parseColor("#222222"));
            showVideoMenu(false);
            this.videoMenuShowing = false;
            getViewBinding().endIcon.setImageResource(R.mipmap.ic_publish_ugc);
            getViewBinding().sanjiao.setVisibility(8);
            showTitle(Math.abs(this.lastOffset) < DensityUtil.dp2px(40.0f));
        } else if (i9 != 1) {
        } else {
            StatusBarHelper.showStatusBar(getActivity(), false);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_page);
            showTitle(true);
            viewBinding.indicator1.setVisibility(4);
            viewBinding.indicator2.setVisibility(0);
            viewBinding.video.setTextColor(-1);
            viewBinding.dynamic.setTextColor(-1);
            viewBinding.video.setTextSize(21.0f);
            viewBinding.dynamic.setTextSize(16.0f);
            viewBinding.video.setTypeface(null, 1);
            viewBinding.dynamic.setTypeface(null, 0);
            getViewBinding().endIcon.setImageResource(R.mipmap.ic_publish_ugc);
            getViewBinding().sanjiao.setVisibility(0);
            getViewBinding().sanjiao.setImageResource(R.mipmap.ic_video_sanjiao_down);
            z8.c.o().J(true, false);
        }
    }

    private final void showTitle(boolean z10) {
        if (this.titleShowing == z10) {
            return;
        }
        this.titleShowing = z10;
        LinearLayout linearLayout = getViewBinding().title;
        if (z10) {
            linearLayout.animate().translationY(0.0f).setDuration(150L).start();
        } else {
            linearLayout.animate().translationY(-linearLayout.getMeasuredHeight()).setDuration(150L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showVideoMenu(boolean z10) {
        if (this.videoMenuShowing == z10) {
            return;
        }
        FrameLayout frameLayout = getViewBinding().videoMenu;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "viewBinding.videoMenu");
        getViewBinding().sanjiao.setVisibility(0);
        if (z10) {
            frameLayout.setTranslationY(-frameLayout.getHeight());
            frameLayout.setVisibility(0);
            frameLayout.animate().translationY(0.0f).setDuration(150L).start();
            getViewBinding().sanjiao.setImageResource(R.mipmap.ic_video_sanjiao_up);
        } else {
            frameLayout.animate().translationY(-frameLayout.getHeight()).setDuration(150L).start();
            getViewBinding().sanjiao.setImageResource(R.mipmap.ic_video_sanjiao_down);
        }
        this.videoMenuShowing = z10;
    }

    private final void videoClick(FragmentUgcAndShortVideoBinding fragmentUgcAndShortVideoBinding) {
        if (fragmentUgcAndShortVideoBinding.viewPager.getCurrentItem() == 1) {
            showVideoMenu(!this.videoMenuShowing);
            return;
        }
        fragmentUgcAndShortVideoBinding.viewPager.setCurrentItem(1);
        showTitle(true);
        showVideoMenu(false);
    }

    public final int currentIndex() {
        if (this.viewBinding != null) {
            return getViewBinding().viewPager.getCurrentItem();
        }
        return -1;
    }

    @NotNull
    public final FragmentUgcAndShortVideoBinding getViewBinding() {
        FragmentUgcAndShortVideoBinding fragmentUgcAndShortVideoBinding = this.viewBinding;
        if (fragmentUgcAndShortVideoBinding != null) {
            return fragmentUgcAndShortVideoBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    public final void goPublish() {
        FragmentUtil.showFragmentAsDialog(getParentFragmentManager(), 16908290, new MainMenuDialogFragment(), true, "main_menu");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        setTitle(0);
        final FragmentUgcAndShortVideoBinding viewBinding = getViewBinding();
        viewBinding.endIcon.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UgcAndShortVideoFragment.m562initView$lambda4$lambda0(UgcAndShortVideoFragment.this, view);
            }
        });
        viewBinding.viewLL.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UgcAndShortVideoFragment.m563initView$lambda4$lambda1(UgcAndShortVideoFragment.this, viewBinding, view);
            }
        });
        viewBinding.dynamic.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UgcAndShortVideoFragment.m564initView$lambda4$lambda2(FragmentUgcAndShortVideoBinding.this, view);
            }
        });
        ViewPager viewPager = viewBinding.viewPager;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        viewPager.setAdapter(new UgcAndShortVideoPagerAdapter(childFragmentManager));
        viewBinding.title.setPadding(DensityUtil.dp2px(14.0f), StatusBarHelper.getStatusbarHeight(requireContext()) + DensityUtil.dp2px(8.0f), DensityUtil.dp2px(16.0f), DensityUtil.dp2px(14.0f));
        LinearLayout linearLayout = viewBinding.title;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "it.title");
        if (ViewCompat.isLaidOut(linearLayout) && !linearLayout.isLayoutRequested()) {
            FrameLayout frameLayout = viewBinding.videoMenu;
            frameLayout.setPadding(frameLayout.getPaddingLeft(), linearLayout.getHeight(), viewBinding.videoMenu.getPaddingRight(), viewBinding.videoMenu.getPaddingBottom());
            showVideoMenu(false);
        } else {
            linearLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcAndShortVideoFragment$initView$lambda-4$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(@NotNull View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    FrameLayout frameLayout2 = FragmentUgcAndShortVideoBinding.this.videoMenu;
                    frameLayout2.setPadding(frameLayout2.getPaddingLeft(), view.getHeight(), FragmentUgcAndShortVideoBinding.this.videoMenu.getPaddingRight(), FragmentUgcAndShortVideoBinding.this.videoMenu.getPaddingBottom());
                    this.showVideoMenu(false);
                }
            });
        }
        viewBinding.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcAndShortVideoFragment$initView$1$5
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i9) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i9, float f10, int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i9) {
                UgcAndShortVideoFragment.this.setTitle(i9);
            }
        });
        viewBinding.f25205rg.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcAndShortVideoFragment$initView$1$6
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(@Nullable RadioGroup radioGroup, int i9) {
                Fragment current = ViewPagerUtils.getCurrent(UgcAndShortVideoFragment.this.getChildFragmentManager(), UgcAndShortVideoFragment.this.getViewBinding().viewPager);
                if (current instanceof ShortVideoFragment) {
                    ((ShortVideoFragment) current).S2(i9);
                    UgcAndShortVideoFragment.this.showVideoMenu(false);
                }
            }
        });
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(@Nullable AppBarLayout appBarLayout, int i9) {
        this.lastOffset = i9;
        if (Math.abs(i9) >= DensityUtil.dp2px(40.0f)) {
            if (getViewBinding().viewPager.getCurrentItem() == 1) {
                showTitle(true);
                return;
            } else {
                showTitle(false);
                return;
            }
        }
        showTitle(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getViewBinding().viewPager.getCurrentItem() == 1) {
            z8.c.o().J(true, false);
        }
    }

    @Override // p7.f
    public void reload() {
        Fragment current = ViewPagerUtils.getCurrent(getChildFragmentManager(), getViewBinding().viewPager);
        if (current instanceof p7.f) {
            ((p7.f) current).reload();
        }
    }

    public final void setViewBinding(@NotNull FragmentUgcAndShortVideoBinding fragmentUgcAndShortVideoBinding) {
        Intrinsics.checkNotNullParameter(fragmentUgcAndShortVideoBinding, "<set-?>");
        this.viewBinding = fragmentUgcAndShortVideoBinding;
    }

    public final void ugcEvent() {
        getViewBinding().viewPager.setCurrentItem(0);
        Fragment current = ViewPagerUtils.getCurrent(getChildFragmentManager(), getViewBinding().viewPager);
        if (current instanceof UgcGroundFragment) {
            ((UgcGroundFragment) current).j2(1);
        }
    }
}
