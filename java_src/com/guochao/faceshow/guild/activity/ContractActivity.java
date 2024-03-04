package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.databinding.ActivityContractBinding;
import com.guochao.faceshow.guild.viewmodel.ContractViewModel;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/guild/activity/ContractActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;", "()V", "startActivityLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "startActivity", "type", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractActivity extends GCBaseMvvmActivity<BaseModel, ContractViewModel> {
    @NotNull
    private final ActivityResultLauncher<Intent> startActivityLauncher;
    public ActivityContractBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public ContractActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ContractViewModel>() { // from class: com.guochao.faceshow.guild.activity.ContractActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ContractViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ContractViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ContractViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.ContractViewModel");
                return (ContractViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.guochao.faceshow.guild.activity.d0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ContractActivity.m711startActivityLauncher$lambda5(ContractActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…          }\n            }");
        this.startActivityLauncher = registerForActivityResult;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2$lambda-0  reason: not valid java name */
    public static final void m709initView$lambda2$lambda0(ContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (va.b.a(view)) {
            this$0.startActivity(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2$lambda-1  reason: not valid java name */
    public static final void m710initView$lambda2$lambda1(ContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (va.b.a(view)) {
            this$0.startActivity(2);
        }
    }

    private final void startActivity(int i9) {
        if (i9 == 1) {
            this.startActivityLauncher.launch(new Intent(this, ApplyContractActivity.class));
            return;
        }
        this.startActivityLauncher.launch(new Intent(this, InputGuildIdActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startActivityLauncher$lambda-5  reason: not valid java name */
    public static final void m711startActivityLauncher$lambda5(ContractActivity this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() == -1) {
            this$0.finish();
        }
    }

    @NotNull
    public final ActivityContractBinding getViewBinding() {
        ActivityContractBinding activityContractBinding = this.viewBinding;
        if (activityContractBinding != null) {
            return activityContractBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R$string.contract));
        ActivityContractBinding viewBinding = getViewBinding();
        viewBinding.personalLive.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContractActivity.m709initView$lambda2$lambda0(ContractActivity.this, view);
            }
        });
        viewBinding.guildLive.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContractActivity.m710initView$lambda2$lambda1(ContractActivity.this, view);
            }
        });
        viewBinding.personalLive.setSelected(true);
        viewBinding.guildLive.setSelected(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setViewBinding(@NotNull ActivityContractBinding activityContractBinding) {
        Intrinsics.checkNotNullParameter(activityContractBinding, "<set-?>");
        this.viewBinding = activityContractBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public ContractViewModel getViewModel() {
        return (ContractViewModel) this.viewModel$delegate.getValue();
    }
}
