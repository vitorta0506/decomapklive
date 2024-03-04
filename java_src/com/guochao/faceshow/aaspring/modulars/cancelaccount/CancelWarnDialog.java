package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelWarnDialog;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes3.dex */
public class CancelWarnDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f16631a;

    /* loaded from: classes3.dex */
    public interface a {
        void onConfirm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R1(View view) {
        dismissAllowingStateLoss();
        a aVar = this.f16631a;
        if (aVar != null) {
            aVar.onConfirm();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(View view) {
        dismissAllowingStateLoss();
    }

    public static CancelWarnDialog T1(FragmentManager fragmentManager) {
        CancelWarnDialog cancelWarnDialog = new CancelWarnDialog();
        cancelWarnDialog.show(fragmentManager, CancelWarnDialog.class.getSimpleName());
        return cancelWarnDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_cancel_warn;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        view.findViewById(R.id.btn_continue).setOnClickListener(new View.OnClickListener() { // from class: d8.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CancelWarnDialog.this.R1(view2);
            }
        });
        view.findViewById(R.id.let_me_look_look).setOnClickListener(new View.OnClickListener() { // from class: d8.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CancelWarnDialog.this.S1(view2);
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

    public void setOnConfirmClickListener(a aVar) {
        this.f16631a = aVar;
    }
}
