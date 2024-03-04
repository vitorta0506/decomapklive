package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.MultiLanguageBean;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.BaseConfig;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Route(name = "选择掌握语言", path = RouterPath.ROUTER_CHOOSE_LANGUAGE_ACTIVITY)
/* loaded from: classes3.dex */
public class ChooseLanguageActivity extends BaseRecyclerViewActivity<MultiLanguageBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<MultiLanguageBean> f22119a;

    /* renamed from: b  reason: collision with root package name */
    private List<MultiLanguageBean> f22120b;

    /* renamed from: c  reason: collision with root package name */
    private List<MultiLanguageBean> f22121c;

    /* renamed from: d  reason: collision with root package name */
    private List<MultiLanguageBean> f22122d;
    @BindView
    ImageView deleteEdit;

    /* renamed from: e  reason: collision with root package name */
    private List<MultiLanguageBean> f22123e;
    @BindView
    View emptyView;
    @BindView
    FrameLayout recyclerContentArea;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    EditText searchContent;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            ChooseLanguageActivity.this.m0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                ChooseLanguageActivity.this.deleteEdit.setVisibility(0);
            } else {
                ChooseLanguageActivity.this.deleteEdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            ChooseLanguageActivity.this.k0();
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            ChooseLanguageActivity.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChooseLanguageActivity.this.loadData(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<List<MultiLanguageBean>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<MultiLanguageBean>> aVar) {
            if (ChooseLanguageActivity.this.getItemCount() == 0) {
                ChooseLanguageActivity.this.showEmptyView();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<MultiLanguageBean> list, @NonNull FaceCastBaseResponse<List<MultiLanguageBean>> faceCastBaseResponse) {
            if (list == null) {
                onFailure(new g7.a<>());
                return;
            }
            ChooseLanguageActivity.this.f22119a.clear();
            ChooseLanguageActivity.this.f22119a.addAll(list);
            if (ChooseLanguageActivity.this.f22120b != null && ChooseLanguageActivity.this.f22120b.size() > 0) {
                for (MultiLanguageBean multiLanguageBean : ChooseLanguageActivity.this.f22119a) {
                    for (MultiLanguageBean multiLanguageBean2 : ChooseLanguageActivity.this.f22120b) {
                        if (multiLanguageBean2.getId().equals(multiLanguageBean.getId().trim())) {
                            multiLanguageBean.setCheck(true);
                        }
                    }
                }
            }
            ChooseLanguageActivity chooseLanguageActivity = ChooseLanguageActivity.this;
            chooseLanguageActivity.addDatas(chooseLanguageActivity.f22119a);
            ChooseLanguageActivity.this.notifyDataLoaded(true);
        }
    }

    private void l0() {
        for (MultiLanguageBean multiLanguageBean : this.f22119a) {
            multiLanguageBean.isCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        if (this.f22121c == null) {
            this.f22121c = new ArrayList();
        }
        for (MultiLanguageBean multiLanguageBean : this.f22119a) {
            if (multiLanguageBean.isCheck()) {
                this.f22121c.add(multiLanguageBean);
            }
        }
        Intent intent = new Intent();
        intent.putParcelableArrayListExtra(BaseConfig.RESUlT_FIND_LANGUAGE, (ArrayList) this.f22121c);
        setResult(1003, intent);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, MultiLanguageBean multiLanguageBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_selector);
        ((ImageView) baseViewHolder.getView(R.id.iv_residence)).setVisibility(8);
        ((TextView) baseViewHolder.getView(R.id.tv_address)).setText(multiLanguageBean.getLanguage());
        if (multiLanguageBean.isCheck()) {
            imageView.setImageResource(R.mipmap.selector_selected);
        } else {
            imageView.setImageResource(R.mipmap.selector_notselected);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).e(false).d(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_choose_residence;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: i0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, MultiLanguageBean multiLanguageBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_selector);
        ((TextView) baseViewHolder.getView(R.id.tv_address)).setText(multiLanguageBean.getLanguage());
        if (multiLanguageBean.isCheck()) {
            imageView.setImageResource(R.mipmap.selector_notselected);
            multiLanguageBean.setCheck(false);
        } else {
            imageView.setImageResource(R.mipmap.selector_selected);
            multiLanguageBean.setCheck(true);
        }
        l0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.ugc_select_language);
        this.f22120b = getIntent().getParcelableArrayListExtra(BaseConfig.RESUlT_FIND_LANGUAGE);
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        this.searchContent.addTextChangedListener(new b());
        getRecyclerView().addOnScrollListener(new c());
        this.emptyView.setOnClickListener(new d());
    }

    public void k0() {
        if (this.f22122d == null) {
            this.f22122d = new ArrayList();
        }
        for (MultiLanguageBean multiLanguageBean : getList()) {
            if (multiLanguageBean.isCheck()) {
                this.f22122d.add(multiLanguageBean);
            }
        }
        String obj = this.searchContent.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            if (this.f22122d.size() == 0) {
                getList().clear();
                addDatas(this.f22119a);
            } else {
                for (MultiLanguageBean multiLanguageBean2 : this.f22119a) {
                    for (MultiLanguageBean multiLanguageBean3 : this.f22122d) {
                        if (multiLanguageBean3.getId().equals(multiLanguageBean2.getId())) {
                            multiLanguageBean2.setCheck(multiLanguageBean3.isCheck());
                        }
                    }
                }
                getList().clear();
                addDatas(this.f22119a);
            }
        } else {
            if (this.f22123e == null) {
                this.f22123e = new ArrayList();
            }
            this.f22123e.clear();
            Iterator<MultiLanguageBean> it = this.f22119a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MultiLanguageBean next = it.next();
                String lowerCase = next.getLanguage().toLowerCase();
                if ((TextUtils.isEmpty(lowerCase) ? "" : lowerCase).startsWith(obj.toLowerCase())) {
                    this.f22123e.add(next);
                }
            }
            for (MultiLanguageBean multiLanguageBean4 : this.f22119a) {
                String lowerCase2 = multiLanguageBean4.getLanguage().toLowerCase();
                if (TextUtils.isEmpty(lowerCase2)) {
                    lowerCase2 = "";
                }
                if (lowerCase2.contains(obj.toLowerCase()) && !this.f22123e.contains(multiLanguageBean4)) {
                    this.f22123e.add(multiLanguageBean4);
                }
            }
            getList().clear();
            addDatas(this.f22123e);
        }
        notifyDataLoaded();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (this.f22119a == null) {
            this.f22119a = new ArrayList();
        }
        if (FileUtils.isNetworkConnected(this)) {
            this.emptyView.setVisibility(8);
            post("api/Country/findLanguageByTrans").M(new e());
            return;
        }
        this.emptyView.setVisibility(0);
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.delete_edit) {
            return;
        }
        this.searchContent.setText("");
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_find_you_search, viewGroup, false));
    }
}
