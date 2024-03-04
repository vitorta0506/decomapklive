package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.app.Activity;
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
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
@Route(name = "选择国家地区", path = RouterPath.ROUTER_CHOOSE_COUNTRY_ACTIVITY)
/* loaded from: classes3.dex */
public class AreaSelectActivity extends BaseRecyclerViewActivity<CountryData, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final List<CountryData> f20170a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f20171b;
    @BindView
    EditText et_search;
    @BindView
    FrameLayout in_date;
    @BindView
    ImageView iv_empty;
    @BindView
    View searchLay;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            AreaSelectActivity.this.i0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements CountryUtils.CountryCallBack {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
        public void onResponse(@Nullable List<CountryData> list) {
            if (list != null) {
                AreaSelectActivity.this.f20170a.addAll(list);
                AreaSelectActivity.this.addDatas(list);
            }
            AreaSelectActivity.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        String obj = this.et_search.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            getList().clear();
            addDatas(this.f20170a);
        } else {
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < this.f20170a.size(); i9++) {
                String lowerCase = this.f20170a.get(i9).getContent().toLowerCase();
                String lowerCase2 = this.f20171b != 1 ? this.f20170a.get(i9).getCountryNum().toLowerCase() : "";
                if (TextUtils.isEmpty(lowerCase)) {
                    lowerCase = "";
                }
                String str = TextUtils.isEmpty(lowerCase2) ? "" : lowerCase2;
                if (lowerCase.contains(obj.toLowerCase()) || str.toLowerCase().contains(obj.toLowerCase())) {
                    arrayList.add(this.f20170a.get(i9));
                }
            }
            getList().clear();
            addDatas(arrayList);
        }
        notifyDataLoaded(false);
    }

    private void k0(BaseViewHolder baseViewHolder, CountryData countryData, int i9) {
        String logo = countryData.getLogo();
        String coding = countryData.getCoding();
        String valueOf = String.valueOf(countryData.getCountryNum());
        Intent intent = new Intent();
        intent.putExtra(Contants.CURRENT_COUNTRY_CODING, coding);
        intent.putExtra("logo", logo);
        intent.putExtra("country_num", "" + valueOf);
        intent.putExtra("content", countryData.getContent());
        intent.putExtra("id", countryData.getCountryId());
        setResult(-1, intent);
        finish();
    }

    public static void start(Activity activity, String str, int i9) {
        Intent intent = new Intent(activity, AreaSelectActivity.class);
        intent.putExtra("fromClass", str);
        activity.startActivityForResult(intent, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: e0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, CountryData countryData) {
        hc.a.h((ImageView) baseViewHolder.getView(R.id.ivImg), countryData.getLogo(), R.mipmap.ic_earth);
        ((TextView) baseViewHolder.getView(R.id.tvName)).setText(countryData.getContent());
        TextView textView = (TextView) baseViewHolder.getView(R.id.tvRight);
        if (this.f20171b == 1) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        textView.setText("+" + countryData.getCountryNum());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.slide_out_right);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: g0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, CountryData countryData) {
        k0(baseViewHolder, countryData, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).e(false).d(false).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_select;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(getString(R.string.Choosing_a_country_or_region));
        this.f20171b = getIntent().getIntExtra(BaseConfig.AREA_TYPE, 0);
        this.et_search.addTextChangedListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        CountryUtils.getCountryData(this, new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.country_list_select, viewGroup, false));
    }
}
