package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ba.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
/* loaded from: classes3.dex */
public class PersonalDynamicListFragment extends BaseDynamicListFragment implements a.e {
    String mUserId;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DynamicBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<DynamicBean>> aVar) {
            PersonalDynamicListFragment.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
            boolean z10 = false;
            if (PersonalDynamicListFragment.this.getDefaultPage() == PersonalDynamicListFragment.this.getCurrentPage()) {
                PersonalDynamicListFragment.this.getList().clear();
                if (PersonalDynamicListFragment.this.isSelf()) {
                    PersonalDynamicListFragment.this.getList().addAll(PersonalDynamicListFragment.this.resetList(false));
                }
            }
            if (list != null) {
                AppContentFilter.INSTANCE.filterList(list);
                PersonalDynamicListFragment.this.getList().addAll(list);
            }
            PersonalDynamicListFragment personalDynamicListFragment = PersonalDynamicListFragment.this;
            if (list != null && list.size() > 0) {
                z10 = true;
            }
            personalDynamicListFragment.notifyDataLoaded(z10);
        }
    }

    public static PersonalDynamicListFragment getInstance(String str) {
        PersonalDynamicListFragment personalDynamicListFragment = new PersonalDynamicListFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Contants.USER_ID, str);
        personalDynamicListFragment.setArguments(bundle);
        return personalDynamicListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSelf() {
        return getCurrentUser().getUserId().equals(this.mUserId);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        post("tokens/friend/list/home_page").v("account", this.mUserId).v("page", Integer.valueOf(getCurrentPage())).v("limit", 10).v("queryType", Integer.valueOf(isSelf() ? 5 : 6)).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, aa.e
    public void onBlackStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        for (int i9 = 0; i9 < getList().size(); i9++) {
            DynamicBean dynamicBean2 = getList().get(i9);
            if (dynamicBean2.getUserId().equalsIgnoreCase(dynamicBean.getUserId())) {
                dynamicBean2.setUserAttentStatus(1);
                dynamicBean2.setBlacked(z10);
            }
        }
        notifyDataLoaded(true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mUserId = getArguments().getString(Contants.USER_ID);
        }
        ba.a.r().registerOnPublishListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ba.a.r().unregisterOnPublishListener(this);
    }

    @Override // ba.a.e
    public void onPublishResponse(PublishUgcBean publishUgcBean) {
        DynamicBean dynamic = PublishUgcBean.toDynamic(publishUgcBean);
        int i9 = 0;
        while (true) {
            if (i9 >= getList().size()) {
                i9 = -1;
                break;
            } else if (getList().get(i9).getUuid() == dynamic.getUuid()) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= 0) {
            getList().set(i9, dynamic);
            notifyDataLoaded(true);
            return;
        }
        resetList(false);
    }

    public void onPublishTaskChanged(List<PublishUgcBean> list) {
    }
}
