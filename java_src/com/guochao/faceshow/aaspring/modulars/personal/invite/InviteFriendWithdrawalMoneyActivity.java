package com.guochao.faceshow.aaspring.modulars.personal.invite;

import android.app.Dialog;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.WithdrawSpecification;
import com.guochao.faceshow.aaspring.beans.WithdrawSpecificationList;
import com.guochao.faceshow.aaspring.beans.WithdrawalChaChe;
import com.guochao.faceshow.aaspring.modulars.personal.BindPhoneToSetPayPasswordActivity;
import com.guochao.faceshow.aaspring.modulars.personal.SetLoginPasswordActivity;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.view.BindCellPhoneActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.a;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.f;
import com.guochao.faceshow.views.n;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bH\u0010IJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0003H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000f\u001a\u00020\u00032\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0003H\u0016J\b\u0010\u0014\u001a\u00020\u0003H\u0016J\u0012\u0010\u0017\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010'\u001a\u00020&8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b-\u0010(\u001a\u0004\b.\u0010*\"\u0004\b/\u0010,R\"\u00101\u001a\u0002008\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R$\u0010?\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006J"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "Landroid/view/View$OnClickListener;", "", "initAliPayData", "showSelectPayWay", "withdrawal", "showInputPwdDialog", "showSuccessDialog", "showSetPwdDialog", "", "checkPwd", "Lg7/a;", "", "exp", "showErrorToast", "showDialog", "", "getLayoutId", "initView", "loadData", "Landroid/view/View;", NotifyType.VIBRATE, "onClick", "Landroid/widget/FrameLayout;", "flSelectWithdrawalWay", "Landroid/widget/FrameLayout;", "getFlSelectWithdrawalWay", "()Landroid/widget/FrameLayout;", "setFlSelectWithdrawalWay", "(Landroid/widget/FrameLayout;)V", "Landroid/widget/LinearLayout;", "llAliPayLayout", "Landroid/widget/LinearLayout;", "getLlAliPayLayout", "()Landroid/widget/LinearLayout;", "setLlAliPayLayout", "(Landroid/widget/LinearLayout;)V", "Landroid/widget/EditText;", "etAliPayAccount", "Landroid/widget/EditText;", "getEtAliPayAccount", "()Landroid/widget/EditText;", "setEtAliPayAccount", "(Landroid/widget/EditText;)V", "etAliPayName", "getEtAliPayName", "setEtAliPayName", "Landroid/widget/TextView;", "tvAmount", "Landroid/widget/TextView;", "getTvAmount", "()Landroid/widget/TextView;", "setTvAmount", "(Landroid/widget/TextView;)V", "Landroid/widget/Button;", "btnWithdrawal", "Landroid/widget/Button;", "getBtnWithdrawal", "()Landroid/widget/Button;", "setBtnWithdrawal", "(Landroid/widget/Button;)V", "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;", "WithdrawSpecificationItem", "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;", "getWithdrawSpecificationItem", "()Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;", "setWithdrawSpecificationItem", "(Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;)V", "Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;", "withdrawalChaChe", "Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class InviteFriendWithdrawalMoneyActivity extends BaseActivity implements View.OnClickListener {
    @Nullable
    private WithdrawSpecificationList WithdrawSpecificationItem;
    public Button btnWithdrawal;
    public EditText etAliPayAccount;
    public EditText etAliPayName;
    public FrameLayout flSelectWithdrawalWay;
    public LinearLayout llAliPayLayout;
    public TextView tvAmount;
    @Nullable
    private WithdrawalChaChe withdrawalChaChe;

    private final boolean checkPwd() {
        return Intrinsics.areEqual("1", SpUtils.getStr(getActivity(), Contants.payPassword));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initAliPayData() {
        getLlAliPayLayout().setVisibility(0);
        WithdrawalChaChe withdrawalChaChe = this.withdrawalChaChe;
        Intrinsics.checkNotNull(withdrawalChaChe);
        if (!TextUtils.isEmpty(withdrawalChaChe.getAliPayAccount())) {
            EditText etAliPayAccount = getEtAliPayAccount();
            WithdrawalChaChe withdrawalChaChe2 = this.withdrawalChaChe;
            Intrinsics.checkNotNull(withdrawalChaChe2);
            etAliPayAccount.setText(withdrawalChaChe2.getAliPayAccount());
        }
        WithdrawalChaChe withdrawalChaChe3 = this.withdrawalChaChe;
        Intrinsics.checkNotNull(withdrawalChaChe3);
        if (TextUtils.isEmpty(withdrawalChaChe3.getAliPayName())) {
            return;
        }
        EditText etAliPayName = getEtAliPayName();
        WithdrawalChaChe withdrawalChaChe4 = this.withdrawalChaChe;
        Intrinsics.checkNotNull(withdrawalChaChe4);
        etAliPayName.setText(withdrawalChaChe4.getAliPayName());
    }

    private final void showDialog() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this, new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.g
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                InviteFriendWithdrawalMoneyActivity.m537showDialog$lambda3(InviteFriendWithdrawalMoneyActivity.this, dialog, z10);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.m(ContextCompat.getColor(this, R.color.color_common_dialog_confirm));
        eVar.d(ContextCompat.getColor(this, R.color.color_common_dialog_cancel));
        eVar.f(getString(R.string.withdrawal_pwd_lock));
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showDialog$lambda-3  reason: not valid java name */
    public static final void m537showDialog$lambda3(InviteFriendWithdrawalMoneyActivity this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z10) {
            Intent intent = new Intent(this$0.getActivity(), BindCellPhoneActivity.class);
            intent.putExtra("from", 3);
            this$0.startActivity(intent);
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorToast(g7.a<String> aVar) {
        dismissProgressDialog();
        if (aVar.a() == -1) {
            showDialog();
        } else if (aVar.a() == 0) {
            GCCoreActivity activity = getActivity();
            String string = getResources().getString(R.string.password_wrong);
            Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.string.password_wrong)");
            ToastUtils.showToast$default(activity, string, 0, 0, 12, null);
            getBtnWithdrawal().performClick();
        } else {
            GCCoreActivity activity2 = getActivity();
            String string2 = getResources().getString(R.string.withdrawal_faile);
            Intrinsics.checkNotNullExpressionValue(string2, "resources.getString(R.string.withdrawal_faile)");
            ToastUtils.showToast$default(activity2, string2, 0, 0, 12, null);
            finish();
        }
    }

    private final void showInputPwdDialog() {
        if (!checkPwd()) {
            showSetPwdDialog();
        } else {
            new n(getActivity(), R.style.commonDialog, getResources().getString(R.string.setting_enter_payment_password), new n.b() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1
                @Override // com.guochao.faceshow.views.n.b
                public void onClose(@NotNull Dialog dialog, boolean z10) {
                    Intrinsics.checkNotNullParameter(dialog, "dialog");
                }

                @Override // com.guochao.faceshow.views.n.b
                public void onConfirm(@NotNull Dialog dialog, boolean z10, @NotNull String password) {
                    Intrinsics.checkNotNullParameter(dialog, "dialog");
                    Intrinsics.checkNotNullParameter(password, "password");
                    InviteFriendWithdrawalMoneyActivity.this.showProgressDialog("");
                    PostRequest post = InviteFriendWithdrawalMoneyActivity.this.post("tokens/user/info/showOldPassword");
                    UserBean currentUser = InviteFriendWithdrawalMoneyActivity.this.getCurrentUser();
                    String str = currentUser != null ? currentUser.userId : null;
                    final InviteFriendWithdrawalMoneyActivity inviteFriendWithdrawalMoneyActivity = InviteFriendWithdrawalMoneyActivity.this;
                    post.D(Contants.USER_ID, str).D("pasword", password).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1
                        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                        public void onFailure(@NotNull g7.a<String> exp) {
                            Intrinsics.checkNotNullParameter(exp, "exp");
                            InviteFriendWithdrawalMoneyActivity.this.showErrorToast(exp);
                        }

                        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                        public void onResponse(@Nullable String str2, @NotNull FaceCastBaseResponse<String> baseResponse) {
                            Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                            GCRequest bindToLifecycle = new GCRequest("api/token/promotion/invite-earn-money/applyWithdraw").bindToLifecycle(InviteFriendWithdrawalMoneyActivity.this);
                            String userId = InviteFriendWithdrawalMoneyActivity.this.getCurrentUser().getUserId();
                            Intrinsics.checkNotNullExpressionValue(userId, "currentUser.getUserId()");
                            GCRequest putBody = bindToLifecycle.putBody(Contants.USER_ID, userId);
                            WithdrawSpecificationList withdrawSpecificationItem = InviteFriendWithdrawalMoneyActivity.this.getWithdrawSpecificationItem();
                            String ruleId = withdrawSpecificationItem != null ? withdrawSpecificationItem.getRuleId() : null;
                            if (ruleId == null) {
                                ruleId = "";
                            }
                            GCRequest putBody2 = putBody.putBody("ruleId", ruleId);
                            final InviteFriendWithdrawalMoneyActivity inviteFriendWithdrawalMoneyActivity2 = InviteFriendWithdrawalMoneyActivity.this;
                            putBody2.getCallbackHolder().setSuccessClz(WithdrawSpecification.class);
                            putBody2.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1$onResponse$$inlined$success$1
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                                    invoke2(response);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2(@NotNull Response<Object> _response) {
                                    Intrinsics.checkNotNullParameter(_response, "_response");
                                    InviteFriendWithdrawalMoneyActivity.this.showSuccessDialog();
                                }
                            });
                            final InviteFriendWithdrawalMoneyActivity inviteFriendWithdrawalMoneyActivity3 = InviteFriendWithdrawalMoneyActivity.this;
                            putBody2.getCallbackHolder().setFailClz(WithdrawSpecification.class);
                            putBody2.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1$onResponse$$inlined$fail$1
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                                    invoke2(response);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2(@Nullable Response<Object> response) {
                                    Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                                    InviteFriendWithdrawalMoneyActivity.this.dismissProgressDialog();
                                    LogUtils.e$default("InviteFriendWithdrawalMoneyActivity", "code=" + Integer.valueOf(response.getCode()) + "|||message:" + response.getMsg(), null, 4, null);
                                    InviteFriendWithdrawalMoneyActivity inviteFriendWithdrawalMoneyActivity4 = InviteFriendWithdrawalMoneyActivity.this;
                                    inviteFriendWithdrawalMoneyActivity4.showToast(inviteFriendWithdrawalMoneyActivity4.getString(R.string.withdrawal_faile));
                                }
                            });
                            putBody2.request();
                        }
                    });
                    dialog.dismiss();
                }
            }).show();
        }
    }

    private final void showSelectPayWay() {
        new com.guochao.faceshow.views.a(getActivity(), true, R.style.commonDialog, new a.b() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendWithdrawalMoneyActivity$showSelectPayWay$bankCardAndAliPayDialog$1
            @Override // com.guochao.faceshow.views.a.b
            public void onAliPayClick(@NotNull Dialog dialog) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                InviteFriendWithdrawalMoneyActivity.this.initAliPayData();
                dialog.dismiss();
            }

            @Override // com.guochao.faceshow.views.a.b
            public void onBankCardPay(@NotNull Dialog dialog) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
            }

            @Override // com.guochao.faceshow.views.a.b
            public void onPayPalClick(@NotNull Dialog dialog) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
            }

            @Override // com.guochao.faceshow.views.a.b
            public void onPayonnerClick(@NotNull Dialog dialog) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
            }

            @Override // com.guochao.faceshow.views.a.b
            public /* bridge */ /* synthetic */ void onPayonnerV2Click(Dialog dialog) {
                com.guochao.faceshow.views.b.a(this, dialog);
            }

            @Override // com.guochao.faceshow.views.a.b
            public void onUSDTClick(@NotNull Dialog dialog) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
            }
        }).show();
    }

    private final void showSetPwdDialog() {
        new com.guochao.faceshow.views.e(getActivity(), R.style.commonDialog, getResources().getString(R.string.payment_password_no), new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.h
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                InviteFriendWithdrawalMoneyActivity.m538showSetPwdDialog$lambda2(InviteFriendWithdrawalMoneyActivity.this, dialog, z10);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }).k(getResources().getString(R.string.payment_password_setting)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showSetPwdDialog$lambda-2  reason: not valid java name */
    public static final void m538showSetPwdDialog$lambda2(InviteFriendWithdrawalMoneyActivity this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z10) {
            if (!TextUtils.isEmpty(SpUtils.getStr(this$0.getActivity(), "phone"))) {
                SetLoginPasswordActivity.k0(this$0.getActivity(), 1, 1);
            } else {
                BindPhoneToSetPayPasswordActivity.l0(this$0.getActivity(), 1);
            }
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSuccessDialog() {
        dismissProgressDialog();
        new com.guochao.faceshow.views.f(getActivity(), R.style.commonDialog, getResources().getString(R.string.packshenqing), new f.a() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.i
            @Override // com.guochao.faceshow.views.f.a
            public final void onClick(Dialog dialog, boolean z10) {
                InviteFriendWithdrawalMoneyActivity.m539showSuccessDialog$lambda1(InviteFriendWithdrawalMoneyActivity.this, dialog, z10);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showSuccessDialog$lambda-1  reason: not valid java name */
    public static final void m539showSuccessDialog$lambda1(InviteFriendWithdrawalMoneyActivity this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z10) {
            dialog.dismiss();
            this$0.finish();
            return;
        }
        dialog.dismiss();
        this$0.finish();
    }

    private final void withdrawal() {
        CharSequence trim;
        CharSequence trim2;
        trim = StringsKt__StringsKt.trim((CharSequence) getEtAliPayAccount().getText().toString());
        if (TextUtils.isEmpty(trim.toString())) {
            GCCoreActivity activity = getActivity();
            String string = getResources().getString(R.string.withdrawal_alipay_account_no);
            Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.st…drawal_alipay_account_no)");
            ToastUtils.showToast$default(activity, string, 0, 0, 12, null);
            return;
        }
        trim2 = StringsKt__StringsKt.trim((CharSequence) getEtAliPayName().getText().toString());
        if (TextUtils.isEmpty(trim2.toString())) {
            showToast(R.string.enter_cash_name);
            return;
        }
        WithdrawalChaChe withdrawalChaChe = this.withdrawalChaChe;
        Intrinsics.checkNotNull(withdrawalChaChe);
        String obj = getEtAliPayAccount().getText().toString();
        int length = obj.length() - 1;
        int i9 = 0;
        boolean z10 = false;
        while (i9 <= length) {
            boolean z11 = Intrinsics.compare((int) obj.charAt(!z10 ? i9 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i9++;
            } else {
                z10 = true;
            }
        }
        withdrawalChaChe.setAliPayAccount(obj.subSequence(i9, length + 1).toString());
        WithdrawalChaChe withdrawalChaChe2 = this.withdrawalChaChe;
        Intrinsics.checkNotNull(withdrawalChaChe2);
        withdrawalChaChe2.setAliPayName(getEtAliPayName().getText().toString());
        showInputPwdDialog();
    }

    @NotNull
    public final Button getBtnWithdrawal() {
        Button button = this.btnWithdrawal;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("btnWithdrawal");
        return null;
    }

    @NotNull
    public final EditText getEtAliPayAccount() {
        EditText editText = this.etAliPayAccount;
        if (editText != null) {
            return editText;
        }
        Intrinsics.throwUninitializedPropertyAccessException("etAliPayAccount");
        return null;
    }

    @NotNull
    public final EditText getEtAliPayName() {
        EditText editText = this.etAliPayName;
        if (editText != null) {
            return editText;
        }
        Intrinsics.throwUninitializedPropertyAccessException("etAliPayName");
        return null;
    }

    @NotNull
    public final FrameLayout getFlSelectWithdrawalWay() {
        FrameLayout frameLayout = this.flSelectWithdrawalWay;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("flSelectWithdrawalWay");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_invite_friend_withdrawal_money;
    }

    @NotNull
    public final LinearLayout getLlAliPayLayout() {
        LinearLayout linearLayout = this.llAliPayLayout;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("llAliPayLayout");
        return null;
    }

    @NotNull
    public final TextView getTvAmount() {
        TextView textView = this.tvAmount;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvAmount");
        return null;
    }

    @Nullable
    public final WithdrawSpecificationList getWithdrawSpecificationItem() {
        return this.WithdrawSpecificationItem;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getString(R.string.my_vallet_withdrawal));
        WithdrawalChaChe withdrawalChaChe = (WithdrawalChaChe) com.guochao.faceshow.aaspring.manager.b.a(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, BaseConfig.WITHDRAWAL_CACHE, WithdrawalChaChe.class);
        if (withdrawalChaChe == null) {
            withdrawalChaChe = new WithdrawalChaChe();
        }
        this.withdrawalChaChe = withdrawalChaChe;
        this.WithdrawSpecificationItem = (WithdrawSpecificationList) getIntent().getParcelableExtra("data");
        View findViewById = findViewById(R.id.fl_select_withdrawal_way);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.fl_select_withdrawal_way)");
        setFlSelectWithdrawalWay((FrameLayout) findViewById);
        View findViewById2 = findViewById(R.id.et_ali_pay_account);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.et_ali_pay_account)");
        setEtAliPayAccount((EditText) findViewById2);
        View findViewById3 = findViewById(R.id.et_ali_pay_name);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.et_ali_pay_name)");
        setEtAliPayName((EditText) findViewById3);
        View findViewById4 = findViewById(R.id.tvAmount);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.tvAmount)");
        setTvAmount((TextView) findViewById4);
        View findViewById5 = findViewById(R.id.btnWithdrawal);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.btnWithdrawal)");
        setBtnWithdrawal((Button) findViewById5);
        View findViewById6 = findViewById(R.id.ll_ali_pay_layout);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.ll_ali_pay_layout)");
        setLlAliPayLayout((LinearLayout) findViewById6);
        getBtnWithdrawal().setOnClickListener(this);
        getFlSelectWithdrawalWay().setOnClickListener(this);
        TextView tvAmount = getTvAmount();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("￥ ");
        WithdrawSpecificationList withdrawSpecificationList = this.WithdrawSpecificationItem;
        sb2.append(withdrawSpecificationList != null ? Integer.valueOf(withdrawSpecificationList.getWithdrawMoeny()) : null);
        tvAmount.setText(sb2.toString());
        WithdrawalChaChe withdrawalChaChe2 = this.withdrawalChaChe;
        Intrinsics.checkNotNull(withdrawalChaChe2);
        if (withdrawalChaChe2.getWithdrawalType() == 1) {
            initAliPayData();
        } else {
            getLlAliPayLayout().setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.fl_select_withdrawal_way) {
            showSelectPayWay();
        } else if (valueOf != null && valueOf.intValue() == R.id.btnWithdrawal && DisableDoubleClickUtils.canClick(view)) {
            withdrawal();
        }
    }

    public final void setBtnWithdrawal(@NotNull Button button) {
        Intrinsics.checkNotNullParameter(button, "<set-?>");
        this.btnWithdrawal = button;
    }

    public final void setEtAliPayAccount(@NotNull EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<set-?>");
        this.etAliPayAccount = editText;
    }

    public final void setEtAliPayName(@NotNull EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<set-?>");
        this.etAliPayName = editText;
    }

    public final void setFlSelectWithdrawalWay(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
        this.flSelectWithdrawalWay = frameLayout;
    }

    public final void setLlAliPayLayout(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
        this.llAliPayLayout = linearLayout;
    }

    public final void setTvAmount(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvAmount = textView;
    }

    public final void setWithdrawSpecificationItem(@Nullable WithdrawSpecificationList withdrawSpecificationList) {
        this.WithdrawSpecificationItem = withdrawSpecificationList;
    }
}
