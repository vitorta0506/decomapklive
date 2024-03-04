package com.guochao.faceshow.signin.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.signin.R$drawable;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.databinding.DialogLiveSignCenterBinding;
import com.guochao.faceshow.signin.fragment.ActivityTaskFragment;
import com.guochao.faceshow.signin.fragment.SigninTaskFragment;
import com.guochao.faceshow.signin.viewmodel.SigninCenterViewModel;
import com.guochao.lib_base.R$color;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u001a\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0012\u0010\u001f\u001a\u00020\u00172\b\u0010 \u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010!\u001a\u00020\u0017R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013¨\u0006#"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;", "()V", "fragments", "", "Landroidx/fragment/app/Fragment;", "getFragments", "()Ljava/util/List;", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initFragment", "", "it", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "resetSingleFragment", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LiveSignCenterDialog extends GCBaseMvvmFragment<BaseModel, SigninCenterViewModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<Fragment> fragments;
    public DialogLiveSignCenterBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;", PushConstants.INTENT_ACTIVITY_NAME, "Landroidx/fragment/app/FragmentActivity;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveSignCenterDialog showDialog(@NotNull FragmentActivity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            LiveSignCenterDialog liveSignCenterDialog = new LiveSignCenterDialog();
            activity.getSupportFragmentManager().beginTransaction().add(16908290, liveSignCenterDialog).show(liveSignCenterDialog).commitAllowingStateLoss();
            return liveSignCenterDialog;
        }
    }

    public LiveSignCenterDialog() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SigninCenterViewModel>() { // from class: com.guochao.faceshow.signin.dialog.LiveSignCenterDialog$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SigninCenterViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, SigninCenterViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(SigninCenterViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.signin.viewmodel.SigninCenterViewModel");
                return (SigninCenterViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.fragments = new ArrayList();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initFragment(boolean z10) {
        this.fragments.clear();
        if (z10) {
            this.fragments.add(SigninTaskFragment.Companion.getInstance(0));
        }
        this.fragments.add(SigninTaskFragment.Companion.getInstance(1));
        this.fragments.add(ActivityTaskFragment.Companion.getInstance(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m747initView$lambda0(LiveSignCenterDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m748initView$lambda1(LiveSignCenterDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m749initView$lambda2(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m750initView$lambda4(final LiveSignCenterDialog this$0, Boolean it) {
        Context context;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.initFragment(it.booleanValue());
        final String[] strArr = it.booleanValue() ? new String[]{this$0.getString(R$string.signin_user_center_stronger), this$0.getString(R$string.signin_user_center_everyday), this$0.getString(R$string.signin_user_center_activity)} : new String[]{this$0.getString(R$string.signin_user_center_everyday), this$0.getString(R$string.signin_user_center_activity)};
        if (!it.booleanValue() && (context = this$0.getContext()) != null) {
            this$0.getViewBinding().tabs.setIndicatorDrawable(ContextCompat.getDrawable(context, R$drawable.tab_indicator_translate));
            this$0.getViewBinding().tabs.setIndicatorColor(ContextCompat.getColorStateList(context, R$color.transparent));
        }
        RtlViewPager rtlViewPager = this$0.getViewBinding().viewpager;
        final FragmentManager childFragmentManager = this$0.getChildFragmentManager();
        rtlViewPager.setAdapter(new FragmentPagerAdapter(childFragmentManager) { // from class: com.guochao.faceshow.signin.dialog.LiveSignCenterDialog$initView$4$2
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return LiveSignCenterDialog.this.getFragments().size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            @NotNull
            public Fragment getItem(int i9) {
                return LiveSignCenterDialog.this.getFragments().get(i9);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @NotNull
            public CharSequence getPageTitle(int i9) {
                String str = strArr[i9];
                Intrinsics.checkNotNullExpressionValue(str, "titles[position]");
                return str;
            }
        });
        this$0.getViewBinding().tabs.setupWithViewPager(this$0.getViewBinding().viewpager);
    }

    @JvmStatic
    @NotNull
    public static final LiveSignCenterDialog showDialog(@NotNull FragmentActivity fragmentActivity) {
        return Companion.showDialog(fragmentActivity);
    }

    @NotNull
    public final List<Fragment> getFragments() {
        return this.fragments;
    }

    @NotNull
    public final DialogLiveSignCenterBinding getViewBinding() {
        DialogLiveSignCenterBinding dialogLiveSignCenterBinding = this.viewBinding;
        if (dialogLiveSignCenterBinding != null) {
            return dialogLiveSignCenterBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        getViewBinding().bgView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveSignCenterDialog.m747initView$lambda0(LiveSignCenterDialog.this, view);
            }
        });
        getViewBinding().ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveSignCenterDialog.m748initView$lambda1(LiveSignCenterDialog.this, view);
            }
        });
        ViewParent parent = getViewBinding().ivBack.getParent().getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveSignCenterDialog.m749initView$lambda2(view);
            }
        });
        getViewModel().checkGrowStatus();
        getViewModel().getMutableGrowLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.dialog.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveSignCenterDialog.m750initView$lambda4(LiveSignCenterDialog.this, (Boolean) obj);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void resetSingleFragment() {
        this.fragments.clear();
        this.fragments.add(SigninTaskFragment.Companion.getInstance(1));
        this.fragments.add(ActivityTaskFragment.Companion.getInstance(1));
        final String[] strArr = {getString(R$string.signin_user_center_everyday), getString(R$string.signin_user_center_activity)};
        getViewBinding().viewpager.setVisibility(8);
        getViewBinding().viewpagerSingle.setVisibility(0);
        RtlViewPager rtlViewPager = getViewBinding().viewpagerSingle;
        final FragmentManager childFragmentManager = getChildFragmentManager();
        rtlViewPager.setAdapter(new FragmentPagerAdapter(childFragmentManager) { // from class: com.guochao.faceshow.signin.dialog.LiveSignCenterDialog$resetSingleFragment$1
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return LiveSignCenterDialog.this.getFragments().size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            @NotNull
            public Fragment getItem(int i9) {
                return LiveSignCenterDialog.this.getFragments().get(i9);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @NotNull
            public CharSequence getPageTitle(int i9) {
                String str = strArr[i9];
                Intrinsics.checkNotNullExpressionValue(str, "titles[position]");
                return str;
            }
        });
        getViewBinding().tabs.setupWithViewPager(getViewBinding().viewpagerSingle);
    }

    public final void setViewBinding(@NotNull DialogLiveSignCenterBinding dialogLiveSignCenterBinding) {
        Intrinsics.checkNotNullParameter(dialogLiveSignCenterBinding, "<set-?>");
        this.viewBinding = dialogLiveSignCenterBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public SigninCenterViewModel getViewModel() {
        return (SigninCenterViewModel) this.viewModel$delegate.getValue();
    }
}
