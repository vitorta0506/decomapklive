package com.guochao.faceshow.component.f2fmatch.fragment;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fPlayerBinding;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;)V", "viewModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "startPlay", "f2fHeartBeatModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fPlayerFragment extends GCCoreFragment {
    public FragmentF2fPlayerBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public F2fPlayerFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fPlayerFragment$special$$inlined$lazyGlobalViewModel$default$1
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

    @NotNull
    public final FragmentF2fPlayerBinding getViewBinding() {
        FragmentF2fPlayerBinding fragmentF2fPlayerBinding = this.viewBinding;
        if (fragmentF2fPlayerBinding != null) {
            return fragmentF2fPlayerBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        ViewGroup.LayoutParams layoutParams = root.getLayoutParams();
        layoutParams.width = 1;
        layoutParams.height = 1;
        root.requestLayout();
        getViewBinding().playerView.showLog(false);
    }

    public final void setViewBinding(@NotNull FragmentF2fPlayerBinding fragmentF2fPlayerBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fPlayerBinding, "<set-?>");
        this.viewBinding = fragmentF2fPlayerBinding;
    }

    public final void startPlay(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        F2fMatchViewModel viewModel = getViewModel();
        TXCloudVideoView tXCloudVideoView = getViewBinding().playerView;
        Intrinsics.checkNotNullExpressionValue(tXCloudVideoView, "viewBinding.playerView");
        viewModel.startPlay(f2fHeartBeatModel, tXCloudVideoView);
    }
}
