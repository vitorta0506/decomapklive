package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.SearchChatRecordResult;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMHistoryHolder;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MoreImHistoryActivity extends BaseIMListActivity<SearchChatRecordResult, SearchIMHistoryHolder> {

    /* renamed from: b  reason: collision with root package name */
    private String f17188b;

    /* loaded from: classes3.dex */
    class a implements d.b<List<SearchChatRecordResult>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable List<SearchChatRecordResult> list) {
            if (list == null) {
                list = new ArrayList<>();
            }
            MoreImHistoryActivity.this.setDatas(list);
            MoreImHistoryActivity.this.notifyDataLoaded();
        }
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, MoreImHistoryActivity.class);
        intent.putExtra(Contants.PARAMS_KEY1, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(SearchIMHistoryHolder searchIMHistoryHolder, int i9, SearchChatRecordResult searchChatRecordResult) {
        searchIMHistoryHolder.c(searchChatRecordResult, i9 == getList().size() - 1, this.f17188b);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: i0 */
    public SearchIMHistoryHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new SearchIMHistoryHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(SearchIMHistoryHolder searchIMHistoryHolder, int i9, SearchChatRecordResult searchChatRecordResult) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        b.l0().I0(this.f17188b, new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (getIntent() != null) {
            this.f17188b = getIntent().getStringExtra(Contants.PARAMS_KEY1);
        }
        super.onCreate(bundle);
        if (bundle != null) {
            finish();
        } else {
            setTitle(R.string.More_Chat_Records);
        }
    }
}
