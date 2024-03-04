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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FriendSettingBean;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.BaseConfig;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class ChooseFriendSettingActivity extends BaseRecyclerViewActivity<FriendSettingBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<FriendSettingBean> f22108a;

    /* renamed from: b  reason: collision with root package name */
    private List<FriendSettingBean> f22109b;

    /* renamed from: c  reason: collision with root package name */
    private List<FriendSettingBean> f22110c;

    /* renamed from: d  reason: collision with root package name */
    private List<FriendSettingBean> f22111d;
    @BindView
    ImageView deleteEdit;

    /* renamed from: e  reason: collision with root package name */
    private List<FriendSettingBean> f22112e;
    @BindView
    View emptyView;
    @BindView
    FrameLayout recyclerContentArea;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    RelativeLayout rlSearch;
    @BindView
    EditText searchContent;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            ChooseFriendSettingActivity.this.m0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                ChooseFriendSettingActivity.this.deleteEdit.setVisibility(0);
            } else {
                ChooseFriendSettingActivity.this.deleteEdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            ChooseFriendSettingActivity.this.k0();
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            ChooseFriendSettingActivity.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChooseFriendSettingActivity.this.loadData(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<List<FriendSettingBean>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<FriendSettingBean>> aVar) {
            if (ChooseFriendSettingActivity.this.getItemCount() == 0) {
                ChooseFriendSettingActivity.this.showEmptyView();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<FriendSettingBean> list, @NonNull FaceCastBaseResponse<List<FriendSettingBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            ChooseFriendSettingActivity.this.f22108a.addAll(list);
            if (ChooseFriendSettingActivity.this.f22109b != null && ChooseFriendSettingActivity.this.f22109b.size() > 0) {
                for (FriendSettingBean friendSettingBean : ChooseFriendSettingActivity.this.f22108a) {
                    for (FriendSettingBean friendSettingBean2 : ChooseFriendSettingActivity.this.f22109b) {
                        if (friendSettingBean2.getTagId() == friendSettingBean.getTagId()) {
                            friendSettingBean.setCheck(true);
                        }
                    }
                }
            }
            ChooseFriendSettingActivity chooseFriendSettingActivity = ChooseFriendSettingActivity.this;
            chooseFriendSettingActivity.addDatas(chooseFriendSettingActivity.f22108a);
            ChooseFriendSettingActivity.this.notifyDataLoaded(true);
        }
    }

    private void l0() {
        for (FriendSettingBean friendSettingBean : this.f22108a) {
            friendSettingBean.isCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        if (this.f22110c == null) {
            this.f22110c = new ArrayList();
        }
        for (FriendSettingBean friendSettingBean : this.f22108a) {
            if (friendSettingBean.isCheck()) {
                this.f22110c.add(friendSettingBean);
            }
        }
        Intent intent = new Intent();
        intent.putParcelableArrayListExtra(BaseConfig.RESUlT_FIND_FRIEND_SETTING, (ArrayList) this.f22110c);
        setResult(1007, intent);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, FriendSettingBean friendSettingBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_selector);
        ((ImageView) baseViewHolder.getView(R.id.iv_residence)).setVisibility(8);
        ((TextView) baseViewHolder.getView(R.id.tv_address)).setText(friendSettingBean.getTname());
        if (friendSettingBean.isCheck()) {
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
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, FriendSettingBean friendSettingBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_selector);
        ((TextView) baseViewHolder.getView(R.id.tv_address)).setText(friendSettingBean.getTname());
        if (friendSettingBean.isCheck()) {
            imageView.setImageResource(R.mipmap.selector_notselected);
            friendSettingBean.setCheck(false);
        } else {
            imageView.setImageResource(R.mipmap.selector_selected);
            friendSettingBean.setCheck(true);
        }
        l0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.friend_setting_state);
        this.rlSearch.setVisibility(8);
        this.f22109b = getIntent().getParcelableArrayListExtra(BaseConfig.RESUlT_FIND_FRIEND_SETTING);
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
        if (this.f22111d == null) {
            this.f22111d = new ArrayList();
        }
        for (FriendSettingBean friendSettingBean : getList()) {
            if (friendSettingBean.isCheck()) {
                this.f22111d.add(friendSettingBean);
            }
        }
        String obj = this.searchContent.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            if (this.f22111d.size() == 0) {
                getList().clear();
                addDatas(this.f22108a);
            } else {
                for (FriendSettingBean friendSettingBean2 : this.f22108a) {
                    for (FriendSettingBean friendSettingBean3 : this.f22111d) {
                        if (friendSettingBean3.getTname().equals(friendSettingBean2.getTname())) {
                            friendSettingBean2.setCheck(friendSettingBean3.isCheck());
                        }
                    }
                }
                getList().clear();
                addDatas(this.f22108a);
            }
        } else {
            if (this.f22112e == null) {
                this.f22112e = new ArrayList();
            }
            this.f22112e.clear();
            Iterator<FriendSettingBean> it = this.f22108a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                FriendSettingBean next = it.next();
                String lowerCase = next.getTname().toLowerCase();
                if ((TextUtils.isEmpty(lowerCase) ? "" : lowerCase).startsWith(obj.toLowerCase())) {
                    this.f22112e.add(next);
                }
            }
            for (FriendSettingBean friendSettingBean4 : this.f22108a) {
                String lowerCase2 = friendSettingBean4.getTname().toLowerCase();
                if (TextUtils.isEmpty(lowerCase2)) {
                    lowerCase2 = "";
                }
                if (lowerCase2.contains(obj.toLowerCase()) && !this.f22112e.contains(friendSettingBean4)) {
                    this.f22112e.add(friendSettingBean4);
                }
            }
            getList().clear();
            addDatas(this.f22112e);
        }
        notifyDataLoaded();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (this.f22108a == null) {
            this.f22108a = new ArrayList();
        }
        if (FileUtils.isNetworkConnected(this)) {
            this.emptyView.setVisibility(8);
            post("tokens/make/friend/findByUserId").M(new e());
            return;
        }
        this.emptyView.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_find_you_search, viewGroup, false));
    }
}
