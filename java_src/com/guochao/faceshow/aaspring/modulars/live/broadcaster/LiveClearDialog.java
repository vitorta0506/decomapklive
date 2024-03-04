package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
/* loaded from: classes3.dex */
public class LiveClearDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private int f18464a = 1;

    /* renamed from: b  reason: collision with root package name */
    private a f18465b;
    @BindView
    TextView tv_f_hight;
    @BindView
    TextView tv_hight;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i9);
    }

    public static LiveClearDialog P1(int i9) {
        LiveClearDialog liveClearDialog = new LiveClearDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("quality", i9);
        liveClearDialog.setArguments(bundle);
        return liveClearDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.live_clear_dialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        int i9;
        Bundle arguments = getArguments();
        if (arguments != null && (i9 = arguments.getInt("quality")) != 0) {
            this.f18464a = i9;
        }
        if (this.f18464a == 1) {
            this.tv_hight.setTextColor(getContext().getResources().getColor(R.color.blue400));
            this.tv_f_hight.setTextColor(getContext().getResources().getColor(R.color.black));
            return;
        }
        this.tv_hight.setTextColor(getContext().getResources().getColor(R.color.black));
        this.tv_f_hight.setTextColor(getContext().getResources().getColor(R.color.blue400));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setGravity(17);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog_FullScreen_Alpha);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setCanceledOnTouchOutside(true);
        return createBottomDialog;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.tv_Hightstartclear) {
            this.f18464a = 1;
        } else if (id2 == R.id.tv_f_Hightstartclear) {
            this.f18464a = 2;
        }
        a aVar = this.f18465b;
        if (aVar != null) {
            aVar.a(this.f18464a);
        }
        dismissAllowingStateLoss();
    }

    public void setOnQualityListener(a aVar) {
        this.f18465b = aVar;
    }
}
