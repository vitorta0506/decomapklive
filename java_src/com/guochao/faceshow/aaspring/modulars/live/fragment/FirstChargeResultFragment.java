package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean;
/* loaded from: classes3.dex */
public class FirstChargeResultFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    FirstChargeGiftBean f19236a;
    @BindView
    View mContainer;
    @BindView
    RecyclerView mRecyclerView;

    @OnClick
    public void close(View view) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_first_charge_result;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        view.findViewById(R.id.tv_info).setSelected(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (getArguments() != null) {
            FirstChargeGiftBean firstChargeGiftBean = (FirstChargeGiftBean) getArguments().getParcelable("data");
            this.f19236a = firstChargeGiftBean;
            this.mRecyclerView.setAdapter(new FirstChargeGiftAdapter(this, firstChargeGiftBean.getDatas(), 2));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setBackCancelable(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19236a = (FirstChargeGiftBean) getArguments().getParcelable("data");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createCenterDialog();
    }
}
