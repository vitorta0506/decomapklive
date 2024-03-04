package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.SearchChatRecordResult;
import com.guochao.faceshow.aaspring.beans.SearchUserBottom;
import com.guochao.faceshow.aaspring.beans.SearchUserHeader;
import com.guochao.faceshow.aaspring.beans.SearchUserNetHeader;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.activity.SearchUserActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.NetSearchHolder;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMBottomTipHolder;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMFooterHolder;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMHistoryHolder;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMTopTipHolder;
import com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMUserHolder;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchUserActivity extends BaseActivity {
    @BindView
    RecyclerView baseContent;

    /* renamed from: d  reason: collision with root package name */
    private boolean f17209d;
    @BindView
    ImageView deleteEdit;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f17210e;
    @BindView
    EditText searchContent;
    @BindView
    LinearLayout searchTitleLay;

    /* renamed from: a  reason: collision with root package name */
    private List<Object> f17206a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private List<Object> f17207b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private List<Object> f17208c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    RecyclerView.Adapter f17211f = new b();

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (SearchUserActivity.this.searchContent.getText().length() > 0) {
                SearchUserActivity.this.deleteEdit.setVisibility(0);
            } else {
                SearchUserActivity.this.deleteEdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            SearchUserActivity.this.u0(charSequence);
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.Adapter {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SearchUserActivity.this.f17206a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            return SearchUserActivity.this.q0(i9);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            SearchUserActivity.this.t0((BaseViewHolder) viewHolder, i9);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return SearchUserActivity.this.p0(viewGroup, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchUserActivity searchUserActivity = SearchUserActivity.this;
            SearchNetUserActivity.start(searchUserActivity, searchUserActivity.searchContent.getText().toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements SearchIMBottomTipHolder.b {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMBottomTipHolder.b
        public void a(boolean z10) {
            if (z10) {
                SearchUserActivity searchUserActivity = SearchUserActivity.this;
                MoreImHistoryActivity.start(searchUserActivity, searchUserActivity.searchContent.getText().toString().trim());
                return;
            }
            SearchUserActivity searchUserActivity2 = SearchUserActivity.this;
            MoreUserActivity.start(searchUserActivity2, searchUserActivity2.searchContent.getText().toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements SearchIMUserHolder.b {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.search.holder.SearchIMUserHolder.b
        public void a(ConversationInfo conversationInfo) {
            Intent intent = new Intent();
            intent.putExtra("identify", conversationInfo.getConversationInfoDetail().getUserId());
            intent.putExtra("name", conversationInfo.getConversationInfoDetail().getNickName());
            intent.putExtra(Contants.USER_ID, conversationInfo.getConversationInfoDetail().getUserId());
            intent.putExtra("type", 1);
            intent.setClass(SearchUserActivity.this.getActivity(), ChatActivity.class);
            SearchUserActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements d.b<List<ConversationInfo>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f17217a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements d.b<List<SearchChatRecordResult>> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.manager.im.d.b
            /* renamed from: b */
            public void a(@Nullable List<SearchChatRecordResult> list) {
                if (SearchUserActivity.this.isFinishing() || SearchUserActivity.this.isDestroyed()) {
                    return;
                }
                if (list == null) {
                    list = new ArrayList<>();
                }
                SearchUserActivity.this.f17208c.addAll(list);
                if (!list.isEmpty()) {
                    SearchUserHeader searchUserHeader = new SearchUserHeader();
                    searchUserHeader.setUser(false);
                    SearchUserActivity.this.f17206a.add(searchUserHeader);
                    if (list.size() > 3) {
                        SearchUserActivity.this.f17206a.addAll(list.subList(0, 3));
                        SearchUserBottom searchUserBottom = new SearchUserBottom();
                        searchUserBottom.setUser(false);
                        SearchUserActivity.this.f17206a.add(searchUserBottom);
                    } else {
                        SearchUserActivity.this.f17206a.addAll(list);
                    }
                }
                SearchUserActivity.this.f17206a.add(-1);
                RecyclerView recyclerView = SearchUserActivity.this.baseContent;
                if (recyclerView != null && recyclerView.getAdapter() != null) {
                    SearchUserActivity.this.baseContent.getAdapter().notifyDataSetChanged();
                }
                SearchUserActivity.this.f17209d = false;
                String obj = SearchUserActivity.this.searchContent.getText().toString();
                if (SearchUserActivity.this.f17210e == null || obj.equals(SearchUserActivity.this.f17210e.toString())) {
                    return;
                }
                SearchUserActivity.this.u0(obj);
            }
        }

        f(CharSequence charSequence) {
            this.f17217a = charSequence;
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable List<ConversationInfo> list) {
            if (SearchUserActivity.this.isFinishing() || SearchUserActivity.this.isDestroyed()) {
                return;
            }
            if (list == null) {
                list = new ArrayList<>();
            }
            SearchUserActivity.this.f17207b.addAll(list);
            if (!list.isEmpty()) {
                SearchUserHeader searchUserHeader = new SearchUserHeader();
                searchUserHeader.setUser(true);
                SearchUserActivity.this.f17206a.add(searchUserHeader);
                if (list.size() > 3) {
                    SearchUserActivity.this.f17206a.addAll(list.subList(0, 3));
                    SearchUserBottom searchUserBottom = new SearchUserBottom();
                    searchUserBottom.setUser(true);
                    SearchUserActivity.this.f17206a.add(searchUserBottom);
                } else {
                    SearchUserActivity.this.f17206a.addAll(list);
                }
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().I0(this.f17217a.toString(), new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RecyclerView.ViewHolder p0(ViewGroup viewGroup, int i9) {
        if (i9 != -1) {
            switch (i9) {
                case 101:
                    NetSearchHolder netSearchHolder = new NetSearchHolder(viewGroup);
                    netSearchHolder.itemView.setOnClickListener(new c());
                    return netSearchHolder;
                case 102:
                    return new SearchIMTopTipHolder(viewGroup);
                case 103:
                    SearchIMBottomTipHolder searchIMBottomTipHolder = new SearchIMBottomTipHolder(viewGroup);
                    searchIMBottomTipHolder.setOnClickListener(new d());
                    return searchIMBottomTipHolder;
                case 104:
                    SearchIMUserHolder searchIMUserHolder = new SearchIMUserHolder(viewGroup);
                    searchIMUserHolder.setOnItemClickListener(new e());
                    return searchIMUserHolder;
                case 105:
                    return new SearchIMHistoryHolder(viewGroup);
                default:
                    return new SearchIMUserHolder(viewGroup);
            }
        }
        return new SearchIMFooterHolder(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int q0(int i9) {
        if (this.f17206a.get(i9) instanceof SearchUserNetHeader) {
            return 101;
        }
        if (this.f17206a.get(i9) instanceof SearchUserHeader) {
            return 102;
        }
        if (this.f17206a.get(i9) instanceof SearchUserBottom) {
            return 103;
        }
        if (this.f17206a.get(i9) instanceof ConversationInfo) {
            return 104;
        }
        return this.f17206a.get(i9) instanceof SearchChatRecordResult ? 105 : -1;
    }

    private boolean r0(int i9) {
        int size = this.f17208c.size() > 3 ? 3 : this.f17208c.size();
        int size2 = this.f17207b.size() <= 3 ? this.f17207b.size() : 3;
        return size2 == 0 ? i9 == size + 1 : i9 == ((size2 + 1) + size) + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean s0(TextView textView, int i9, KeyEvent keyEvent) {
        if (i9 == 3) {
            hideSoftKeyboard();
            return true;
        }
        return false;
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, SearchUserActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(@NonNull BaseViewHolder baseViewHolder, int i9) {
        switch (baseViewHolder.getItemViewType()) {
            case 101:
                ((NetSearchHolder) baseViewHolder).c(this.searchContent.getText().toString().trim());
                return;
            case 102:
                ((SearchIMTopTipHolder) baseViewHolder).c(((SearchUserHeader) this.f17206a.get(i9)).isUser());
                return;
            case 103:
                ((SearchIMBottomTipHolder) baseViewHolder).e(((SearchUserBottom) this.f17206a.get(i9)).isUser());
                return;
            case 104:
                ((SearchIMUserHolder) baseViewHolder).e((ConversationInfo) this.f17206a.get(i9), i9 == this.f17207b.size() + 1, this.searchContent.getText().toString().trim());
                return;
            case 105:
                ((SearchIMHistoryHolder) baseViewHolder).c((SearchChatRecordResult) this.f17206a.get(i9), r0(i9), this.searchContent.getText().toString().trim());
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(CharSequence charSequence) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        if (this.f17209d) {
            this.f17210e = charSequence;
            return;
        }
        this.f17209d = true;
        this.f17206a.clear();
        this.f17207b.clear();
        this.f17208c.clear();
        if (TextUtils.isEmpty(charSequence) && this.baseContent.getAdapter() != null) {
            this.baseContent.getAdapter().notifyDataSetChanged();
            this.f17209d = false;
            if (this.f17210e != null) {
                String obj = this.searchContent.getText().toString();
                if (obj.equals(this.f17210e.toString()) || TextUtils.isEmpty(obj)) {
                    return;
                }
                u0(this.searchContent.getText());
                return;
            }
            return;
        }
        this.f17206a.add(new SearchUserNetHeader());
        com.guochao.faceshow.aaspring.manager.im.b.l0().L0(charSequence.toString(), new f(charSequence));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(getResources().getColor(17170445)).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_search_user;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setLightStatusBar(true);
        LinearLayout linearLayout = this.searchTitleLay;
        linearLayout.setPadding(linearLayout.getPaddingLeft(), StatusBarHelper.getStatusbarHeight(this) + this.searchTitleLay.getPaddingTop(), this.searchTitleLay.getPaddingRight(), this.searchTitleLay.getPaddingBottom());
        this.baseContent.setOverScrollMode(2);
        this.baseContent.setLayoutManager(new LinearLayoutManager(this));
        this.baseContent.setAdapter(this.f17211f);
        this.searchContent.addTextChangedListener(new a());
        this.searchContent.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: m8.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
                boolean s02;
                s02 = SearchUserActivity.this.s0(textView, i9, keyEvent);
                return s02;
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        RecyclerView recyclerView = this.baseContent;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        this.baseContent.getAdapter().notifyDataSetChanged();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, 0);
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
