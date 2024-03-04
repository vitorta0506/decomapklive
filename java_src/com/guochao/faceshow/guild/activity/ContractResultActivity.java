package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar;
import com.guochao.faceshow.aaspring.base.titlebar.MenuItem;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.MultiItemTypeSupport;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.R$mipmap;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.guochao.faceshow.guild.bean.RecordVo;
import com.guochao.faceshow.guild.databinding.ActivityContractResultBinding;
import com.guochao.faceshow.guild.view.ContractCancellationDialog;
import com.guochao.faceshow.guild.viewmodel.ContractResultViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.lib_base.R$color;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u001f\u001a\u00020\u001d2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!H\u0002J\u0012\u0010#\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010*\u001a\u00020'2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010-\u001a\u00020\u001d2\b\u0010.\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010/\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0014J\b\u00100\u001a\u00020\u001dH\u0002J\b\u00101\u001a\u00020\u001dH\u0002J\f\u00102\u001a\u000203*\u000204H\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019¨\u00065"}, d2 = {"Lcom/guochao/faceshow/guild/activity/ContractResultActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;", "()V", "dialog", "Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;", "getDialog", "()Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;", "setDialog", "(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;)V", "lastClick", "", "startActivityLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkIntent", "", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "initProcessAdapter", "list", "", "Lcom/guochao/faceshow/guild/bean/RecordVo;", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onMenuItemClick", BaseConfig.ITEM, "Landroid/view/MenuItem;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onNewIntent", "removeMenuItem", "setLiveDataObserve", "toColorSpan", "", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractResultActivity extends GCBaseMvvmActivity<BaseModel, ContractResultViewModel> {
    @Nullable
    private ContractCancellationDialog dialog;
    private long lastClick;
    @NotNull
    private final ActivityResultLauncher<Intent> startActivityLauncher;
    public ActivityContractResultBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public ContractResultActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ContractResultViewModel>() { // from class: com.guochao.faceshow.guild.activity.ContractResultActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ContractResultViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ContractResultViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ContractResultViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.ContractResultViewModel");
                return (ContractResultViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.guochao.faceshow.guild.activity.e0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ContractResultActivity.m715startActivityLauncher$lambda10(ContractResultActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.startActivityLauncher = registerForActivityResult;
    }

    private final void checkIntent(Intent intent) {
        ContractHistoryBean contractHistoryBean = intent != null ? (ContractHistoryBean) intent.getParcelableExtra("obj") : null;
        if (contractHistoryBean == null) {
            getViewModel().checkSignState();
        } else {
            getViewModel().getContractHistoryLiveData().setValue(contractHistoryBean);
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.guochao.faceshow.guild.activity.ContractResultActivity$initProcessAdapter$adapter$2] */
    private final void initProcessAdapter(List<RecordVo> list) {
        ContractResultActivity$initProcessAdapter$adapter$1 contractResultActivity$initProcessAdapter$adapter$1 = new ContractResultActivity$initProcessAdapter$adapter$1(this, list, new MultiItemTypeSupport<RecordVo>() { // from class: com.guochao.faceshow.guild.activity.ContractResultActivity$initProcessAdapter$adapter$2
            @Override // com.guochao.faceshow.adapter.MultiItemTypeSupport
            public int getItemViewType(int i9, @NotNull RecordVo t10) {
                Intrinsics.checkNotNullParameter(t10, "t");
                return 0;
            }

            @Override // com.guochao.faceshow.adapter.MultiItemTypeSupport
            public int getLayoutId(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return R$layout.process_list_item_top;
                        }
                        return R$layout.process_list_item_middle;
                    }
                    return R$layout.process_list_item_bottom;
                }
                return R$layout.process_list_item_middle;
            }
        });
        getViewBinding().processRecyclerview.setLayoutManager(new LinearLayoutManager(this));
        getViewBinding().processRecyclerview.setAdapter(contractResultActivity$initProcessAdapter$adapter$1);
    }

    private final void removeMenuItem() {
        supportInvalidateOptionsMenu();
    }

    private final void setLiveDataObserve() {
        getViewModel().getCheckSignExpireLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.h0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContractResultActivity.m712setLiveDataObserve$lambda1(ContractResultActivity.this, (Integer) obj);
            }
        });
        getViewModel().getContractHistoryLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.f0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContractResultActivity.m713setLiveDataObserve$lambda3(ContractResultActivity.this, (ContractHistoryBean) obj);
            }
        });
        getViewModel().getCancelResultLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.g0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContractResultActivity.m714setLiveDataObserve$lambda4(ContractResultActivity.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-1  reason: not valid java name */
    public static final void m712setLiveDataObserve$lambda1(ContractResultActivity this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (num != null && num.intValue() == 0) {
            this$0.startActivity(new Intent(this$0, ContractActivity.class));
            return;
        }
        String string = this$0.getString(R$string.guild_check_sign_expire_tip, new Object[]{num});
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.guild…heck_sign_expire_tip, it)");
        ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-3  reason: not valid java name */
    public static final void m713setLiveDataObserve$lambda3(final ContractResultActivity this$0, ContractHistoryBean contractHistoryBean) {
        MenuItem findMenuItem;
        GCTitleBar titleBarController;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (contractHistoryBean == null) {
            return;
        }
        boolean z10 = true;
        if (contractHistoryBean.getState() == 1 && contractHistoryBean.getStatus() == 16) {
            Toast.makeText(this$0, R$string.guild_tips_1, 1).show();
            contractHistoryBean.setRecordVoList(null);
        }
        if (contractHistoryBean.getSignType() != 1 && contractHistoryBean.getSignType() != 2) {
            this$0.setTitle(this$0.getString(R$string.join_contract));
            this$0.getViewBinding().guildInformagtionLayout.setVisibility(0);
            this$0.getViewBinding().guildId.setText(String.valueOf(contractHistoryBean.getGuildId()));
            this$0.getViewBinding().guildName.setText(contractHistoryBean.getName());
            ContractCancellationDialog contractCancellationDialog = new ContractCancellationDialog(contractHistoryBean);
            this$0.dialog = contractCancellationDialog;
            contractCancellationDialog.setMOnMenuClickListener(new ContractCancellationDialog.OnMenuClickListener() { // from class: com.guochao.faceshow.guild.activity.ContractResultActivity$setLiveDataObserve$2$1
                @Override // com.guochao.faceshow.guild.view.ContractCancellationDialog.OnMenuClickListener
                public void confirm() {
                    ContractHistoryBean value = ContractResultActivity.this.getViewModel().getContractHistoryLiveData().getValue();
                    if (value != null) {
                        ContractResultActivity contractResultActivity = ContractResultActivity.this;
                        if (value.getState() >= 4) {
                            contractResultActivity.getViewModel().cancelRescind(Integer.valueOf(value.getGuildId()), Integer.valueOf(value.getSignId()));
                        } else {
                            contractResultActivity.getViewModel().cancellation(Integer.valueOf(value.getSignId()));
                        }
                    }
                }
            });
            if (contractHistoryBean.getState() == 1) {
                this$0.getViewBinding().time.setText(new SimpleDateFormat(this$0.getString(R$string.format_time), Locale.getDefault()).format(Long.valueOf(contractHistoryBean.getSignTime())));
            } else {
                this$0.getViewBinding().timeTips.setVisibility(8);
                this$0.getViewBinding().time.setVisibility(8);
            }
        } else {
            this$0.setTitle(this$0.getString(R$string.join_agency));
            this$0.getViewBinding().guildInformagtionLayout.setVisibility(8);
        }
        switch (contractHistoryBean.getState()) {
            case 0:
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.status_in_verification, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.wait_audit));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, R$color.color_ugc_text_level_1));
                this$0.getViewBinding().reasonLayout.setVisibility(8);
                this$0.removeMenuItem();
                break;
            case 1:
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.status_success, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.signed));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, R$color.color_ugc_text_level_1));
                this$0.getViewBinding().reasonLayout.setVisibility(8);
                this$0.removeMenuItem();
                break;
            case 2:
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.status_in_verification, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.wait_audit));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, R$color.color_ugc_text_level_1));
                this$0.getViewBinding().reasonLayout.setVisibility(8);
                break;
            case 3:
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.status_fail, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.signed_fail));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, com.guochao.faceshow.guild.R$color.guild_tips_red));
                this$0.removeMenuItem();
                this$0.getViewBinding().reasonLayout.setVisibility(0);
                this$0.getViewBinding().reason.setText(contractHistoryBean.getRefuseReason());
                this$0.initProcessAdapter(contractHistoryBean.getRecordVoList());
                break;
            case 4:
                GCTitleBar titleBarController2 = this$0.getTitleBarController();
                if (titleBarController2 != null && (findMenuItem = titleBarController2.findMenuItem(3)) != null && (titleBarController = this$0.getTitleBarController()) != null) {
                    titleBarController.removeMenuItem(findMenuItem);
                }
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.status_in_verification, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.wait_audit));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, R$color.color_ugc_text_level_1));
                this$0.removeMenuItem();
                this$0.getViewBinding().processLayout.setVisibility(0);
                this$0.initProcessAdapter(contractHistoryBean.getRecordVoList());
                break;
            case 5:
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.termination_contract_success, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.termination_contract_success));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, R$color.color_ugc_text_level_1));
                this$0.removeMenuItem();
                this$0.getViewBinding().reasonLayout.setVisibility(8);
                this$0.getViewBinding().processLayout.setVisibility(0);
                this$0.initProcessAdapter(contractHistoryBean.getRecordVoList());
                break;
            case 6:
                this$0.getViewBinding().state.setCompoundDrawablesWithIntrinsicBounds(0, R$mipmap.status_fail, 0, 0);
                this$0.getViewBinding().state.setText(this$0.getString(R$string.dismissed_fail));
                this$0.getViewBinding().state.setTextColor(ContextCompat.getColor(this$0, com.guochao.faceshow.guild.R$color.guild_tips_red));
                this$0.removeMenuItem();
                this$0.getViewBinding().processLayout.setVisibility(0);
                this$0.getViewBinding().reasonLayout.setVisibility(8);
                this$0.getViewBinding().reason.setText(contractHistoryBean.getRefuseComplain());
                this$0.initProcessAdapter(contractHistoryBean.getRecordVoList());
                break;
        }
        List<RecordVo> recordVoList = contractHistoryBean.getRecordVoList();
        if (recordVoList != null && !recordVoList.isEmpty()) {
            z10 = false;
        }
        if (!z10) {
            this$0.setTitle(this$0.getString(R$string.my_contract));
        } else {
            this$0.getViewBinding().processLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-4  reason: not valid java name */
    public static final void m714setLiveDataObserve$lambda4(ContractResultActivity this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            String string = this$0.getString(R$string.revoked);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.revoked)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            this$0.setResult(-1);
            this$0.finish();
            return;
        }
        String string2 = this$0.getString(R$string.revoke_fail);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.revoke_fail)");
        ToastUtils.showToast$default(this$0, string2, 0, 0, 12, null);
        this$0.getViewModel().checkSignState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startActivityLauncher$lambda-10  reason: not valid java name */
    public static final void m715startActivityLauncher$lambda10(ContractResultActivity this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() == -1) {
            this$0.getViewModel().checkSignState();
        }
    }

    private final String toColorSpan(int i9) {
        String string = getString(i9);
        Intrinsics.checkNotNullExpressionValue(string, "getString(this)");
        return string;
    }

    @Nullable
    public final ContractCancellationDialog getDialog() {
        return this.dialog;
    }

    @NotNull
    public final ActivityContractResultBinding getViewBinding() {
        ActivityContractResultBinding activityContractResultBinding = this.viewBinding;
        if (activityContractResultBinding != null) {
            return activityContractResultBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R$string.join_contract));
        com.previewlibrary.a.a().c(new com.guochao.faceshow.guild.view.e());
        setLiveDataObserve();
        checkIntent(getIntent());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(@NotNull Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        ContractHistoryBean value = getViewModel().getContractHistoryLiveData().getValue();
        String str = null;
        Integer valueOf = value != null ? Integer.valueOf(value.getState()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            str = toColorSpan(R$string.cancel_contract);
        } else if (valueOf != null && valueOf.intValue() == 1) {
            str = toColorSpan(R$string.terminate_contract);
        } else if (valueOf != null && valueOf.intValue() == 3) {
            str = toColorSpan(R$string.resign);
        } else {
            if ((valueOf != null && valueOf.intValue() == 2) || (valueOf != null && valueOf.intValue() == 4)) {
                str = toColorSpan(R$string.cancel_contract);
            } else if (valueOf != null && valueOf.intValue() == 5) {
                str = toColorSpan(R$string.resign);
            } else if (valueOf != null && valueOf.intValue() == 6) {
                str = toColorSpan(R$string.terminate_contract);
            }
        }
        if (str == null) {
            return super.onCreateOptionsMenu(menu);
        }
        menu.add(1, R$id.creater, 0, str).setShowAsAction(2);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(@Nullable android.view.MenuItem menuItem) {
        if (System.currentTimeMillis() - this.lastClick <= 2000) {
            return super.onMenuItemClick(menuItem);
        }
        this.lastClick = System.currentTimeMillis();
        ContractHistoryBean value = getViewModel().getContractHistoryLiveData().getValue();
        Integer valueOf = value != null ? Integer.valueOf(value.getState()) : null;
        boolean z10 = false;
        if (((valueOf != null && valueOf.intValue() == 0) || (valueOf != null && valueOf.intValue() == 2)) || (valueOf != null && valueOf.intValue() == 4)) {
            ContractHistoryBean value2 = getViewModel().getContractHistoryLiveData().getValue();
            if (value2 != null) {
                if (value2.getState() >= 4) {
                    getViewModel().cancelRescind(Integer.valueOf(value2.getGuildId()), Integer.valueOf(value2.getSignId()));
                } else {
                    getViewModel().cancellation(Integer.valueOf(value2.getSignId()));
                }
            }
        } else {
            if ((valueOf != null && valueOf.intValue() == 3) || (valueOf != null && valueOf.intValue() == 5)) {
                ContractHistoryBean value3 = getViewModel().getContractHistoryLiveData().getValue();
                if (value3 != null) {
                    if (value3.getSignType() != 1 && value3.getSignType() != 2) {
                        getViewModel().checkSignExpire();
                    } else {
                        startActivity(new Intent(this, ContractActivity.class));
                    }
                }
            } else {
                if ((valueOf != null && valueOf.intValue() == 1) || (valueOf != null && valueOf.intValue() == 6)) {
                    z10 = true;
                }
                if (z10) {
                    Intent intent = new Intent(this, ApplyTerminationActivity.class);
                    intent.putExtra("obj", getViewModel().getContractHistoryLiveData().getValue());
                    this.startActivityLauncher.launch(intent);
                }
            }
        }
        return super.onMenuItemClick(menuItem);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(@Nullable Intent intent) {
        super.onNewIntent(intent);
        checkIntent(intent);
    }

    public final void setDialog(@Nullable ContractCancellationDialog contractCancellationDialog) {
        this.dialog = contractCancellationDialog;
    }

    public final void setViewBinding(@NotNull ActivityContractResultBinding activityContractResultBinding) {
        Intrinsics.checkNotNullParameter(activityContractResultBinding, "<set-?>");
        this.viewBinding = activityContractResultBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public ContractResultViewModel getViewModel() {
        return (ContractResultViewModel) this.viewModel$delegate.getValue();
    }
}
