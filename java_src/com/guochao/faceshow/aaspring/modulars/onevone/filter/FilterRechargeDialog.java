package com.guochao.faceshow.aaspring.modulars.onevone.filter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes3.dex */
public class FilterRechargeDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private a f20916a;
    @BindView
    TextView content;

    /* loaded from: classes3.dex */
    public interface a {
        void onConfirm();
    }

    public FilterRechargeDialog(@NonNull Context context) {
        super(context);
    }

    public static FilterRechargeDialog b(Activity activity) {
        FilterRechargeDialog filterRechargeDialog = new FilterRechargeDialog(activity);
        filterRechargeDialog.show();
        return filterRechargeDialog;
    }

    public int a() {
        return R.layout.dialog_filter_recharge;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(a());
        setCanceledOnTouchOutside(true);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            ButterKnife.c(this, window.getDecorView());
            window.setDimAmount(0.4f);
            window.getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
            window.addFlags(Integer.MIN_VALUE);
        }
        this.content.setText(String.format(getContext().getString(R.string.filter_tip), Integer.valueOf(p9.a.g().i())));
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.close) {
            dismiss();
        } else if (id2 != R.id.go_to_recharge) {
        } else {
            Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
            if (currTopActivity instanceof FragmentActivity) {
                RechargeDialog.showDialog(((FragmentActivity) currTopActivity).getSupportFragmentManager(), 3, 7);
            }
            dismiss();
            a aVar = this.f20916a;
            if (aVar != null) {
                aVar.onConfirm();
            }
        }
    }

    public void setOnConfirmListener(a aVar) {
        this.f20916a = aVar;
    }
}
