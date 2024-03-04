package com.guochao.faceshow.mine.view;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class AreaActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    List<CountryData> f25472a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    wa.b f25473b;
    @BindView
    EditText et_search;
    @BindView
    ListView lvCountry;

    /* loaded from: classes4.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            CountryData b10;
            wa.b bVar = AreaActivity.this.f25473b;
            if (bVar == null || (b10 = bVar.b()) == null) {
                return;
            }
            AreaActivity.this.g0(b10.getCountryId(), b10.getCoding(), b10);
        }
    }

    /* loaded from: classes4.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            AreaActivity.this.m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CountryData f25476a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25477b;

        c(CountryData countryData, String str) {
            this.f25476a = countryData;
            this.f25477b = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SpUtils.setStr(AreaActivity.this, Contants.CURRENT_COUNTRY, GsonGetter.getGson().toJson(this.f25476a));
            SpUtils.setStr(AreaActivity.this, Contants.CURRENT_COUNTRY_CODING, this.f25477b);
            SpUtils.setStr(AreaActivity.this, Contants.CURRENT_COUNTRY_FLAG, this.f25476a.getLogo());
            UserBean currentUser = AreaActivity.this.getCurrentUser();
            currentUser.country = this.f25476a.getContent();
            currentUser.countryFlag = TextUtils.isEmpty(this.f25476a.getLogo()) ? "" : this.f25476a.getLogo();
            currentUser.countryId = this.f25476a.getCountryId();
            AreaActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements CountryUtils.CountryCallBack {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
        public void onResponse(@Nullable List<CountryData> list) {
            if (list != null) {
                AreaActivity.this.f25472a.addAll(list);
                AreaActivity.this.i0(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(int i9, String str, CountryData countryData) {
        post(Contants.CHANGE_COUNTRY).D("countryId", String.valueOf(i9)).D(Contants.CURRENT_COUNTRY_CODING, str).M(new c(countryData, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(List<CountryData> list) {
        if (list == null) {
            return;
        }
        String str = SpUtils.getStr(this, Contants.CURRENT_COUNTRY);
        CountryData countryData = null;
        if (str != null && !TextUtils.isEmpty(str)) {
            countryData = l0((CountryData) GsonGetter.getGson().fromJson(str, (Class<Object>) CountryData.class));
        }
        wa.b bVar = new wa.b(this, list, countryData);
        this.f25473b = bVar;
        ListView listView = this.lvCountry;
        if (listView != null) {
            listView.setAdapter((ListAdapter) bVar);
        }
    }

    private void k0() {
        this.f25472a.clear();
        CountryUtils.getCountryData(this, new d());
    }

    private CountryData l0(CountryData countryData) {
        for (int i9 = 0; i9 < this.f25472a.size(); i9++) {
            if (countryData.getCountryId() == this.f25472a.get(i9).getCountryId()) {
                return this.f25472a.get(i9);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        String obj = this.et_search.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            i0(this.f25472a);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < this.f25472a.size(); i9++) {
            if (this.f25472a.get(i9).getContent().toLowerCase().contains(obj.toLowerCase())) {
                arrayList.add(this.f25472a.get(i9));
            }
        }
        i0(arrayList);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_setting_area;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setEndText(getString(R.string.save), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        this.et_search.addTextChangedListener(new b());
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        k0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_region);
    }
}
