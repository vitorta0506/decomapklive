package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class LittleLinkMicInfoFragment extends BaseLiveInfoFragment {

    /* renamed from: a  reason: collision with root package name */
    String f19259a;

    /* renamed from: b  reason: collision with root package name */
    LiveInfoMatchBean f19260b;
    @BindView
    TextView mDebugInfo;
    @BindView
    TextView mTextView;

    public static final LittleLinkMicInfoFragment P1(String str, LiveInfoMatchBean liveInfoMatchBean) {
        LittleLinkMicInfoFragment littleLinkMicInfoFragment = new LittleLinkMicInfoFragment();
        Bundle bundle = new Bundle();
        bundle.putString("name", str);
        bundle.putParcelable(Contants.USER_ID, liveInfoMatchBean);
        littleLinkMicInfoFragment.setArguments(bundle);
        return littleLinkMicInfoFragment;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_little_linkmic_info;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.mTextView.setText(this.f19259a);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19259a = getArguments().getString("name");
            this.f19260b = (LiveInfoMatchBean) getArguments().getParcelable(Contants.USER_ID);
        }
    }

    @OnClick
    public void showBottomDialog(View view) {
        if (DisableDoubleClickUtils.canClick(view, 1000L)) {
            LiveInfoMatchBean liveInfoMatchBean = this.f19260b;
            if (liveInfoMatchBean != null) {
                SingleLiveBottomInteractionListDialogFragment.S1(liveInfoMatchBean.getUserId(), this.f19260b.getStreamId(), this.f19260b).show(getFragmentManager(), "live_linkmic");
            } else if (com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h != null) {
                SingleLiveBottomInteractionListDialogFragment.S1(getCurrentUser().getUserId(), com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h.getStreamId(), getCurrentUser()).show(getFragmentManager(), "live_pusher");
            }
        }
    }
}
