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
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ResidenceBean;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.BaseConfig;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class ChooseResidenceActivity extends BaseRecyclerViewActivity<ResidenceBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<ResidenceBean> f22133a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<ResidenceBean> f22134b;

    /* renamed from: c  reason: collision with root package name */
    private List<ResidenceBean> f22135c;

    /* renamed from: d  reason: collision with root package name */
    private List<ResidenceBean> f22136d;
    @BindView
    ImageView deleteEdit;

    /* renamed from: e  reason: collision with root package name */
    private List<ResidenceBean> f22137e;
    @BindView
    FrameLayout recyclerContentArea;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    EditText searchContent;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            ChooseResidenceActivity.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                ChooseResidenceActivity.this.deleteEdit.setVisibility(0);
            } else {
                ChooseResidenceActivity.this.deleteEdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            ChooseResidenceActivity.this.l0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements CountryUtils.CountryCallBack {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
        public void onResponse(@Nullable List<CountryData> list) {
            if (list == null) {
                list = new ArrayList<>();
            }
            for (CountryData countryData : list) {
                ResidenceBean residenceBean = new ResidenceBean();
                residenceBean.setCname(countryData.getContent());
                residenceBean.setCountry_id(countryData.getCountryId());
                residenceBean.setCountry_num(countryData.getCountryNum());
                residenceBean.setLogo(countryData.getLogo());
                ChooseResidenceActivity.this.f22133a.add(residenceBean);
            }
            if (ChooseResidenceActivity.this.f22133a.size() > 0) {
                for (ResidenceBean residenceBean2 : ChooseResidenceActivity.this.f22133a) {
                    if (ChooseResidenceActivity.this.f22134b != null && !ChooseResidenceActivity.this.f22134b.isEmpty()) {
                        Iterator it = ChooseResidenceActivity.this.f22134b.iterator();
                        while (it.hasNext()) {
                            if (((ResidenceBean) it.next()).getCountry_id() == residenceBean2.getCountry_id()) {
                                residenceBean2.setCheck(true);
                            }
                        }
                    }
                }
            }
            if (ChooseResidenceActivity.this.f22133a.size() > 0) {
                ChooseResidenceActivity chooseResidenceActivity = ChooseResidenceActivity.this;
                chooseResidenceActivity.addDatas(chooseResidenceActivity.f22133a);
                ChooseResidenceActivity.this.notifyDataLoaded(false);
                return;
            }
            ChooseResidenceActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(View view) {
        n0();
    }

    private void m0() {
        for (ResidenceBean residenceBean : this.f22133a) {
            residenceBean.isCheck();
        }
    }

    private void n0() {
        if (this.f22135c == null) {
            this.f22135c = new ArrayList();
        }
        for (ResidenceBean residenceBean : this.f22133a) {
            if (residenceBean.isCheck()) {
                this.f22135c.add(residenceBean);
            }
        }
        Intent intent = new Intent();
        intent.putParcelableArrayListExtra(BaseConfig.RESUlT_FIND_RESIDENCE, (ArrayList) this.f22135c);
        setResult(1004, intent);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, ResidenceBean residenceBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_selector);
        hc.a.j((ImageView) baseViewHolder.getView(R.id.iv_residence), residenceBean.getLogo());
        ((TextView) baseViewHolder.getView(R.id.tv_address)).setText(residenceBean.getCname());
        if (residenceBean.isCheck()) {
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

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.ugc_select_residence);
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new v.e() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.a
                @Override // com.guochao.faceshow.aaspring.views.v.e
                public final void onClick(View view) {
                    ChooseResidenceActivity.this.i0(view);
                }
            });
        }
        this.f22134b = getIntent().getParcelableArrayListExtra(BaseConfig.RESUlT_FIND_RESIDENCE);
        getRecyclerView().addOnScrollListener(new a());
        this.searchContent.addTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, ResidenceBean residenceBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_selector);
        if (residenceBean.isCheck()) {
            imageView.setImageResource(R.mipmap.selector_notselected);
            residenceBean.setCheck(false);
        } else {
            imageView.setImageResource(R.mipmap.selector_selected);
            residenceBean.setCheck(true);
        }
        m0();
    }

    public void l0() {
        if (this.f22136d == null) {
            this.f22136d = new ArrayList();
        }
        for (ResidenceBean residenceBean : getList()) {
            if (residenceBean.isCheck()) {
                this.f22136d.add(residenceBean);
            }
        }
        String obj = this.searchContent.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            if (this.f22136d.size() == 0) {
                getList().clear();
                addDatas(this.f22133a);
            } else {
                for (ResidenceBean residenceBean2 : this.f22133a) {
                    for (ResidenceBean residenceBean3 : this.f22136d) {
                        if (residenceBean3.getCname().equals(residenceBean2.getCname())) {
                            residenceBean2.setCheck(residenceBean3.isCheck());
                        }
                    }
                }
                getList().clear();
                addDatas(this.f22133a);
            }
        } else {
            if (this.f22137e == null) {
                this.f22137e = new ArrayList();
            }
            this.f22137e.clear();
            Iterator<ResidenceBean> it = this.f22133a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ResidenceBean next = it.next();
                String lowerCase = next.getCname().toLowerCase();
                if ((TextUtils.isEmpty(lowerCase) ? "" : lowerCase).startsWith(obj.toLowerCase())) {
                    this.f22137e.add(next);
                }
            }
            for (ResidenceBean residenceBean4 : this.f22133a) {
                String lowerCase2 = residenceBean4.getCname().toLowerCase();
                if (TextUtils.isEmpty(lowerCase2)) {
                    lowerCase2 = "";
                }
                if (lowerCase2.contains(obj.toLowerCase()) && !this.f22137e.contains(residenceBean4)) {
                    this.f22137e.add(residenceBean4);
                }
            }
            getList().clear();
            addDatas(this.f22137e);
        }
        notifyDataLoaded();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        CountryUtils.getCountryData(this, new c());
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
