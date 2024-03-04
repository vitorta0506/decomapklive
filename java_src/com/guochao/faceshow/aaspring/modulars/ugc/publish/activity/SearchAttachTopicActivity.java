package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.TopicSearchBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.AttachTopicHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.SearchTopicHolder;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchAttachTopicActivity extends BaseRecyclerViewActivity<UgcTopicBean, SearchTopicHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<UgcTopicBean> f22957a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f22958b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22959c;

    /* renamed from: d  reason: collision with root package name */
    private String f22960d;
    @BindView
    RecyclerView hotTopic;
    @BindView
    EditText mEditTextSearch;
    @BindView
    ViewGroup recyclerContent;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SearchAttachTopicActivity.this.s0(editable.toString(), SearchAttachTopicActivity.this.getDefaultPage());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextView.OnEditorActionListener {
        b() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if (i9 == 3) {
                SearchAttachTopicActivity.this.hideSoftKeyboard();
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            SearchAttachTopicActivity.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.Adapter {

        /* loaded from: classes3.dex */
        class a implements AttachTopicHolder.b {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.AttachTopicHolder.b
            public void a(UgcTopicBean ugcTopicBean, int i9) {
                SearchAttachTopicActivity.this.m0(ugcTopicBean);
            }
        }

        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SearchAttachTopicActivity.this.f22957a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
            if (viewHolder instanceof AttachTopicHolder) {
                ((AttachTopicHolder) viewHolder).f((UgcTopicBean) SearchAttachTopicActivity.this.f22957a.get(i9), i9);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
            AttachTopicHolder attachTopicHolder = new AttachTopicHolder(viewGroup, R.drawable.bg_item_topic);
            attachTopicHolder.setOnClickListener(new a());
            return attachTopicHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<TopicSearchBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22966a;

        e(int i9) {
            this.f22966a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(TopicSearchBean topicSearchBean, @NonNull FaceCastBaseResponse<TopicSearchBean> faceCastBaseResponse) {
            SearchAttachTopicActivity.this.f22959c = false;
            if (topicSearchBean != null && topicSearchBean.getTopicList() != null) {
                ArrayList arrayList = new ArrayList();
                if (this.f22966a == SearchAttachTopicActivity.this.getDefaultPage() && topicSearchBean.getIsNew() == 1) {
                    UgcTopicBean ugcTopicBean = new UgcTopicBean();
                    ugcTopicBean.setTopicId("");
                    ugcTopicBean.setTopicName(SearchAttachTopicActivity.this.f22960d);
                    ugcTopicBean.setPartakeTimes(-1);
                    arrayList.add(ugcTopicBean);
                }
                arrayList.addAll(topicSearchBean.getTopicList());
                SearchAttachTopicActivity.this.addDatas(arrayList);
                SearchAttachTopicActivity.this.hotTopic.setVisibility(8);
                SearchAttachTopicActivity.this.notifyDataLoaded(false);
                String trim = SearchAttachTopicActivity.this.mEditTextSearch.getText().toString().trim();
                if (trim.equals(SearchAttachTopicActivity.this.f22960d)) {
                    return;
                }
                SearchAttachTopicActivity searchAttachTopicActivity = SearchAttachTopicActivity.this;
                searchAttachTopicActivity.q0(trim, searchAttachTopicActivity.getDefaultPage());
                return;
            }
            onFailure(null);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<TopicSearchBean> aVar) {
            SearchAttachTopicActivity.this.f22959c = false;
            SearchAttachTopicActivity.this.addDatas(new ArrayList());
            SearchAttachTopicActivity.this.hotTopic.setVisibility(8);
            SearchAttachTopicActivity.this.notifyDataLoaded(false);
            String trim = SearchAttachTopicActivity.this.mEditTextSearch.getText().toString().trim();
            if (trim.equals(SearchAttachTopicActivity.this.f22960d)) {
                return;
            }
            SearchAttachTopicActivity searchAttachTopicActivity = SearchAttachTopicActivity.this;
            searchAttachTopicActivity.q0(trim, searchAttachTopicActivity.getDefaultPage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(UgcTopicBean ugcTopicBean) {
        this.mEditTextSearch.setText(ugcTopicBean.getTopicName());
        Intent intent = getIntent();
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(ugcTopicBean.getTopicName().replaceAll("#", ""));
        intent.putStringArrayListExtra("topics", arrayList);
        setResult(-1, intent);
        onBackPressed();
    }

    private void n0() {
        this.hotTopic.setLayoutManager(ChipsLayoutManager.G(this).b(1).a());
        d dVar = new d();
        this.hotTopic.setAdapter(dVar);
        dVar.notifyDataSetChanged();
        this.hotTopic.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(String str, int i9) {
        if (this.f22959c) {
            return;
        }
        this.f22960d = str;
        this.f22959c = true;
        post("tokens/search/findTopicByName").v("topicName", str).v("currPage", Integer.valueOf(i9)).v("pageSize", 10).M(new e(i9));
    }

    public static void r0(Activity activity, boolean z10, int i9) {
        Intent intent = new Intent(activity, SearchAttachTopicActivity.class);
        intent.putExtra("bottomTopic", z10);
        if (z10) {
            activity.startActivityForResult(intent, i9, ActivityOptionsCompat.makeCustomAnimation(activity, R.anim.enter_up, R.anim.do_nothing).toBundle());
        } else {
            activity.startActivityForResult(intent, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(String str, int i9) {
        if (TextUtils.isEmpty(str)) {
            this.hotTopic.setVisibility(0);
            setDatas(new ArrayList());
            notifyDataLoaded(false);
            return;
        }
        q0(str, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_search_attach_topic;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: l0 */
    public void convertItem(SearchTopicHolder searchTopicHolder, int i9, UgcTopicBean ugcTopicBean) {
        searchTopicHolder.c(ugcTopicBean, i9 == getList().size() - 1);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        s0(this.mEditTextSearch.getText().toString(), i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: o0 */
    public SearchTopicHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new SearchTopicHolder(viewGroup);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.f22958b) {
            overridePendingTransition(R.anim.do_nothing, R.anim.exit_down);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f22958b = getIntent().getBooleanExtra("bottomTopic", false);
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
        setTitle(R.string.ugc_add_topic);
        this.mEditTextSearch.addTextChangedListener(new a());
        this.mEditTextSearch.setOnEditorActionListener(new b());
        ((ViewGroup.MarginLayoutParams) this.recyclerContent.getLayoutParams()).setMarginStart(DensityUtil.dp2px(this, 16.0f));
        n0();
        hideFooterView();
        getRecyclerView().addOnScrollListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: p0 */
    public void onItemClick(SearchTopicHolder searchTopicHolder, int i9, UgcTopicBean ugcTopicBean) {
        m0(ugcTopicBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
