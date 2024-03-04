package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.app.Activity;
import android.graphics.drawable.RippleDrawable;
import android.util.Log;
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
/* loaded from: classes3.dex */
public class ThirdPartyLoginTypeFragment extends BaseRecyclerViewFragment<ThirdPartyLoginPlatform, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private a f20521a;

    /* loaded from: classes3.dex */
    public interface a {
        void D(View view, ThirdPartyLoginPlatform thirdPartyLoginPlatform);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        ((ImageView) baseViewHolder.getView(R.id.icon)).setImageDrawable(new RippleDrawable(getResources().getColorStateList(R.color.colorControlHighlight), getResources().getDrawable(thirdPartyLoginPlatform.getIcon()), null));
        View view = baseViewHolder.itemView;
        view.setId(("login_btn_" + thirdPartyLoginPlatform.getPlatform()).hashCode());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: R1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        a aVar = this.f20521a;
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
        return R.layout.fragment_third_party_login_type;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        addDatas(e.b(getActivity()));
        notifyDataLoaded();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (getParentFragment() instanceof a) {
            this.f20521a = (a) getParentFragment();
        } else if (activity instanceof a) {
            this.f20521a = (a) activity;
        } else {
            Log.i("ThirdPartyLoginType", activity.getClass().getName() + "did not implement OnThirdPartyPlatformLoginClickListener");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new LinearLayoutManager(getActivity(), 0, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.third_login_icon, viewGroup, false));
    }
}
