package com.guochao.faceshow.component.f2fmatch.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.component.f2fmatch.R$drawable;
import com.guochao.faceshow.component.f2fmatch.R$raw;
import com.guochao.faceshow.component.f2fmatch.R$string;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fPrepareBinding;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.context.GCApplication;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0013H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;)V", "viewModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "showBeautyTipIfNeed", ViewHierarchyConstants.VIEW_KEY, "showGenderTipIfNeed", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fPrepareFragment extends GCCoreFragment {
    public FragmentF2fPrepareBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public F2fPrepareFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fMatchViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fMatchViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fMatchViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel");
                return (F2fMatchViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final F2fMatchViewModel getViewModel() {
        return (F2fMatchViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-0  reason: not valid java name */
    public static final void m619initView$lambda4$lambda0(F2fPrepareFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        F2fMatchHistoryFragment f2fMatchHistoryFragment = new F2fMatchHistoryFragment();
        FragmentManager supportFragmentManager = this$0.requireActivity().getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "requireActivity().supportFragmentManager");
        f2fMatchHistoryFragment.show(supportFragmentManager, "match_history");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-1  reason: not valid java name */
    public static final void m620initView$lambda4$lambda1(F2fPrepareFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        ((F2fMatchContainer) requireActivity).showGenderFilterDialog();
        ja.a.b().e("KEY_F2F_GENDER");
        this$0.getViewBinding().genderTips.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-2  reason: not valid java name */
    public static final void m621initView$lambda4$lambda2(F2fPrepareFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        ((F2fMatchContainer) requireActivity).showPendantDialog();
        ja.a.b().e("KEY_F2F_BEAUTY");
        this$0.getViewBinding().beautyTips.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m622initView$lambda4$lambda3(final F2fPrepareFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GCDialog.Builder builder = new GCDialog.Builder();
        String string = this$0.getString(R$string.mini_1v1_dialog_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.mini_1v1_dialog_title)");
        GCDialog.Builder onClick = builder.title(string).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment$initView$1$4$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                invoke2(gCDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCDialog onClick2) {
                Intrinsics.checkNotNullParameter(onClick2, "$this$onClick");
                onClick2.dismiss();
                FragmentActivity requireActivity = F2fPrepareFragment.this.requireActivity();
                Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity");
                ((F2fMatchActivity) requireActivity).finish(false);
            }
        }, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment$initView$1$4$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                invoke2(gCDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCDialog onClick2) {
                Intrinsics.checkNotNullParameter(onClick2, "$this$onClick");
                onClick2.dismiss();
                FragmentActivity requireActivity = F2fPrepareFragment.this.requireActivity();
                Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
                ((F2fMatchContainer) requireActivity).moveToMini();
            }
        });
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        onClick.build(requireContext).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5  reason: not valid java name */
    public static final void m623initView$lambda5(F2fPrepareFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (num != null && num.intValue() == 0) {
            this$0.getViewBinding().icon.setImageResource(R$drawable.ic_gender_female);
        } else if (num != null && num.intValue() == 1) {
            this$0.getViewBinding().icon.setImageResource(R$drawable.ic_gender_male);
        } else {
            this$0.getViewBinding().icon.setImageResource(R$drawable.ic_gender_no_limit);
        }
    }

    private final void showBeautyTipIfNeed(View view) {
        if (ja.a.b().f("KEY_F2F_BEAUTY")) {
            getViewBinding().beautyTips.setVisibility(0);
        }
    }

    private final void showGenderTipIfNeed(View view) {
        if (ja.a.b().f("KEY_F2F_GENDER")) {
            getViewBinding().genderTips.setVisibility(0);
        }
    }

    @NotNull
    public final FragmentF2fPrepareBinding getViewBinding() {
        FragmentF2fPrepareBinding fragmentF2fPrepareBinding = this.viewBinding;
        if (fragmentF2fPrepareBinding != null) {
            return fragmentF2fPrepareBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        FragmentF2fPrepareBinding viewBinding = getViewBinding();
        viewBinding.history.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fPrepareFragment.m619initView$lambda4$lambda0(F2fPrepareFragment.this, view);
            }
        });
        ImageView beauty = viewBinding.beauty;
        Intrinsics.checkNotNullExpressionValue(beauty, "beauty");
        showBeautyTipIfNeed(beauty);
        FrameLayout filterDialog = viewBinding.filterDialog;
        Intrinsics.checkNotNullExpressionValue(filterDialog, "filterDialog");
        showGenderTipIfNeed(filterDialog);
        viewBinding.filterDialog.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fPrepareFragment.m620initView$lambda4$lambda1(F2fPrepareFragment.this, view);
            }
        });
        viewBinding.beauty.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fPrepareFragment.m621initView$lambda4$lambda2(F2fPrepareFragment.this, view);
            }
        });
        viewBinding.svgaHand.playRaw(R$raw.f_f_hand);
        if (!ja.a.b().f("KEY_F2F_SLIDE_UP")) {
            viewBinding.slidUpTipsTv.setVisibility(8);
        }
        viewBinding.mini.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fPrepareFragment.m622initView$lambda4$lambda3(F2fPrepareFragment.this, view);
            }
        });
        getViewModel().getMatchGenderLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                F2fPrepareFragment.m623initView$lambda5(F2fPrepareFragment.this, (Integer) obj);
            }
        });
    }

    public final void setViewBinding(@NotNull FragmentF2fPrepareBinding fragmentF2fPrepareBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fPrepareBinding, "<set-?>");
        this.viewBinding = fragmentF2fPrepareBinding;
    }
}
