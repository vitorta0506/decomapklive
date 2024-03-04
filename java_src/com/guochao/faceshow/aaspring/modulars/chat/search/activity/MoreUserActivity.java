package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMUserHolder;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MoreUserActivity extends BaseIMListActivity<ConversationInfo, SearchIMUserHolder> {

    /* renamed from: b  reason: collision with root package name */
    private String f17190b;

    /* loaded from: classes3.dex */
    class a implements d.b<List<ConversationInfo>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable List<ConversationInfo> list) {
            if (list == null) {
                list = new ArrayList<>();
            }
            MoreUserActivity.this.setDatas(list);
            MoreUserActivity.this.notifyDataLoaded();
            MoreUserActivity.this.showEmptyView();
        }
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, MoreUserActivity.class);
        intent.putExtra(Contants.PARAMS_KEY1, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(SearchIMUserHolder searchIMUserHolder, int i9, ConversationInfo conversationInfo) {
        searchIMUserHolder.e(conversationInfo, false, this.f17190b);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: i0 */
    public SearchIMUserHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new SearchIMUserHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(SearchIMUserHolder searchIMUserHolder, int i9, ConversationInfo conversationInfo) {
        Intent intent = new Intent();
        intent.putExtra("identify", conversationInfo.getConversationInfoDetail().getUserId());
        intent.putExtra("name", conversationInfo.getConversationInfoDetail().getNickName());
        intent.putExtra(Contants.USER_ID, conversationInfo.getConversationInfoDetail().getUserId());
        intent.putExtra("type", 1);
        intent.setClass(getActivity(), ChatActivity.class);
        startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        b.l0().L0(this.f17190b, new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (getIntent() != null) {
            this.f17190b = getIntent().getStringExtra(Contants.PARAMS_KEY1);
        }
        super.onCreate(bundle);
        if (bundle != null) {
            finish();
        } else {
            setTitle(R.string.More_contacts);
        }
    }
}
