package com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.WarnDialog;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes3.dex */
public class WarnDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private TextView f16637a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16638b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16639c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f16640d;

    /* renamed from: e  reason: collision with root package name */
    private int f16641e = 1;

    /* renamed from: f  reason: collision with root package name */
    private a f16642f;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R1(View view) {
        dismissAllowingStateLoss();
        a aVar = this.f16642f;
        if (aVar != null) {
            aVar.a(this.f16641e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(View view) {
        dismissAllowingStateLoss();
    }

    public static WarnDialog T1(FragmentManager fragmentManager, int i9) {
        WarnDialog warnDialog = new WarnDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        warnDialog.setArguments(bundle);
        warnDialog.show(fragmentManager, WarnDialog.class.getSimpleName());
        return warnDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_warn_cancel_account;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        this.f16637a = (TextView) view.findViewById(R.id.primary_title);
        this.f16638b = (TextView) view.findViewById(R.id.secondary_title);
        this.f16639c = (TextView) view.findViewById(R.id.cancel);
        this.f16640d = (TextView) view.findViewById(R.id.confirm);
        if (getArguments() != null) {
            this.f16641e = getArguments().getInt("type");
        }
        this.f16640d.setOnClickListener(new View.OnClickListener() { // from class: g8.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WarnDialog.this.R1(view2);
            }
        });
        this.f16639c.setOnClickListener(new View.OnClickListener() { // from class: g8.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WarnDialog.this.S1(view2);
            }
        });
        int i9 = this.f16641e;
        if (i9 == 1) {
            this.f16637a.setText(R.string.delete_account_unsettled);
            this.f16638b.setText(R.string.delete_account_unsettled_content);
            this.f16640d.setText(R.string.delete_account_confirm_discard);
        } else if (i9 == 2) {
            this.f16637a.setText(R.string.delete_account_not_due);
            this.f16638b.setText(R.string.delete_account_not_due_content);
            this.f16640d.setText(R.string.delete_account_confirm_discard);
        } else if (i9 != 3) {
        } else {
            this.f16637a.setText(R.string.delete_account_not_close);
            this.f16638b.setText(R.string.delete_account_not_terminated_content);
            this.f16640d.setText(R.string.delete_account_terminated);
        }
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
        this.f16642f = aVar;
    }
}
