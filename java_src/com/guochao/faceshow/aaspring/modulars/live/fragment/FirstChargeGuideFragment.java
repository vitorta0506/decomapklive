package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.mine.view.MyWalletActivity;
/* loaded from: classes3.dex */
public class FirstChargeGuideFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    FirstChargeGiftBean f19228a;
    @BindView
    View mContainer;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    TextView mTextViewInfo;

    @OnClick
    public void close(View view) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_first_charge_guide;
    }

    @OnClick
    public void gotoCharge(View view) {
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.start_first_charge_click);
        MyWalletActivity.start(getActivity());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        view.findViewById(R.id.title).setSelected(true);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.first_charge_dialog);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (getArguments() != null) {
            FirstChargeGiftBean firstChargeGiftBean = (FirstChargeGiftBean) getArguments().getParcelable("data");
            this.f19228a = firstChargeGiftBean;
            this.mRecyclerView.setAdapter(new FirstChargeGiftAdapter(this, firstChargeGiftBean.getDatas(), 1));
            Object[] objArr = new Object[1];
            objArr[0] = this.f19228a.getData() != null ? String.format("%s%s", this.f19228a.getData().getNum(), "%") : "20%";
            this.mTextViewInfo.setText(getString(R.string.i_want_to_charge_tips1, objArr));
            this.mTextViewInfo.setSelected(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setBackCancelable(false);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createCenterDialog();
    }
}
