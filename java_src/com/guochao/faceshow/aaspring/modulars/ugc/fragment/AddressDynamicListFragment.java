package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AddressDynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.AddressDynamicListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
/* loaded from: classes3.dex */
public class AddressDynamicListFragment extends BaseDynamicListFragment {

    /* renamed from: a  reason: collision with root package name */
    private String f22624a;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<AddressDynamicBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable AddressDynamicBean addressDynamicBean, @NonNull FaceCastBaseResponse<AddressDynamicBean> faceCastBaseResponse) {
            if (addressDynamicBean != null && addressDynamicBean.getList() != null) {
                AddressDynamicListFragment.this.addDatas(addressDynamicBean.getList());
                AddressDynamicListFragment.this.notifyDataLoaded(addressDynamicBean.getList().size() > 0);
                if (AddressDynamicListFragment.this.getActivity() instanceof AddressDynamicListActivity) {
                    ((AddressDynamicListActivity) AddressDynamicListFragment.this.getActivity()).e0(AddressDynamicListFragment.this.getString(R.string.ugc_people_come, String.valueOf(addressDynamicBean.getPartakeTimes())));
                    return;
                }
                return;
            }
            AddressDynamicListFragment.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AddressDynamicBean> aVar) {
            AddressDynamicListFragment.this.notifyDataLoaded(false);
        }
    }

    public static AddressDynamicListFragment Q1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("placeName", str);
        AddressDynamicListFragment addressDynamicListFragment = new AddressDynamicListFragment();
        addressDynamicListFragment.setArguments(bundle);
        return addressDynamicListFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        post("tokens/search/findRingListByPlace/v2").v("placeName", this.f22624a).v("currPage", Integer.valueOf(getCurrentPage())).v("pageSize", 20).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f22624a = getArguments().getString("placeName");
        }
    }
}
