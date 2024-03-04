package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.databinding.ActivityInputGuildIdBinding;
import com.guochao.faceshow.guild.viewmodel.InputGuildIdViewModel;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;", "()V", "startActivityLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InputGuildIdActivity extends GCBaseMvvmActivity<BaseModel, InputGuildIdViewModel> {
    @NotNull
    private final ActivityResultLauncher<Intent> startActivityLauncher;
    public ActivityInputGuildIdBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public InputGuildIdActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<InputGuildIdViewModel>() { // from class: com.guochao.faceshow.guild.activity.InputGuildIdActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final InputGuildIdViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, InputGuildIdViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(InputGuildIdViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.InputGuildIdViewModel");
                return (InputGuildIdViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.guochao.faceshow.guild.activity.n0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InputGuildIdActivity.m722startActivityLauncher$lambda4(InputGuildIdActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.startActivityLauncher = registerForActivityResult;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m720initView$lambda2(InputGuildIdActivity this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (num != null && num.intValue() == 1) {
            Intent intent = new Intent(this$0, ApplyContractActivity.class);
            intent.putExtra("guildId", this$0.getViewBinding().guildId.getText().toString());
            this$0.startActivityLauncher.launch(intent);
            return;
        }
        String string = this$0.getString(R$string.invalid_guild_id);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.invalid_guild_id)");
        ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m721initView$lambda3(InputGuildIdActivity this$0, View view) {
        CharSequence trim;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        trim = StringsKt__StringsKt.trim((CharSequence) this$0.getViewBinding().guildId.getText().toString());
        String obj = trim.toString();
        isBlank = StringsKt__StringsJVMKt.isBlank(obj);
        if (isBlank) {
            String string = this$0.getString(R$string.please_input_guild_id);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.please_input_guild_id)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            return;
        }
        this$0.getViewModel().checkIdValid(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startActivityLauncher$lambda-4  reason: not valid java name */
    public static final void m722startActivityLauncher$lambda4(InputGuildIdActivity this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() == -1) {
            this$0.setResult(-1);
            this$0.finish();
        }
    }

    @NotNull
    public final ActivityInputGuildIdBinding getViewBinding() {
        ActivityInputGuildIdBinding activityInputGuildIdBinding = this.viewBinding;
        if (activityInputGuildIdBinding != null) {
            return activityInputGuildIdBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R$string.join_contract));
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            getViewBinding().guildId.setText(extras.getString("guildId"));
        }
        getViewModel().getChckIdResultLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.o0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                InputGuildIdActivity.m720initView$lambda2(InputGuildIdActivity.this, (Integer) obj);
            }
        });
        Button button = getViewBinding().applySign;
        Intrinsics.checkNotNullExpressionValue(button, "viewBinding.applySign");
        ViewExtendsKt.onClick$default(button, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputGuildIdActivity.m721initView$lambda3(InputGuildIdActivity.this, view);
            }
        }, 1, null);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setViewBinding(@NotNull ActivityInputGuildIdBinding activityInputGuildIdBinding) {
        Intrinsics.checkNotNullParameter(activityInputGuildIdBinding, "<set-?>");
        this.viewBinding = activityInputGuildIdBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public InputGuildIdViewModel getViewModel() {
        return (InputGuildIdViewModel) this.viewModel$delegate.getValue();
    }
}
