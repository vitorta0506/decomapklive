package com.guochao.faceshow.aaspring.base.test;

import android.os.Bundle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.lib_core.databinding.ActivityTestBinding;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u001a\u001a\u00020\u00152\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0012\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/test/TestActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/test/TestModel;", "Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;", "()V", "viewBinding", "Lcom/guochao/lib_core/databinding/ActivityTestBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/lib_core/databinding/ActivityTestBinding;", "setViewBinding", "(Lcom/guochao/lib_core/databinding/ActivityTestBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "viewModel2", "getViewModel2", "viewModel2$delegate", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "onCreate", "savedInstanceState", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TestActivity extends GCBaseMvvmActivity<TestModel, TestViewModel> {
    public ActivityTestBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;
    @NotNull
    private final Lazy viewModel2$delegate;

    public TestActivity() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<TestViewModel>() { // from class: com.guochao.faceshow.aaspring.base.test.TestActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TestViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, TestViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(TestViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.test.TestViewModel");
                return (TestViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<TestViewModel>() { // from class: com.guochao.faceshow.aaspring.base.test.TestActivity$special$$inlined$lazyViewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TestViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, TestViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(TestViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.test.TestViewModel");
                return (TestViewModel) baseViewModel;
            }
        });
        this.viewModel2$delegate = lazy2;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final TestViewModel getViewModel2() {
        return (TestViewModel) this.viewModel2$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final void m337onCreate$lambda0(TestModel testModel) {
    }

    @NotNull
    public final ActivityTestBinding getViewBinding() {
        ActivityTestBinding activityTestBinding = this.viewBinding;
        if (activityTestBinding != null) {
            return activityTestBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getViewModel2().bind(this, new Observer() { // from class: com.guochao.faceshow.aaspring.base.test.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                TestActivity.m337onCreate$lambda0((TestModel) obj);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable TestModel testModel) {
    }

    public final void setViewBinding(@NotNull ActivityTestBinding activityTestBinding) {
        Intrinsics.checkNotNullParameter(activityTestBinding, "<set-?>");
        this.viewBinding = activityTestBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public TestViewModel getViewModel() {
        return (TestViewModel) this.viewModel$delegate.getValue();
    }
}
