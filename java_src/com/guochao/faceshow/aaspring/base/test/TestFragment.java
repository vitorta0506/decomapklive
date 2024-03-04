package com.guochao.faceshow.aaspring.base.test;

import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.lib_core.databinding.FragmentTestBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/test/TestFragment;", "Landroidx/fragment/app/Fragment;", "()V", "viewBinding", "Lcom/guochao/lib_core/databinding/FragmentTestBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/lib_core/databinding/FragmentTestBinding;", "setViewBinding", "(Lcom/guochao/lib_core/databinding/FragmentTestBinding;)V", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TestFragment extends Fragment {
    public FragmentTestBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final FragmentTestBinding getViewBinding() {
        FragmentTestBinding fragmentTestBinding = this.viewBinding;
        if (fragmentTestBinding != null) {
            return fragmentTestBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    public final void setViewBinding(@NotNull FragmentTestBinding fragmentTestBinding) {
        Intrinsics.checkNotNullParameter(fragmentTestBinding, "<set-?>");
        this.viewBinding = fragmentTestBinding;
    }
}
