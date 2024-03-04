package com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.UserBean;
import com.tencent.ugc.UGCTransitionRules;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class LoginCancelAccountDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private UserBean f16634a;

    /* renamed from: b  reason: collision with root package name */
    private b f16635b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c<String> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LoginCancelAccountDialog.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ToastUtils.debugToast(LoginCancelAccountDialog.this.getActivity(), "放弃注销接口请求失败");
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (str == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            try {
                if (!"1".equals(new JSONObject(str).get("code"))) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                LoginCancelAccountDialog.this.dismissAllowingStateLoss();
                if (LoginCancelAccountDialog.this.f16635b != null) {
                    LoginCancelAccountDialog.this.f16635b.onConfirm();
                }
            } catch (Exception e10) {
                onFailure(new g7.a<>(e10, -1));
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onConfirm();

        void onDismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(View view) {
        showProgressDialog("");
        post(String.format("%s?systoken=%s", "tokens/userout/cancel", this.f16634a.getToken())).M(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(View view) {
        if (view.getContext() instanceof BaseActivity) {
            ((BaseActivity) view.getContext()).dismissProgressDialog();
        }
        dismissAllowingStateLoss();
    }

    public static LoginCancelAccountDialog U1(FragmentManager fragmentManager, UserBean userBean) {
        LoginCancelAccountDialog loginCancelAccountDialog = new LoginCancelAccountDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable("userBean", userBean);
        loginCancelAccountDialog.setArguments(bundle);
        loginCancelAccountDialog.show(fragmentManager, LoginCancelAccountDialog.class.getSimpleName());
        return loginCancelAccountDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_login_cancel_account;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f16634a = (UserBean) arguments.getParcelable("userBean");
        }
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        view.findViewById(R.id.give_up_cancel).setOnClickListener(new View.OnClickListener() { // from class: g8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LoginCancelAccountDialog.this.S1(view2);
            }
        });
        view.findViewById(R.id.let_me_look_look).setOnClickListener(new View.OnClickListener() { // from class: g8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LoginCancelAccountDialog.this.T1(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        b bVar = this.f16635b;
        if (bVar != null) {
            bVar.onDismiss();
        }
    }

    public void setOnConfirmListener(b bVar) {
        this.f16635b = bVar;
    }
}
