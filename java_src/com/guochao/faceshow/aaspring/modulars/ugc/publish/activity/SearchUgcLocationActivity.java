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
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.SearchUgcLocationHolder;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.aaspring.utils.location.LocationHelper;
import com.guochao.faceshow.aaspring.utils.location.LocationService;
import com.guochao.faceshow.bean.UgcPoiBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PushUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchUgcLocationActivity extends BaseRecyclerViewActivity<UgcPoiBean.ListBean, SearchUgcLocationHolder> {

    /* renamed from: a  reason: collision with root package name */
    private UgcPoiBean.ListBean f22969a;

    /* renamed from: b  reason: collision with root package name */
    private int f22970b;

    /* renamed from: c  reason: collision with root package name */
    private String f22971c = "";

    /* renamed from: d  reason: collision with root package name */
    private FcLocation f22972d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22973e;
    @BindView
    EditText mEditTextSearch;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchUgcLocationActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SearchUgcLocationActivity searchUgcLocationActivity = SearchUgcLocationActivity.this;
            searchUgcLocationActivity.y0(1, searchUgcLocationActivity.mEditTextSearch.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextView.OnEditorActionListener {
        c() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if (i9 == 3) {
                SearchUgcLocationActivity.this.hideSoftKeyboard();
                if (SearchUgcLocationActivity.this.f22972d != null) {
                    SearchUgcLocationActivity searchUgcLocationActivity = SearchUgcLocationActivity.this;
                    searchUgcLocationActivity.y0(1, searchUgcLocationActivity.mEditTextSearch.getText().toString());
                } else {
                    SearchUgcLocationActivity searchUgcLocationActivity2 = SearchUgcLocationActivity.this;
                    searchUgcLocationActivity2.u0(1, searchUgcLocationActivity2.mEditTextSearch.getText().toString());
                }
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements LocationHelper.OnLocationChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22977a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22978b;

        d(int i9, String str) {
            this.f22977a = i9;
            this.f22978b = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onError(int i9, String str, FcLocation fcLocation) {
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onReceiveLocation(FcLocation fcLocation) {
            SearchUgcLocationActivity.this.f22972d = fcLocation;
            SearchUgcLocationActivity.this.y0(this.f22977a, this.f22978b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<UgcPoiBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22980a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f22981b;

        e(int i9, String str) {
            this.f22980a = i9;
            this.f22981b = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UgcPoiBean ugcPoiBean, FaceCastBaseResponse<UgcPoiBean> faceCastBaseResponse) {
            if (ugcPoiBean != null && ugcPoiBean.getList() != null && SearchUgcLocationActivity.this.f22971c != null && !SearchUgcLocationActivity.this.f22971c.equals(ugcPoiBean.getPageToken())) {
                List<UgcPoiBean.ListBean> list = ugcPoiBean.getList();
                ArrayList arrayList = new ArrayList();
                if (this.f22980a == 1) {
                    SearchUgcLocationActivity.this.f22971c = "";
                    SearchUgcLocationActivity.this.getList().clear();
                    UgcPoiBean.ListBean listBean = new UgcPoiBean.ListBean();
                    listBean.setVicinity(PushUtils.CHAT_PUSH_TYPE);
                    arrayList.add(listBean);
                }
                if (TextUtils.isEmpty(this.f22981b)) {
                    int i9 = 0;
                    while (i9 < list.size()) {
                        if (SearchUgcLocationActivity.this.f22969a != null && !PushUtils.CHAT_PUSH_TYPE.equals(SearchUgcLocationActivity.this.f22969a.getVicinity()) && TextUtils.isEmpty(SearchUgcLocationActivity.this.f22971c) && i9 == 1 && !arrayList.contains(SearchUgcLocationActivity.this.f22969a)) {
                            arrayList.add(SearchUgcLocationActivity.this.f22969a);
                            SearchUgcLocationActivity searchUgcLocationActivity = SearchUgcLocationActivity.this;
                            searchUgcLocationActivity.f22970b = (searchUgcLocationActivity.getList().size() + arrayList.size()) - 1;
                            i9--;
                        } else if (SearchUgcLocationActivity.this.f22969a == null || !SearchUgcLocationActivity.this.f22969a.getVicinity().equals(list.get(i9).getVicinity()) || !SearchUgcLocationActivity.this.f22969a.getName().equals(list.get(i9).getName())) {
                            arrayList.add(list.get(i9));
                        }
                        i9++;
                    }
                } else {
                    SearchUgcLocationActivity.this.f22970b = 0;
                    arrayList.addAll(list);
                }
                SearchUgcLocationActivity.this.addDatas(arrayList);
                SearchUgcLocationActivity.this.notifyDataLoaded(true);
                SearchUgcLocationActivity.this.f22971c = ugcPoiBean.getPageToken() != null ? ugcPoiBean.getPageToken() : "";
                SearchUgcLocationActivity.this.f22973e = false;
                SearchUgcLocationActivity.this.s0(this.f22981b);
                return;
            }
            onFailure(null);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UgcPoiBean> aVar) {
            SearchUgcLocationActivity.this.f22971c = "";
            SearchUgcLocationActivity.this.getList().clear();
            UgcPoiBean.ListBean listBean = new UgcPoiBean.ListBean();
            listBean.setVicinity(PushUtils.CHAT_PUSH_TYPE);
            SearchUgcLocationActivity.this.getList().add(listBean);
            SearchUgcLocationActivity.this.notifyDataLoaded(false);
            SearchUgcLocationActivity.this.f22973e = false;
        }
    }

    /* loaded from: classes3.dex */
    class f implements LocationHelper.OnLocationChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22983a;

        f(int i9) {
            this.f22983a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onError(int i9, String str, FcLocation fcLocation) {
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onReceiveLocation(FcLocation fcLocation) {
            SearchUgcLocationActivity.this.f22972d = fcLocation;
            SearchUgcLocationActivity searchUgcLocationActivity = SearchUgcLocationActivity.this;
            searchUgcLocationActivity.y0(this.f22983a, searchUgcLocationActivity.mEditTextSearch.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(String str) {
        if (this.mEditTextSearch == null || TextUtils.isEmpty(str) || TextUtils.equals(this.mEditTextSearch.getText().toString().trim(), str.trim())) {
            return;
        }
        setCurrentPage(1);
        y0(1, this.mEditTextSearch.getText().toString().trim());
    }

    private void t0(int i9, String str) {
        LocationService.startRequestLocation(null, getActivity(), new d(i9, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(int i9, String str) {
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            t0(i9, str);
        }
    }

    public static void v0(Activity activity, UgcPoiBean.ListBean listBean, int i9) {
        Intent intent = new Intent(activity, SearchUgcLocationActivity.class);
        MemoryCache.getInstance().put(Contants.PARAMS_KEY1, listBean);
        activity.startActivityForResult(intent, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(int i9, String str) {
        if (this.f22973e) {
            return;
        }
        if (TextUtils.isEmpty(str) && BaseConfig.isChinese()) {
            getList().clear();
            notifyDataLoaded(false);
            return;
        }
        if (i9 == 1) {
            this.f22971c = "";
        }
        if (i9 > 1 && TextUtils.isEmpty(this.f22971c) && !BaseConfig.isChinese()) {
            notifyDataLoaded(false);
            this.f22973e = false;
            return;
        }
        this.f22973e = true;
        PostRequest post = post(Contants.URL_GET_LOCATION_POI);
        e eVar = new e(i9, str);
        if (BaseConfig.isChinese()) {
            post.y("pageNum", Integer.valueOf(i9)).y("keyWord", str).M(eVar);
            return;
        }
        String str2 = this.f22971c;
        post.v("pageToken", str2 != null ? str2 : "").v("keyWord", str).M(eVar);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).e(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_search_ugc_location;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (i9 == 1) {
            UgcPoiBean.ListBean listBean = new UgcPoiBean.ListBean();
            listBean.setVicinity(PushUtils.CHAT_PUSH_TYPE);
            addData(listBean);
            notifyDataLoaded(true);
            hideFooterView();
        }
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            LocationService.startRequestLocation(null, getActivity(), new f(i9));
        } else {
            y0(i9, this.mEditTextSearch.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (getIntent() != null) {
            this.f22969a = (UgcPoiBean.ListBean) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
        }
        super.onCreate(bundle);
        findViewById(R.id.back).setOnClickListener(new a());
        this.mEditTextSearch.addTextChangedListener(new b());
        this.mEditTextSearch.setOnEditorActionListener(new c());
        View findViewById = findViewById(R.id.search_view_id);
        if (findViewById != null) {
            ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).topMargin = DensityUtil.dp2px(16.0f) + StatusBarHelper.getStatusbarHeight(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: p0 */
    public void convertItem(SearchUgcLocationHolder searchUgcLocationHolder, int i9, UgcPoiBean.ListBean listBean) {
        searchUgcLocationHolder.c(listBean, i9 == this.f22970b);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: q0 */
    public SearchUgcLocationHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new SearchUgcLocationHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: r0 */
    public void onItemClick(SearchUgcLocationHolder searchUgcLocationHolder, int i9, UgcPoiBean.ListBean listBean) {
        Intent intent = getIntent();
        MemoryCache.getInstance().put(Contants.PARAMS_KEY1, listBean);
        setResult(-1, intent);
        onBackPressed();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
