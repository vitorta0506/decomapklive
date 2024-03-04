package com.guochao.faceshow.component.f2fmatch.fragment;

import android.os.Bundle;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fPreviewBinding;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel;
import com.guochao.faceshow.context.GCApplication;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\b\u0010\"\u001a\u00020\u001dH\u0016J\b\u0010#\u001a\u00020\u001dH\u0016J\u0006\u0010$\u001a\u00020\u001dR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R$\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006%"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "muteOrStop", "", "getMuteOrStop", "()Z", "setMuteOrStop", "(Z)V", "previewParent", "Landroid/view/ViewGroup;", "getPreviewParent", "()Landroid/view/ViewGroup;", "setPreviewParent", "(Landroid/view/ViewGroup;)V", "pusherModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "getPusherModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "pusherModel$delegate", "Lkotlin/Lazy;", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onResume", "startPreview", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fPreviewFragment extends GCCoreFragment {
    private boolean muteOrStop;
    public ViewGroup previewParent;
    @NotNull
    private final Lazy pusherModel$delegate;
    public FragmentF2fPreviewBinding viewBinding;

    public F2fPreviewFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fPusherViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fPusherViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fPusherViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fPusherViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel");
                return (F2fPusherViewModel) baseViewModel;
            }
        });
        this.pusherModel$delegate = lazy;
    }

    private final F2fPusherViewModel getPusherModel() {
        return (F2fPusherViewModel) this.pusherModel$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    public final boolean getMuteOrStop() {
        return this.muteOrStop;
    }

    @NotNull
    public final ViewGroup getPreviewParent() {
        ViewGroup viewGroup = this.previewParent;
        if (viewGroup != null) {
            return viewGroup;
        }
        Intrinsics.throwUninitializedPropertyAccessException("previewParent");
        return null;
    }

    @NotNull
    public final FragmentF2fPreviewBinding getViewBinding() {
        FragmentF2fPreviewBinding fragmentF2fPreviewBinding = this.viewBinding;
        if (fragmentF2fPreviewBinding != null) {
            return fragmentF2fPreviewBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().previewView.addVideoView(new TextureView(requireContext()));
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        boolean z10 = true;
        if (!requireActivity().isFinishing()) {
            getPusherModel().muteLocalPreview(true);
        } else {
            getPusherModel().stopLocalPreview();
            z10 = false;
        }
        this.muteOrStop = z10;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.muteOrStop) {
            getPusherModel().muteLocalPreview(false);
        } else {
            startPreview();
        }
    }

    public final void setMuteOrStop(boolean z10) {
        this.muteOrStop = z10;
    }

    public final void setPreviewParent(@NotNull ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<set-?>");
        this.previewParent = viewGroup;
    }

    public final void setViewBinding(@NotNull FragmentF2fPreviewBinding fragmentF2fPreviewBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fPreviewBinding, "<set-?>");
        this.viewBinding = fragmentF2fPreviewBinding;
    }

    public final void startPreview() {
        getPusherModel().startLocalPreview(getViewBinding().previewView);
    }
}
