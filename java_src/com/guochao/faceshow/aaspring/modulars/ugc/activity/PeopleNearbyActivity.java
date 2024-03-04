package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.PeopleNearByBean;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserPhotoWhoSaw;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.aaspring.utils.location.LocationConfig;
import com.guochao.faceshow.aaspring.utils.location.LocationHelper;
import com.guochao.faceshow.aaspring.utils.location.LocationService;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.TimeUtil;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class PeopleNearbyActivity extends BaseRecyclerViewActivity<PeopleNearByBean.PeopleNearByUser, BaseViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private double f22294c;

    /* renamed from: d  reason: collision with root package name */
    private double f22295d;

    /* renamed from: e  reason: collision with root package name */
    private MemoryCache f22296e;
    @BindView
    View emptyView;
    @BindView
    View include;

    /* renamed from: k  reason: collision with root package name */
    private MenuItem f22302k;

    /* renamed from: l  reason: collision with root package name */
    WhoSawMeZoomHelper f22303l;
    @BindView
    View layoutLocation;
    @BindView
    SmartRefreshLayout refreshLayout;

    /* renamed from: a  reason: collision with root package name */
    private int f22292a = 2;

    /* renamed from: b  reason: collision with root package name */
    String[] f22293b = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: f  reason: collision with root package name */
    private int f22297f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f22298g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f22299h = 1;

    /* renamed from: i  reason: collision with root package name */
    private int f22300i = 0;

    /* renamed from: j  reason: collision with root package name */
    Handler f22301j = new Handler();

    /* loaded from: classes3.dex */
    public static class PeopleNearByHolder extends BaseViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private UserCenterSexLevel f22304a;

        /* renamed from: b  reason: collision with root package name */
        private UserPhotoWhoSaw f22305b;

        /* renamed from: c  reason: collision with root package name */
        private PeopleNearByBean.PeopleNearByUser f22306c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f22307d;

        /* renamed from: e  reason: collision with root package name */
        private HeadPortraitView f22308e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f22309f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f22310g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f22311h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f22312i;

        /* renamed from: j  reason: collision with root package name */
        private View f22313j;

        /* renamed from: k  reason: collision with root package name */
        private int f22314k;

        /* renamed from: l  reason: collision with root package name */
        private c f22315l;

        /* loaded from: classes3.dex */
        class a implements UserPhotoWhoSaw.a {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.user.view.UserPhotoWhoSaw.a
            public void a(View view, List<String> list, int i9) {
                if (PeopleNearByHolder.this.f22315l != null) {
                    PeopleNearByHolder.this.f22315l.a(PeopleNearByHolder.this.f22305b, view, list, i9);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements hb.b<String> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes3.dex */
            public class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    y7.e.e(PeopleNearByHolder.this.f22306c.getUserId());
                }
            }

            b() {
            }

            @Override // hb.b
            /* renamed from: a */
            public void onResponse(String str) {
                HandlerGetter.getMainHandler().postDelayed(new a(), 480L);
            }

            @Override // hb.b
            public /* synthetic */ void onFail(String str) {
                hb.a.a(this, str);
            }
        }

        /* loaded from: classes3.dex */
        public interface c {
            void a(UserPhotoWhoSaw userPhotoWhoSaw, View view, List<String> list, int i9);
        }

        public PeopleNearByHolder(View view) {
            super(view);
            View view2 = getView(R.id.user_center_age_level);
            this.f22307d = (ImageView) getView(R.id.icon_focus);
            View view3 = getView(R.id.user_saw_photos);
            this.f22304a = new UserCenterSexLevel(view2, false, false);
            this.f22305b = new UserPhotoWhoSaw(view3);
            this.f22308e = (HeadPortraitView) getView(R.id.user_avatar);
            this.f22309f = (TextView) getView(R.id.tv_nick_name);
            this.f22310g = (TextView) getView(R.id.tv_distance);
            this.f22311h = (TextView) getView(R.id.tv_time);
            this.f22312i = (TextView) getView(R.id.tv_signature);
            this.f22313j = getView(R.id.divider_line);
            this.f22305b.setOnClickImageListener(new a());
        }

        public void g(int i9, PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
            this.f22306c = peopleNearByUser;
            this.f22314k = i9;
            peopleNearByUser.setImg(peopleNearByUser.getUserImg());
            this.f22308e.f(peopleNearByUser, true);
            this.f22304a.d(peopleNearByUser);
            this.f22305b.a(WhoSawMeBean.ListBean.Bean.obtainFromImUser(peopleNearByUser));
            this.f22309f.setText(peopleNearByUser.getNickName());
            if (TextUtils.isEmpty(peopleNearByUser.getLength())) {
                this.f22310g.setVisibility(8);
            } else {
                this.f22310g.setVisibility(0);
                this.f22310g.setText(MessageFormat.format("{0}km", peopleNearByUser.getLength()));
            }
            this.f22309f.setText(peopleNearByUser.getNickName());
            if (!TextUtils.isEmpty(peopleNearByUser.getLoginTime())) {
                if (this.itemView.getContext() instanceof FindYouListActivity) {
                    this.f22311h.setText(TimeUtil.getIMTime(this.itemView.getContext(), (com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff() + System.currentTimeMillis()) - Long.parseLong(peopleNearByUser.getLoginTime())));
                } else {
                    this.f22311h.setText(TimeUtil.getTime(this.itemView.getContext(), Long.valueOf(Long.parseLong(peopleNearByUser.getLoginTime()))));
                }
            }
            if (TextUtils.isEmpty(peopleNearByUser.getSignature())) {
                this.f22312i.setText(R.string.user_info_default_signature);
            } else {
                this.f22312i.setVisibility(0);
                this.f22312i.setText(peopleNearByUser.getSignature());
            }
            i(this.f22306c);
        }

        public int h() {
            return this.f22314k;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void i(PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
            if (!b8.e.g().getUserId().equals(peopleNearByUser.getUserId())) {
                this.f22307d.setVisibility(0);
                if (peopleNearByUser.getIsTutual() > 0) {
                    this.f22307d.setImageResource(R.mipmap.ugc_hi);
                    return;
                } else {
                    this.f22307d.setImageResource(R.mipmap.icon_ugc_dynamic_focuson);
                    return;
                }
            }
            this.f22307d.setVisibility(4);
        }

        @OnClick
        public void onViewClicked(View view) {
            if (view.getId() == R.id.icon_focus && DisableDoubleClickUtils.canClick(view, 500L)) {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_NEAR_BY_PEOPLE_CLICK);
                if (this.f22306c.getIsTutual() > 0) {
                    if (b8.e.g().getUserId().equals(this.f22306c.getUserId())) {
                        return;
                    }
                    ChatActivity.navToChat(this.itemView.getContext(), this.f22306c.getUserId(), 1, this.f22306c.getNickName());
                    return;
                }
                this.f22306c.setIsTutual(1);
                ib.b.b(this.f22306c.getUserId(), FriendFromSource.UGC, (Activity) view.getContext(), new b());
            }
        }

        public void setOnPhotoClickListener(c cVar) {
            this.f22315l = cVar;
        }
    }

    /* loaded from: classes3.dex */
    public class PeopleNearByHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private PeopleNearByHolder f22319b;

        /* renamed from: c  reason: collision with root package name */
        private View f22320c;

        /* loaded from: classes3.dex */
        class a extends butterknife.internal.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PeopleNearByHolder f22321a;

            a(PeopleNearByHolder peopleNearByHolder) {
                this.f22321a = peopleNearByHolder;
            }

            @Override // butterknife.internal.b
            public void doClick(View view) {
                this.f22321a.onViewClicked(view);
            }
        }

        @UiThread
        public PeopleNearByHolder_ViewBinding(PeopleNearByHolder peopleNearByHolder, View view) {
            this.f22319b = peopleNearByHolder;
            View c10 = butterknife.internal.c.c(view, R.id.icon_focus, "method 'onViewClicked'");
            this.f22320c = c10;
            c10.setOnClickListener(new a(peopleNearByHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            if (this.f22319b != null) {
                this.f22319b = null;
                this.f22320c.setOnClickListener(null);
                this.f22320c = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            PeopleNearbyActivity.this.notifyDataLoaded(false);
            if (PeopleNearbyActivity.this.getList().size() > 0 || (view = PeopleNearbyActivity.this.emptyView) == null) {
                return;
            }
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<PeopleNearByBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22324a;

        b(int i9) {
            this.f22324a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(PeopleNearByBean peopleNearByBean, @NonNull FaceCastBaseResponse<PeopleNearByBean> faceCastBaseResponse) {
            PeopleNearbyActivity.this.f22301j.removeMessages(0);
            if (peopleNearByBean == null) {
                peopleNearByBean = new PeopleNearByBean();
                peopleNearByBean.setList(new ArrayList<>());
            }
            PeopleNearbyActivity.this.setRightFirstResEnable(true);
            if (this.f22324a == 1) {
                PeopleNearbyActivity.this.clearAll();
                PeopleNearbyActivity.this.notifyDataLoaded(true);
            }
            if (peopleNearByBean.getList().size() > 0) {
                Iterator<PeopleNearByBean.PeopleNearByUser> it = peopleNearByBean.getList().iterator();
                while (it.hasNext()) {
                    PeopleNearByBean.PeopleNearByUser next = it.next();
                    if (!PeopleNearbyActivity.this.getList().contains(next)) {
                        PeopleNearbyActivity.this.addData(next);
                    }
                }
                PeopleNearbyActivity.this.notifyDataLoaded(true);
            } else {
                PeopleNearbyActivity.this.notifyDataLoaded(false);
            }
            if (PeopleNearbyActivity.this.getItemCount() == 0) {
                View view = PeopleNearbyActivity.this.emptyView;
                if (view != null) {
                    view.setVisibility(0);
                    return;
                }
                return;
            }
            View view2 = PeopleNearbyActivity.this.emptyView;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            SmartRefreshLayout smartRefreshLayout = PeopleNearbyActivity.this.refreshLayout;
            if (smartRefreshLayout != null) {
                smartRefreshLayout.setVisibility(0);
                PeopleNearbyActivity.this.include.setVisibility(0);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<PeopleNearByBean> aVar) {
            PeopleNearbyActivity.this.setRightFirstResEnable(true);
            if (PeopleNearbyActivity.this.getItemCount() == 0) {
                View view = PeopleNearbyActivity.this.emptyView;
                if (view != null) {
                    view.setVisibility(0);
                }
            } else {
                View view2 = PeopleNearbyActivity.this.emptyView;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
            }
            PeopleNearbyActivity.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements PeopleNearByHolder.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PeopleNearByHolder f22326a;

        /* loaded from: classes3.dex */
        class a implements WhoSawMeZoomHelper.OnFocusListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.OnFocusListener
            public void onFocus() {
                c cVar = c.this;
                cVar.f22326a.i(PeopleNearbyActivity.this.getList().get(c.this.f22326a.h()));
            }
        }

        c(PeopleNearByHolder peopleNearByHolder) {
            this.f22326a = peopleNearByHolder;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.ugc.activity.PeopleNearbyActivity.PeopleNearByHolder.c
        public void a(UserPhotoWhoSaw userPhotoWhoSaw, View view, List<String> list, int i9) {
            PeopleNearbyActivity peopleNearbyActivity = PeopleNearbyActivity.this;
            if (peopleNearbyActivity.f22303l == null) {
                peopleNearbyActivity.f22303l = new WhoSawMeZoomHelper(peopleNearbyActivity);
            }
            PeopleNearbyActivity peopleNearbyActivity2 = PeopleNearbyActivity.this;
            WhoSawMeZoomHelper whoSawMeZoomHelper = peopleNearbyActivity2.f22303l;
            whoSawMeZoomHelper.bindData(WhoSawMeBean.ListBean.Bean.obtainFromImUser(peopleNearbyActivity2.getList().get(this.f22326a.h())));
            whoSawMeZoomHelper.startZoom(list, view, i9, userPhotoWhoSaw.f23267c);
            whoSawMeZoomHelper.setOnFocusListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements LocationHelper.OnLocationChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22329a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f22330b;

        d(int i9, int i10) {
            this.f22329a = i9;
            this.f22330b = i10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onError(int i9, String str, FcLocation fcLocation) {
            if (fcLocation == null) {
                fcLocation = FcLocation.DEFAULT;
            }
            MemoryCache memoryCache = PeopleNearbyActivity.this.f22296e;
            FcLocation fcLocation2 = FcLocation.DEFAULT;
            memoryCache.put("longitude", fcLocation == fcLocation2 ? "" : String.valueOf(fcLocation.getLongitude()));
            PeopleNearbyActivity.this.f22296e.put("latitude", fcLocation != fcLocation2 ? String.valueOf(fcLocation.getLatitude()) : "");
            PeopleNearbyActivity.this.f22294c = fcLocation.getLatitude();
            PeopleNearbyActivity.this.f22295d = fcLocation.getLongitude();
            PeopleNearbyActivity.this.B0(this.f22329a, this.f22330b);
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onReceiveLocation(FcLocation fcLocation) {
            PeopleNearbyActivity.this.f22296e.put("longitude", fcLocation == null ? "" : String.valueOf(fcLocation.getLongitude()));
            PeopleNearbyActivity.this.f22296e.put("latitude", fcLocation != null ? String.valueOf(fcLocation.getLatitude()) : "");
            if (fcLocation != null) {
                PeopleNearbyActivity.this.f22294c = fcLocation.getLatitude();
                PeopleNearbyActivity.this.f22295d = fcLocation.getLongitude();
            }
            PeopleNearbyActivity.this.B0(this.f22329a, this.f22330b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        this.emptyView.setVisibility(8);
        this.include.setVisibility(0);
        this.refreshLayout.setVisibility(0);
        this.refreshLayout.q();
        setRightFirstResEnable(false);
        B0(this.f22292a, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0(int i9, int i10) {
        this.f22301j.removeMessages(0);
        this.f22301j.postDelayed(new a(), 5000L);
        post("tokens/user/info/findAroundMan/V2").D(Contants.USER_ID, getCurrentUser().getUserId()).D("page", String.valueOf(i10)).D("limit", ThirdPushHelper.TYPE_HUAWEI).D("type", "1").B("page", i10).D("sex", i9 == 2 ? "" : String.valueOf(i9)).D("longitude", Double.doubleToLongBits(this.f22295d) == Double.doubleToLongBits(0.0d) ? String.valueOf(this.f22295d) : "").D("latitude", Double.doubleToLongBits(this.f22294c) == Double.doubleToLongBits(0.0d) ? String.valueOf(this.f22294c) : "").M(new b(i10));
    }

    private void o0(int i9, int i10) {
        if (PerMissionsUtils.lacksPermissions(this, this.f22293b)) {
            this.layoutLocation.setVisibility(8);
            this.refreshLayout.setVisibility(8);
            this.include.setVisibility(8);
            if (SpUtils.getBool(this, BaseConfig.SP_IS_FIRST_NEARBY, false)) {
                this.layoutLocation.setVisibility(0);
                this.refreshLayout.setVisibility(0);
                this.include.setVisibility(0);
                B0(i9, i10);
                return;
            }
            r0();
            return;
        }
        this.layoutLocation.setVisibility(8);
        this.refreshLayout.setVisibility(0);
        this.include.setVisibility(0);
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            q0(i9, i10);
        }
    }

    private void q0(int i9, int i10) {
        LocationConfig locationConfig = new LocationConfig();
        locationConfig.setTimeOut(5);
        LocationService.startRequestLocation(locationConfig, getActivity(), new d(i9, i10));
    }

    private void r0() {
        SpUtils.setBool(this, BaseConfig.SP_IS_FIRST_NEARBY, true);
        new com.tbruyelle.rxpermissions2.a(this).p(this.f22293b).subscribe(new vh.g() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.d
            @Override // vh.g
            public final void accept(Object obj) {
                PeopleNearbyActivity.this.t0((te.a) obj);
            }
        });
    }

    private void s0() {
        SpUtils.setBool(this, BaseConfig.SP_IS_FIRST_NEARBY, true);
        new com.tbruyelle.rxpermissions2.a(this).p(this.f22293b).subscribe(new vh.g() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.c
            @Override // vh.g
            public final void accept(Object obj) {
                PeopleNearbyActivity.this.u0((te.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            this.layoutLocation.setVisibility(8);
            this.refreshLayout.setVisibility(0);
            B0(this.f22292a, 1);
        } else if (aVar.f58134c) {
            this.layoutLocation.setVisibility(0);
            this.refreshLayout.setVisibility(0);
            B0(this.f22292a, 1);
        } else {
            SpUtils.setBool(this, BaseConfig.SP_IS_FIRST_REFUSE, true);
            this.layoutLocation.setVisibility(0);
            this.refreshLayout.setVisibility(0);
            B0(this.f22292a, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            this.layoutLocation.setVisibility(8);
            this.refreshLayout.setVisibility(0);
            B0(this.f22292a, 1);
        } else if (aVar.f58134c) {
            this.layoutLocation.setVisibility(0);
            this.refreshLayout.setVisibility(0);
            B0(this.f22292a, 1);
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied. More info should be provided.");
        } else {
            SpUtils.setBool(this, BaseConfig.SP_IS_FIRST_REFUSE, true);
            this.layoutLocation.setVisibility(0);
            this.refreshLayout.setVisibility(0);
            B0(this.f22292a, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(wd.j jVar) {
        this.f22299h++;
        setRightFirstResEnable(false);
        B0(this.f22292a, this.f22299h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(wd.j jVar) {
        setRightFirstResEnable(false);
        this.f22299h = 1;
        B0(this.f22292a, 1);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: E0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
        UserHomePageAct.start(getActivity(), peopleNearByUser.getUserId());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_people_nearby;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.message_nearByFriends);
        this.f22296e = MemoryCache.getInstance();
        this.refreshLayout.setVisibility(8);
        this.include.setVisibility(8);
        this.layoutLocation.setVisibility(8);
        o0(this.f22292a, this.f22299h);
        this.refreshLayout.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.e
            @Override // zd.b
            public final void b(wd.j jVar) {
                PeopleNearbyActivity.this.v0(jVar);
            }
        });
        this.refreshLayout.T(new zd.d() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.f
            @Override // zd.d
            public final void a(wd.j jVar) {
                PeopleNearbyActivity.this.y0(jVar);
            }
        });
        this.emptyView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeopleNearbyActivity.this.A0(view);
            }
        });
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuItem icon = menu.add(0, R.id.gender, 0, R.string.Gender).setIcon(R.mipmap.icon_ugc_gender_male_female);
        this.f22302k = icon;
        icon.setShowAsAction(2);
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        this.f22301j.removeMessages(0);
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
                    if (findViewHolderForAdapterPosition instanceof PeopleNearByHolder) {
                        PeopleNearByHolder peopleNearByHolder = (PeopleNearByHolder) findViewHolderForAdapterPosition;
                        peopleNearByHolder.i(getList().get(peopleNearByHolder.h()));
                    }
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar.MenuCallback
    public void onMenuClicked(@Nullable MenuItem menuItem, @NonNull View view) {
        super.onMenuClicked(menuItem, view);
        if (menuItem == null || menuItem.getItemId() != R.id.gender) {
            return;
        }
        int i9 = this.f22292a;
        if (i9 == 2) {
            if (getCurrentUser().getGender() == 0) {
                this.f22292a = 1;
                menuItem.setIcon(R.mipmap.icon_ugc_gender_male);
            } else {
                this.f22292a = 0;
                menuItem.setIcon(R.mipmap.icon_ugc_gender_female);
            }
        } else if (i9 == 1) {
            if (this.f22297f == 0) {
                this.f22292a = 0;
                this.f22298g++;
                menuItem.setIcon(R.mipmap.icon_ugc_gender_female);
            } else {
                this.f22292a = 2;
                this.f22297f = 0;
                menuItem.setIcon(R.mipmap.icon_ugc_gender_male_female);
            }
        } else if (this.f22298g == 0) {
            this.f22292a = 1;
            this.f22297f++;
            menuItem.setIcon(R.mipmap.icon_ugc_gender_male);
        } else {
            this.f22292a = 2;
            this.f22298g = 0;
            menuItem.setIcon(R.mipmap.icon_ugc_gender_male_female);
        }
        if (FileUtils.isNetworkConnected(getActivity())) {
            this.f22299h = 1;
            menuItem.setEnabled(false);
            this.refreshLayout.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f22300i != 0) {
            if (PerMissionsUtils.lacksPermissions(this, this.f22293b)) {
                this.layoutLocation.setVisibility(0);
                this.refreshLayout.setVisibility(0);
                this.include.setVisibility(0);
                return;
            }
            this.layoutLocation.setVisibility(8);
            this.refreshLayout.setVisibility(0);
            this.include.setVisibility(0);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.layout_location) {
            return;
        }
        if (SpUtils.getBool(this, BaseConfig.SP_IS_FIRST_REFUSE, false)) {
            this.f22300i = 1;
            PerMissionsUtils.checkPermission(getApplicationContext());
            return;
        }
        s0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: p0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
        if (baseViewHolder instanceof PeopleNearByHolder) {
            PeopleNearByHolder peopleNearByHolder = (PeopleNearByHolder) baseViewHolder;
            peopleNearByHolder.g(i9, peopleNearByUser);
            if (getList() != null && i9 == getList().size() - 1) {
                peopleNearByHolder.f22313j.setVisibility(8);
            } else {
                peopleNearByHolder.f22313j.setVisibility(0);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void setRightFirstResEnable(boolean z10) {
        MenuItem menuItem = this.f22302k;
        if (menuItem != null) {
            menuItem.setEnabled(z10);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        PeopleNearByHolder peopleNearByHolder = new PeopleNearByHolder(getLayoutInflater().inflate(R.layout.list_item_people_nearby, viewGroup, false));
        peopleNearByHolder.setOnPhotoClickListener(new c(peopleNearByHolder));
        return peopleNearByHolder;
    }
}
