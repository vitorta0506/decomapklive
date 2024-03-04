package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.SearchChatRecordResult;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMHistoryHolder;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.utils.DensityUtil;
import io.reactivex.k;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class SearchHistoryListActivity extends BaseIMListActivity<SearchChatRecordResult, SearchIMHistoryHolder> {

    /* renamed from: b  reason: collision with root package name */
    private String f17192b;

    /* renamed from: c  reason: collision with root package name */
    private ConversationInfo f17193c;
    @BindView
    TextView cancel;
    @BindView
    ImageView deleteEdit;
    @BindView
    EditText searchContent;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (SearchHistoryListActivity.this.searchContent.getText().length() > 0) {
                SearchHistoryListActivity.this.deleteEdit.setVisibility(0);
            } else {
                SearchHistoryListActivity.this.deleteEdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            SearchHistoryListActivity.this.n0(charSequence.toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends SimpleObserver<Integer> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            SearchHistoryListActivity.this.setDatas(new ArrayList());
            SearchHistoryListActivity.this.notifyDataLoaded(false);
            SearchHistoryListActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements d.b<List<SearchChatRecordResult>> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable List<SearchChatRecordResult> list) {
            if (list == null) {
                list = new ArrayList<>();
            }
            SearchHistoryListActivity.this.setDatas(list);
            SearchHistoryListActivity.this.notifyDataLoaded(false);
            SearchHistoryListActivity.this.showEmptyView();
        }
    }

    public static void m0(Context context, ConversationInfo conversationInfo) {
        Intent intent = new Intent(context, SearchHistoryListActivity.class);
        MemoryCache.getInstance().put(conversationInfo);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(CharSequence charSequence) {
        if (charSequence != null && charSequence.toString().trim().length() != 0) {
            this.f17192b = charSequence.toString();
            ConversationInfo conversationInfo = this.f17193c;
            if (conversationInfo == null || conversationInfo.getConversationInfoDetail() == null) {
                return;
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().K0(this.f17192b, this.f17193c.getConversationInfoDetail().getUserId(), new c());
            return;
        }
        k.just(1).delay(100L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canLoadMore() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_search_history;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(SearchIMHistoryHolder searchIMHistoryHolder, int i9, SearchChatRecordResult searchChatRecordResult) {
        searchIMHistoryHolder.c(searchChatRecordResult, i9 == getList().size() - 1, this.f17192b);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        findViewById(R.id.search_title_lay).setPadding(DensityUtil.dp2px(16.0f), DensityUtil.dp2px(16.0f) + StatusBarHelper.getStatusbarHeight(this), DensityUtil.dp2px(16.0f), DensityUtil.dp2px(6.0f));
        this.f17193c = (ConversationInfo) MemoryCache.getInstance().clear(ConversationInfo.class);
        this.searchContent.addTextChangedListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    /* renamed from: k0 */
    public SearchIMHistoryHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new SearchIMHistoryHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: l0 */
    public void onItemClick(SearchIMHistoryHolder searchIMHistoryHolder, int i9, SearchChatRecordResult searchChatRecordResult) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        n0(this.searchContent.getText().toString().trim());
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.cancel) {
            onBackPressed();
        } else if (id2 != R.id.delete_edit) {
        } else {
            this.searchContent.setText("");
        }
    }
}
