package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.ChangeCancelTypeDialog;
import com.tencent.ugc.UGCTransitionRules;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class ChangeCancelTypeDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f16632a;

    /* loaded from: classes3.dex */
    public interface a {
        void a(ChangeCancelTypeDialog changeCancelTypeDialog);

        void b(ChangeCancelTypeDialog changeCancelTypeDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(View view) {
        a aVar = this.f16632a;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(View view) {
        a aVar = this.f16632a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U1(View view) {
        dismissAllowingStateLoss();
    }

    public static ChangeCancelTypeDialog V1(FragmentManager fragmentManager, ArrayList<String> arrayList) {
        ChangeCancelTypeDialog changeCancelTypeDialog = new ChangeCancelTypeDialog();
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("titles", arrayList);
        changeCancelTypeDialog.setArguments(bundle);
        changeCancelTypeDialog.show(fragmentManager, ChangeCancelTypeDialog.class.getSimpleName());
        return changeCancelTypeDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_change_cancel_type;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        TextView textView = (TextView) view.findViewById(R.id.first_item);
        textView.setOnClickListener(new View.OnClickListener() { // from class: d8.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChangeCancelTypeDialog.this.S1(view2);
            }
        });
        TextView textView2 = (TextView) view.findViewById(R.id.second_item);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: d8.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChangeCancelTypeDialog.this.T1(view2);
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            ArrayList<String> stringArrayList = arguments.getStringArrayList("titles");
            if (stringArrayList.size() >= 2) {
                textView.setText(stringArrayList.get(0));
                textView2.setText(stringArrayList.get(1));
            }
            if (stringArrayList.size() == 1) {
                textView.setText(stringArrayList.get(0));
                textView2.setVisibility(8);
            }
        }
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: d8.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChangeCancelTypeDialog.this.U1(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    public void setOnItemClickListener(a aVar) {
        this.f16632a = aVar;
    }
}
