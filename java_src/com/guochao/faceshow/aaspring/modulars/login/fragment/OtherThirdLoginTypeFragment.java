package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.app.Activity;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
import com.guochao.faceshow.aaspring.modulars.login.fragment.ThirdPartyLoginTypeFragment;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class OtherThirdLoginTypeFragment extends BaseRecyclerViewFragment<ThirdPartyLoginPlatform, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private ThirdPartyLoginTypeFragment.a f20477a;

    /* renamed from: b  reason: collision with root package name */
    private int f20478b;

    public static OtherThirdLoginTypeFragment R1(int i9) {
        OtherThirdLoginTypeFragment otherThirdLoginTypeFragment = new OtherThirdLoginTypeFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("data", i9);
        otherThirdLoginTypeFragment.setArguments(bundle);
        return otherThirdLoginTypeFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        ((ImageView) baseViewHolder.getView(R.id.icon)).setImageDrawable(new RippleDrawable(getResources().getColorStateList(R.color.colorControlHighlight), getResources().getDrawable(thirdPartyLoginPlatform.getIcon()), null));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: S1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        ThirdPartyLoginTypeFragment.a aVar = this.f20477a;
        if (aVar != null) {
            aVar.D(baseViewHolder.itemView, thirdPartyLoginPlatform);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().d(false).c(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_other_third_login;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        addDatas(e.d(getActivity(), this.f20478b));
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof ThirdPartyLoginTypeFragment.a) {
            this.f20477a = (ThirdPartyLoginTypeFragment.a) activity;
        }
        if (getArguments() != null) {
            this.f20478b = getArguments().getInt("data");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new LinearLayoutManager(getActivity(), 0, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        View inflate = getLayoutInflater().inflate(R.layout.third_login_icon, viewGroup, false);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) inflate.getLayoutParams();
        marginLayoutParams.setMarginEnd(DensityUtil.dp2px(8.0f));
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(8.0f));
        return new BaseViewHolder(inflate);
    }
}
