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
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes3.dex */
public class FilterTipDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private a f20943a;
    @BindView
    TextView content;

    /* loaded from: classes3.dex */
    public interface a {
        void onConfirm();
    }

    public FilterTipDialog(@NonNull Context context) {
        super(context);
    }

    public static FilterTipDialog b(Activity activity) {
        FilterTipDialog filterTipDialog = new FilterTipDialog(activity);
        filterTipDialog.show();
        return filterTipDialog;
    }

    public int a() {
        return R.layout.dialog_filter_tip;
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
        TextView textView = this.content;
        String string = getContext().getString(R.string.filter_tip);
        textView.setText(String.format(string, "" + p9.a.g().i()));
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.close) {
            dismiss();
        } else if (id2 == R.id.confirm) {
            dismiss();
            a aVar = this.f20943a;
            if (aVar != null) {
                aVar.onConfirm();
            }
        } else if (id2 != R.id.no_longer_notify) {
        } else {
            dismiss();
            p9.a.g().s();
            a aVar2 = this.f20943a;
            if (aVar2 != null) {
                aVar2.onConfirm();
            }
        }
    }

    public void setOnConfirmListener(a aVar) {
        this.f20943a = aVar;
    }
}
