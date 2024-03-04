package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SearchUserBean;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchNetUserHolder;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchNetUserActivity extends BaseIMListActivity<SearchUserNameOrIdBean, SearchNetUserHolder> {

    /* renamed from: b  reason: collision with root package name */
    private String f17204b;

    /* loaded from: classes3.dex */
    class a extends c<List<SearchUserNameOrIdBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<SearchUserNameOrIdBean>> aVar) {
            SearchNetUserActivity.this.addDatas(new ArrayList());
            SearchNetUserActivity.this.notifyDataLoaded(true);
            SearchNetUserActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            if (SearchNetUserActivity.this.getCurrentPage() == 1) {
                SearchNetUserActivity.this.setDatas(list);
            } else {
                SearchNetUserActivity.this.addDatas(list);
            }
            SearchNetUserActivity.this.notifyDataLoaded(true);
            SearchNetUserActivity.this.showEmptyView();
        }
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, SearchNetUserActivity.class);
        intent.putExtra(Contants.PARAMS_KEY1, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(SearchNetUserHolder searchNetUserHolder, int i9, SearchUserNameOrIdBean searchUserNameOrIdBean) {
        searchNetUserHolder.c(searchUserNameOrIdBean, this.f17204b);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: i0 */
    public SearchNetUserHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new SearchNetUserHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(SearchNetUserHolder searchNetUserHolder, int i9, SearchUserNameOrIdBean searchUserNameOrIdBean) {
        UserHomePageAct.start(this, searchUserNameOrIdBean.getUserId());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(this.f17204b);
        searchUserBean.setCurrPage(i9);
        searchUserBean.setPageSize(20);
        post("tokens/search/findUserByNickNameOrId").u(searchUserBean).M(new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (getIntent() != null) {
            this.f17204b = getIntent().getStringExtra(Contants.PARAMS_KEY1);
        }
        super.onCreate(bundle);
        if (bundle != null) {
            finish();
        } else {
            setTitle(R.string.Network_Finding_Results);
        }
    }
}
