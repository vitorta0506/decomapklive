package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.guochao.faceshow.guild.databinding.ActivityApplyTerminationBinding;
import com.guochao.faceshow.guild.view.ConfirmCancellationDialog;
import com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010!\u001a\u00020\u001dH\u0002J\"\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\u0012\u0010(\u001a\u00020\u001d2\b\u0010)\u001a\u0004\u0018\u00010\u0002H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;", "()V", "contractHistoryBean", "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;", "dialog", "Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;", "getDialog", "()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;", "setDialog", "(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;)V", "pictureAdapter", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initPictureAdapter", "", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "liveDataObserve", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyTerminationActivity extends GCBaseMvvmActivity<BaseModel, ApplyTerminationViewModel> {
    @Nullable
    private ContractHistoryBean contractHistoryBean;
    public ConfirmCancellationDialog dialog;
    @Nullable
    private CommonRecyclerAdapter<LocalImageOrVideoBean> pictureAdapter;
    public ActivityApplyTerminationBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public ApplyTerminationActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ApplyTerminationViewModel>() { // from class: com.guochao.faceshow.guild.activity.ApplyTerminationActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ApplyTerminationViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ApplyTerminationViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ApplyTerminationViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel");
                return (ApplyTerminationViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initPictureAdapter() {
        getViewModel().addAddPicButton();
        this.pictureAdapter = new ApplyTerminationActivity$initPictureAdapter$1(this, getViewModel().getSelectPictureList().getValue(), R$layout.guild_upload_picture_item);
        getViewBinding().pictureList.setLayoutManager(new GridLayoutManager(this, getViewModel().getMAX_PICATURE()));
        getViewBinding().pictureList.setAdapter(this.pictureAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0041  */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m699initView$lambda2(com.guochao.faceshow.guild.activity.ApplyTerminationActivity r10, android.view.View r11) {
        /*
            java.lang.String r11 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r11)
            com.guochao.faceshow.guild.databinding.ActivityApplyTerminationBinding r11 = r10.getViewBinding()
            android.widget.EditText r11 = r11.editReason
            android.text.Editable r11 = r11.getText()
            java.lang.String r11 = r11.toString()
            java.lang.CharSequence r11 = kotlin.text.StringsKt.trim(r11)
            java.lang.String r11 = r11.toString()
            r0 = 0
            r1 = 1
            if (r11 == 0) goto L29
            boolean r2 = kotlin.text.StringsKt.isBlank(r11)
            if (r2 == 0) goto L27
            goto L29
        L27:
            r2 = 0
            goto L2a
        L29:
            r2 = 1
        L2a:
            java.lang.String r3 = "getString(R.string.dismissed_edit_toast_tips)"
            if (r2 == 0) goto L41
            int r11 = com.guochao.faceshow.guild.R$string.dismissed_edit_toast_tips
            java.lang.String r5 = r10.getString(r11)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r3)
            r6 = 0
            r7 = 0
            r8 = 12
            r9 = 0
            r4 = r10
            com.guochao.faceshow.aaspring.utils.ToastUtils.showToast$default(r4, r5, r6, r7, r8, r9)
            goto La6
        L41:
            int r11 = r11.length()
            r2 = 5
            if (r11 >= r2) goto L5b
            int r11 = com.guochao.faceshow.guild.R$string.dismissed_edit_toast_tips
            java.lang.String r5 = r10.getString(r11)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r3)
            r6 = 0
            r7 = 0
            r8 = 12
            r9 = 0
            r4 = r10
            com.guochao.faceshow.aaspring.utils.ToastUtils.showToast$default(r4, r5, r6, r7, r8, r9)
            goto La6
        L5b:
            com.guochao.faceshow.guild.bean.ContractHistoryBean r11 = r10.contractHistoryBean
            if (r11 == 0) goto L66
            int r11 = r11.getSignType()
            if (r11 != r1) goto L66
            r0 = 1
        L66:
            if (r0 == 0) goto L99
            com.guochao.faceshow.guild.databinding.ActivityApplyTerminationBinding r11 = r10.getViewBinding()
            android.widget.EditText r11 = r11.editReason
            android.text.Editable r11 = r11.getText()
            java.lang.String r11 = r11.toString()
            com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel r0 = r10.getViewModel()
            com.guochao.faceshow.guild.bean.ContractHistoryBean r1 = r10.contractHistoryBean
            r2 = 0
            if (r1 == 0) goto L88
            int r1 = r1.getSignId()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            goto L89
        L88:
            r1 = r2
        L89:
            com.guochao.faceshow.guild.bean.ContractHistoryBean r3 = r10.contractHistoryBean
            if (r3 == 0) goto L95
            int r2 = r3.getRecordId()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
        L95:
            r0.commit(r10, r11, r1, r2)
            goto La6
        L99:
            com.guochao.faceshow.guild.view.ConfirmCancellationDialog r11 = r10.getDialog()
            androidx.fragment.app.FragmentManager r10 = r10.getSupportFragmentManager()
            java.lang.String r0 = "cancellation"
            r11.show(r10, r0)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.activity.ApplyTerminationActivity.m699initView$lambda2(com.guochao.faceshow.guild.activity.ApplyTerminationActivity, android.view.View):void");
    }

    private final void liveDataObserve() {
        getViewModel().getSelectPictureList().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.t
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ApplyTerminationActivity.m700liveDataObserve$lambda4(ApplyTerminationActivity.this, (ArrayList) obj);
            }
        });
        getViewModel().getApplyResultLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.s
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ApplyTerminationActivity.m701liveDataObserve$lambda5(ApplyTerminationActivity.this, (Integer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-4  reason: not valid java name */
    public static final void m700liveDataObserve$lambda4(ApplyTerminationActivity this$0, ArrayList arrayList) {
        CommonRecyclerAdapter<LocalImageOrVideoBean> commonRecyclerAdapter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (arrayList == null || (commonRecyclerAdapter = this$0.pictureAdapter) == null) {
            return;
        }
        commonRecyclerAdapter.setData(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-5  reason: not valid java name */
    public static final void m701liveDataObserve$lambda5(ApplyTerminationActivity this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (num != null && num.intValue() == 1) {
            String string = this$0.getString(R$string.feedback_feedback_success);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.feedback_feedback_success)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            this$0.setResult(-1);
            this$0.finish();
            return;
        }
        String string2 = this$0.getString(R$string.dismissed_fail);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.dismissed_fail)");
        ToastUtils.showToast$default(this$0, string2, 0, 0, 12, null);
    }

    @NotNull
    public final ConfirmCancellationDialog getDialog() {
        ConfirmCancellationDialog confirmCancellationDialog = this.dialog;
        if (confirmCancellationDialog != null) {
            return confirmCancellationDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialog");
        return null;
    }

    @NotNull
    public final ActivityApplyTerminationBinding getViewBinding() {
        ActivityApplyTerminationBinding activityApplyTerminationBinding = this.viewBinding;
        if (activityApplyTerminationBinding != null) {
            return activityApplyTerminationBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R$string.terminate_contract));
        Bundle extras = getIntent().getExtras();
        this.contractHistoryBean = extras != null ? (ContractHistoryBean) extras.getParcelable("obj") : null;
        ActivityApplyTerminationBinding viewBinding = getViewBinding();
        ContractHistoryBean contractHistoryBean = this.contractHistoryBean;
        if (contractHistoryBean != null) {
            setDialog(new ConfirmCancellationDialog(contractHistoryBean));
            if (contractHistoryBean.getSignType() == 1) {
                viewBinding.editReason.setHint(R$string.edit_terminate_contract_reason_hint);
                viewBinding.periodOfCalmingDown.setVisibility(8);
            } else {
                viewBinding.guildInformagtionLayout.setVisibility(0);
                viewBinding.guildId.setText(getString(R$string.guild_id_tips, new Object[]{String.valueOf(contractHistoryBean.getGuildId())}));
                viewBinding.guildName.setText(getString(R$string.guild_name_tips, new Object[]{contractHistoryBean.getName()}));
                viewBinding.guildTime.setVisibility(0);
                TextView textView = viewBinding.guildTime;
                int i9 = R$string.time2;
                Object[] objArr = new Object[1];
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                ContractHistoryBean contractHistoryBean2 = this.contractHistoryBean;
                objArr[0] = simpleDateFormat.format(contractHistoryBean2 != null ? Long.valueOf(contractHistoryBean2.getSignTime()) : null);
                textView.setText(getString(i9, objArr));
                viewBinding.periodOfCalmingDown.setText(getString(R$string.guild_rescind_request_tip, new Object[]{Integer.valueOf(MMKVUtils.getInt(BaseConfig.KEY_GUILD_EXPIRE_DAY, 0))}));
                viewBinding.periodOfCalmingDown.setVisibility(8);
            }
        }
        getDialog().setMOnMenuClickListener(new ConfirmCancellationDialog.OnMenuClickListener() { // from class: com.guochao.faceshow.guild.activity.ApplyTerminationActivity$initView$2
            @Override // com.guochao.faceshow.guild.view.ConfirmCancellationDialog.OnMenuClickListener
            public void confirm() {
                ContractHistoryBean contractHistoryBean3;
                ContractHistoryBean contractHistoryBean4;
                String obj = ApplyTerminationActivity.this.getViewBinding().editReason.getText().toString();
                ApplyTerminationViewModel viewModel = ApplyTerminationActivity.this.getViewModel();
                ApplyTerminationActivity applyTerminationActivity = ApplyTerminationActivity.this;
                contractHistoryBean3 = applyTerminationActivity.contractHistoryBean;
                Integer valueOf = contractHistoryBean3 != null ? Integer.valueOf(contractHistoryBean3.getSignId()) : null;
                contractHistoryBean4 = ApplyTerminationActivity.this.contractHistoryBean;
                viewModel.commit(applyTerminationActivity, obj, valueOf, contractHistoryBean4 != null ? Integer.valueOf(contractHistoryBean4.getRecordId()) : null);
            }
        });
        getViewBinding().confrim.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyTerminationActivity.m699initView$lambda2(ApplyTerminationActivity.this, view);
            }
        });
        initPictureAdapter();
        liveDataObserve();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        Bundle extras;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1) {
            if (i9 == getViewModel().getPICTURE()) {
                ArrayList<LocalImageOrVideoBean> parcelableArrayList = (intent == null || (extras = intent.getExtras()) == null) ? null : extras.getParcelableArrayList(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
                Intrinsics.checkNotNull(parcelableArrayList);
                getViewModel().addPicture(parcelableArrayList);
                return;
            }
            return;
        }
        getViewModel().addAddPicButton();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setDialog(@NotNull ConfirmCancellationDialog confirmCancellationDialog) {
        Intrinsics.checkNotNullParameter(confirmCancellationDialog, "<set-?>");
        this.dialog = confirmCancellationDialog;
    }

    public final void setViewBinding(@NotNull ActivityApplyTerminationBinding activityApplyTerminationBinding) {
        Intrinsics.checkNotNullParameter(activityApplyTerminationBinding, "<set-?>");
        this.viewBinding = activityApplyTerminationBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public ApplyTerminationViewModel getViewModel() {
        return (ApplyTerminationViewModel) this.viewModel$delegate.getValue();
    }
}
