package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FriendSettingBean;
import com.guochao.faceshow.aaspring.beans.MultiLanguageBean;
import com.guochao.faceshow.aaspring.beans.PeopleNearByBean;
import com.guochao.faceshow.aaspring.beans.ResidenceBean;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PeopleNearbyActivity;
import com.guochao.faceshow.aaspring.modulars.user.view.UserPhotoWhoSaw;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class FindYouListActivity extends BaseRecyclerViewActivity<PeopleNearByBean.PeopleNearByUser, PeopleNearbyActivity.PeopleNearByHolder> {

    /* renamed from: a  reason: collision with root package name */
    private int f22245a;

    /* renamed from: b  reason: collision with root package name */
    private int f22246b;

    /* renamed from: c  reason: collision with root package name */
    private int f22247c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<MultiLanguageBean> f22248d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<ResidenceBean> f22249e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<FriendSettingBean> f22250f;

    /* renamed from: g  reason: collision with root package name */
    private StringBuilder f22251g;

    /* renamed from: h  reason: collision with root package name */
    private StringBuilder f22252h;

    /* renamed from: i  reason: collision with root package name */
    private StringBuilder f22253i;

    /* renamed from: j  reason: collision with root package name */
    private long f22254j = System.currentTimeMillis();

    /* renamed from: k  reason: collision with root package name */
    WhoSawMeZoomHelper f22255k;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<PeopleNearByBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(PeopleNearByBean peopleNearByBean, @NonNull FaceCastBaseResponse<PeopleNearByBean> faceCastBaseResponse) {
            if (peopleNearByBean != null && peopleNearByBean.getList() != null && peopleNearByBean.getList().size() > 0) {
                FindYouListActivity.this.addDatas(peopleNearByBean.getList());
                ArrayList arrayList = new ArrayList(new LinkedHashSet(FindYouListActivity.this.getList()));
                FindYouListActivity.this.clearAll();
                FindYouListActivity.this.addDatas(arrayList);
                FindYouListActivity.this.notifyDataLoaded(peopleNearByBean.getList().size() > 0);
                FindYouListActivity.this.setFooterView(0);
            } else {
                FindYouListActivity.this.notifyDataLoaded(false);
                FindYouListActivity.this.setFooterView(0);
            }
            if (FindYouListActivity.this.getItemCount() == 0) {
                FindYouListActivity.this.showEmptyView();
                FindYouListActivity.this.findViewById(R.id.empty_text).setVisibility(8);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<PeopleNearByBean> aVar) {
            if (FindYouListActivity.this.getItemCount() == 0) {
                FindYouListActivity.this.showEmptyView();
                FindYouListActivity.this.findViewById(R.id.empty_text).setVisibility(8);
                return;
            }
            FindYouListActivity.this.notifyDataLoaded(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements PeopleNearbyActivity.PeopleNearByHolder.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PeopleNearbyActivity.PeopleNearByHolder f22257a;

        /* loaded from: classes3.dex */
        class a implements WhoSawMeZoomHelper.OnFocusListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.OnFocusListener
            public void onFocus() {
                b bVar = b.this;
                bVar.f22257a.i(FindYouListActivity.this.getList().get(b.this.f22257a.h()));
            }
        }

        b(PeopleNearbyActivity.PeopleNearByHolder peopleNearByHolder) {
            this.f22257a = peopleNearByHolder;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.ugc.activity.PeopleNearbyActivity.PeopleNearByHolder.c
        public void a(UserPhotoWhoSaw userPhotoWhoSaw, View view, List<String> list, int i9) {
            FindYouListActivity findYouListActivity = FindYouListActivity.this;
            if (findYouListActivity.f22255k == null) {
                findYouListActivity.f22255k = new WhoSawMeZoomHelper(findYouListActivity);
            }
            FindYouListActivity findYouListActivity2 = FindYouListActivity.this;
            WhoSawMeZoomHelper whoSawMeZoomHelper = findYouListActivity2.f22255k;
            whoSawMeZoomHelper.bindData(WhoSawMeBean.ListBean.Bean.obtainFromImUser(findYouListActivity2.getList().get(this.f22257a.h())));
            whoSawMeZoomHelper.startZoom(list, view, i9, userPhotoWhoSaw.f23267c);
            whoSawMeZoomHelper.setOnFocusListener(new a());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(PeopleNearbyActivity.PeopleNearByHolder peopleNearByHolder, int i9, PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
        peopleNearByHolder.g(i9, peopleNearByUser);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: d0 */
    public PeopleNearbyActivity.PeopleNearByHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        PeopleNearbyActivity.PeopleNearByHolder peopleNearByHolder = new PeopleNearbyActivity.PeopleNearByHolder(getLayoutInflater().inflate(R.layout.list_item_people_nearby, viewGroup, false));
        peopleNearByHolder.setOnPhotoClickListener(new b(peopleNearByHolder));
        return peopleNearByHolder;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: e0 */
    public void onItemClick(PeopleNearbyActivity.PeopleNearByHolder peopleNearByHolder, int i9, PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
        UserHomePageAct.start(this, peopleNearByUser.getUserId());
        EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_MEET_ME_SEARCH_RESULT_CLICK);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_find_you_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        setTitle(R.string.ugc_find_you);
        Intent intent = getIntent();
        this.f22248d = intent.getParcelableArrayListExtra("languageList");
        this.f22250f = intent.getParcelableArrayListExtra("friendSetting");
        this.f22246b = intent.getIntExtra("minYear", 18);
        this.f22247c = intent.getIntExtra("maxYear", 50);
        this.f22249e = intent.getParcelableArrayListExtra("residence");
        this.f22245a = intent.getIntExtra("sex", 2);
        this.f22251g = new StringBuilder();
        this.f22252h = new StringBuilder();
        this.f22253i = new StringBuilder();
        ArrayList<MultiLanguageBean> arrayList = this.f22248d;
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<MultiLanguageBean> it = this.f22248d.iterator();
            while (it.hasNext()) {
                StringBuilder sb2 = this.f22252h;
                sb2.append(it.next().getId());
                sb2.append(",");
            }
        }
        ArrayList<ResidenceBean> arrayList2 = this.f22249e;
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator<ResidenceBean> it2 = this.f22249e.iterator();
            while (it2.hasNext()) {
                StringBuilder sb3 = this.f22251g;
                sb3.append(it2.next().getCountry_id());
                sb3.append(",");
            }
        }
        ArrayList<FriendSettingBean> arrayList3 = this.f22250f;
        if (arrayList3 != null && arrayList3.size() > 0) {
            Iterator<FriendSettingBean> it3 = this.f22250f.iterator();
            while (it3.hasNext()) {
                StringBuilder sb4 = this.f22253i;
                sb4.append(it3.next().getTagId());
                sb4.append(",");
            }
        }
        View emptyView = getEmptyView();
        if (emptyView instanceof LinearLayout) {
            ((LinearLayout) emptyView).setGravity(49);
        }
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, ScreenTools.dip2px(150.0f), 0, 0);
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        PostRequest D = post("tokens/user/info/findAroundMan").D(Contants.USER_ID, getCurrentUser().getUserId()).D("page", String.valueOf(i9)).D("limit", ThirdPushHelper.TYPE_HUAWEI).D("type", "2");
        int i10 = this.f22245a;
        PostRequest D2 = D.D("sex", i10 == 2 ? "" : String.valueOf(i10)).D("statAge", String.valueOf(this.f22246b));
        int i11 = this.f22247c;
        PostRequest D3 = D2.D("endAge", i11 > 50 ? "" : String.valueOf(i11)).D("nowAddress", this.f22251g.length() > 0 ? this.f22251g.toString().substring(0, this.f22251g.length() - 1) : "").D("languageIds", this.f22252h.length() > 0 ? this.f22252h.toString().substring(0, this.f22252h.length() - 1) : "");
        String substring = this.f22253i.length() > 0 ? this.f22253i.toString().substring(0, this.f22253i.length() - 1) : "";
        D3.D("makeFriendIds", substring).D("baseLineTime", (com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff() + this.f22254j) + "").M(new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFocusEvent(y7.e eVar) {
        if (TextUtils.isEmpty(eVar.a())) {
            return;
        }
        for (int i9 = 0; i9 < getList().size(); i9++) {
            if (eVar.a().equalsIgnoreCase(getList().get(i9).getUserId())) {
                getList().get(i9).setIsTutual(eVar.c() ? 1 : 0);
                if (getRecyclerView() != null && getRecyclerView().getAdapter() != null) {
                    RecyclerView.ViewHolder findViewHolderForAdapterPosition = getRecyclerView().findViewHolderForAdapterPosition(i9);
                    if (findViewHolderForAdapterPosition instanceof PeopleNearbyActivity.PeopleNearByHolder) {
                        PeopleNearbyActivity.PeopleNearByHolder peopleNearByHolder = (PeopleNearbyActivity.PeopleNearByHolder) findViewHolderForAdapterPosition;
                        peopleNearByHolder.i(getList().get(peopleNearByHolder.h()));
                    }
                }
            }
        }
    }
}
