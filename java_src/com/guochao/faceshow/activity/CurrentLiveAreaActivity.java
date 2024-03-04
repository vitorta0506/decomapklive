package com.guochao.faceshow.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.AAComAdapter;
import com.guochao.faceshow.utils.AAViewHolder;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes3.dex */
public class CurrentLiveAreaActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    List<CountryData> f24508a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private AAComAdapter<CountryData> f24509b;

    /* renamed from: c  reason: collision with root package name */
    private CountryData f24510c;

    /* renamed from: d  reason: collision with root package name */
    private String f24511d;

    /* renamed from: e  reason: collision with root package name */
    private int f24512e;
    @BindView
    EditText et_search;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f24513f;
    @BindView
    ListView lvCountry;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (CurrentLiveAreaActivity.this.f24510c == null) {
                CurrentLiveAreaActivity currentLiveAreaActivity = CurrentLiveAreaActivity.this;
                ToastUtils.showToast(currentLiveAreaActivity, currentLiveAreaActivity.getString(R.string.choose_country));
            } else if (CurrentLiveAreaActivity.this.f24512e == 12) {
                Intent intent = new Intent();
                intent.putExtra("currentCountry", CurrentLiveAreaActivity.this.f24510c);
                CurrentLiveAreaActivity.this.setResult(54, intent);
                CurrentLiveAreaActivity.this.finish();
            } else {
                CurrentLiveAreaActivity.this.p0();
            }
        }
    }

    /* loaded from: classes3.dex */
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
            CurrentLiveAreaActivity.this.o0();
        }
    }

    /* loaded from: classes3.dex */
    class c extends AAComAdapter<CountryData> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f24517a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CountryData f24518b;

            a(ImageView imageView, CountryData countryData) {
                this.f24517a = imageView;
                this.f24518b = countryData;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f24517a.getVisibility() == 0) {
                    return;
                }
                CurrentLiveAreaActivity.this.f24510c = this.f24518b;
                CurrentLiveAreaActivity.this.f24511d = this.f24518b.getContent();
                CurrentLiveAreaActivity.this.f24513f = this.f24517a;
                c.this.notifyDataSetChanged();
            }
        }

        c(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.utils.AAComAdapter
        /* renamed from: a */
        public void convert(AAViewHolder aAViewHolder, CountryData countryData) {
            hc.a.l(countryData.getLogo(), aAViewHolder.getImage(R.id.ivImg), R.mipmap.ic_earth, CurrentLiveAreaActivity.this);
            aAViewHolder.setText(R.id.tvName, "" + countryData.getContent());
            View view = aAViewHolder.getView(R.id.rlItemLayout);
            ImageView imageView = (ImageView) aAViewHolder.getView(R.id.checkbox);
            if (countryData.getContent().equals(CurrentLiveAreaActivity.this.f24511d)) {
                imageView.setVisibility(0);
                CurrentLiveAreaActivity.this.f24510c = countryData;
                CurrentLiveAreaActivity.this.f24513f = imageView;
            } else {
                imageView.setVisibility(8);
            }
            view.setOnClickListener(new a(imageView, countryData));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements CountryUtils.CountryCallBack {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
        public void onResponse(@Nullable List<CountryData> list) {
            if (list != null) {
                CurrentLiveAreaActivity.this.f24508a.addAll(list);
            }
            CurrentLiveAreaActivity.this.f24509b.resetData(CurrentLiveAreaActivity.this.f24508a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            Intent intent = new Intent();
            intent.putExtra("currentCountry", CurrentLiveAreaActivity.this.f24510c);
            CurrentLiveAreaActivity.this.setResult(54, intent);
            CurrentLiveAreaActivity.this.finish();
        }
    }

    private void n0() {
        this.f24508a.clear();
        CountryUtils.getCountryData(this, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        String obj = this.et_search.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            this.f24509b.resetData(this.f24508a);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < this.f24508a.size(); i9++) {
            if (this.f24508a.get(i9).getContent().toLowerCase().contains(obj.toLowerCase())) {
                arrayList.add(this.f24508a.get(i9));
            }
        }
        this.f24509b.resetData(arrayList);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_setting_area_live;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f24511d = getIntent().getStringExtra("nowAddress");
        c cVar = new c(this, R.layout.country_list_curr_item_country);
        this.f24509b = cVar;
        this.lvCountry.setAdapter((ListAdapter) cVar);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        n0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f24512e = getIntent().getIntExtra("from", 0);
        super.onCreate(bundle);
        setTitle(R.string.place_of_residence);
        setEndText(getString(R.string.save), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        this.et_search.addTextChangedListener(new b());
        this.mTitleBarHelper.f();
    }

    public void p0() {
        post(Contants.updateNowAdress).B(UserDataStore.COUNTRY, this.f24510c.getCountryId()).D(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID)).M(new e());
    }
}
