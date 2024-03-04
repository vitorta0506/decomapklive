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
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.guochao.faceshow.guild.databinding.ActivityComplaintBinding;
import com.guochao.faceshow.guild.view.ConfirmCancellationDialog;
import com.guochao.faceshow.guild.viewmodel.ComplaintViewModel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010!\u001a\u00020\u001dH\u0002J\"\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\u0012\u0010(\u001a\u00020\u001d2\b\u0010)\u001a\u0004\u0018\u00010\u0002H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/guild/activity/ComplaintActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;", "()V", "contractHistoryBean", "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;", "dialog", "Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;", "getDialog", "()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;", "setDialog", "(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;)V", "pictureAdapter", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initPictureAdapter", "", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "liveDataObserve", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ComplaintActivity extends GCBaseMvvmActivity<BaseModel, ComplaintViewModel> {
    @Nullable
    private ContractHistoryBean contractHistoryBean;
    public ConfirmCancellationDialog dialog;
    @Nullable
    private CommonRecyclerAdapter<LocalImageOrVideoBean> pictureAdapter;
    public ActivityComplaintBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public ComplaintActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ComplaintViewModel>() { // from class: com.guochao.faceshow.guild.activity.ComplaintActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ComplaintViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ComplaintViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ComplaintViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.ComplaintViewModel");
                return (ComplaintViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initPictureAdapter() {
        getViewModel().addAddPicButton();
        this.pictureAdapter = new ComplaintActivity$initPictureAdapter$1(this, getViewModel().getSelectPictureList().getValue(), R$layout.guild_upload_picture_item);
        getViewBinding().pictureList.setLayoutManager(new GridLayoutManager(this, getViewModel().getMAX_PICATURE()));
        getViewBinding().pictureList.setAdapter(this.pictureAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m704initView$lambda1(ComplaintActivity this$0, View view) {
        CharSequence trim;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        trim = StringsKt__StringsKt.trim((CharSequence) this$0.getViewBinding().editReason.getText().toString());
        String obj = trim.toString();
        isBlank = StringsKt__StringsJVMKt.isBlank(obj);
        if (isBlank) {
            String string = this$0.getString(R$string.complaint_edit_toast_tips);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.complaint_edit_toast_tips)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
        } else if (obj.length() < 5) {
            String string2 = this$0.getString(R$string.complaint_edit_toast_tips);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.complaint_edit_toast_tips)");
            ToastUtils.showToast$default(this$0, string2, 0, 0, 12, null);
        } else {
            this$0.getDialog().show(this$0.getSupportFragmentManager(), "cancellation");
        }
    }

    private final void liveDataObserve() {
        getViewModel().getSelectPictureList().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.y
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ComplaintActivity.m705liveDataObserve$lambda3(ComplaintActivity.this, (ArrayList) obj);
            }
        });
        getViewModel().getApplyResultLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.x
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ComplaintActivity.m706liveDataObserve$lambda4(ComplaintActivity.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-3  reason: not valid java name */
    public static final void m705liveDataObserve$lambda3(ComplaintActivity this$0, ArrayList arrayList) {
        CommonRecyclerAdapter<LocalImageOrVideoBean> commonRecyclerAdapter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (arrayList == null || (commonRecyclerAdapter = this$0.pictureAdapter) == null) {
            return;
        }
        commonRecyclerAdapter.setData(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-4  reason: not valid java name */
    public static final void m706liveDataObserve$lambda4(ComplaintActivity this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            String string = this$0.getString(R$string.feedback_feedback_success);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.feedback_feedback_success)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            this$0.setResult(-1);
            this$0.finish();
            return;
        }
        String string2 = this$0.getString(R$string.commit_fail);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.commit_fail)");
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
    public final ActivityComplaintBinding getViewBinding() {
        ActivityComplaintBinding activityComplaintBinding = this.viewBinding;
        if (activityComplaintBinding != null) {
            return activityComplaintBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R$string.complaint));
        Bundle extras = getIntent().getExtras();
        ContractHistoryBean contractHistoryBean = extras != null ? (ContractHistoryBean) extras.getParcelable("obj") : null;
        this.contractHistoryBean = contractHistoryBean;
        if (contractHistoryBean != null) {
            setDialog(new ConfirmCancellationDialog(contractHistoryBean));
            if (contractHistoryBean.getSignType() != 1) {
                getViewBinding().guildTime.setVisibility(0);
                getViewBinding().guildInformagtionLayout.setVisibility(0);
                getViewBinding().guildId.setText(getString(R$string.guild_id_tips, new Object[]{String.valueOf(contractHistoryBean.getGuildId())}));
                getViewBinding().guildName.setText(getString(R$string.guild_name_tips, new Object[]{contractHistoryBean.getName()}));
                TextView textView = getViewBinding().guildTime;
                int i9 = R$string.time2;
                Object[] objArr = new Object[1];
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                ContractHistoryBean contractHistoryBean2 = this.contractHistoryBean;
                objArr[0] = simpleDateFormat.format(contractHistoryBean2 != null ? Long.valueOf(contractHistoryBean2.getSignTime()) : null);
                textView.setText(getString(i9, objArr));
            }
            getDialog().setMOnMenuClickListener(new ConfirmCancellationDialog.OnMenuClickListener() { // from class: com.guochao.faceshow.guild.activity.ComplaintActivity$initView$1$1
                @Override // com.guochao.faceshow.guild.view.ConfirmCancellationDialog.OnMenuClickListener
                public void confirm() {
                    ContractHistoryBean contractHistoryBean3;
                    String obj = ComplaintActivity.this.getViewBinding().editReason.getText().toString();
                    ComplaintViewModel viewModel = ComplaintActivity.this.getViewModel();
                    ComplaintActivity complaintActivity = ComplaintActivity.this;
                    contractHistoryBean3 = complaintActivity.contractHistoryBean;
                    viewModel.commit(complaintActivity, obj, contractHistoryBean3 != null ? Integer.valueOf(contractHistoryBean3.getSignId()) : null, 28);
                }
            });
        }
        getViewBinding().confrim.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComplaintActivity.m704initView$lambda1(ComplaintActivity.this, view);
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
        if (i10 == -1 && i9 == getViewModel().getPICTURE()) {
            ArrayList<LocalImageOrVideoBean> parcelableArrayList = (intent == null || (extras = intent.getExtras()) == null) ? null : extras.getParcelableArrayList(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
            Intrinsics.checkNotNull(parcelableArrayList);
            getViewModel().addPicture(parcelableArrayList);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setDialog(@NotNull ConfirmCancellationDialog confirmCancellationDialog) {
        Intrinsics.checkNotNullParameter(confirmCancellationDialog, "<set-?>");
        this.dialog = confirmCancellationDialog;
    }

    public final void setViewBinding(@NotNull ActivityComplaintBinding activityComplaintBinding) {
        Intrinsics.checkNotNullParameter(activityComplaintBinding, "<set-?>");
        this.viewBinding = activityComplaintBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public ComplaintViewModel getViewModel() {
        return (ComplaintViewModel) this.viewModel$delegate.getValue();
    }
}
