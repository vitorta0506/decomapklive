package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
/* loaded from: classes3.dex */
public class HealthUpVideoTipsFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f19251a;
    @BindView
    ImageView close;
    @BindView
    TextView sure;
    @BindView
    TextView tvWaitingTip;

    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    private void P1() {
        dismissAllowingStateLoss();
        a aVar = this.f19251a;
        if (aVar != null) {
            aVar.a();
        }
    }

    @OnClick
    public void close(View view) {
        int id2 = view.getId();
        if (id2 == R.id.close || id2 == R.id.sure) {
            P1();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_health_livetips;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.tvWaitingTip.setText(getString(R.string.video_waiting_tip));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            getDialog().setCancelable(false);
            getDialog().setCanceledOnTouchOutside(false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        setParamsHeight(-1);
        return createCenterDialog();
    }
}
