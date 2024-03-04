package com.guochao.faceshow.aaspring.modulars.live.area;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 <2\u00020\u0001:\u0001<B\u0007¢\u0006\u0004\b:\u0010;J2\u0010\f\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\u0016\u0010\u0011\u001a\u00020\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0014\u001a\u00020\tH\u0016J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\b\u0010\u0016\u001a\u00020\u000bH\u0016J\b\u0010\u0017\u001a\u00020\u000bH\u0014J\b\u0010\u0018\u001a\u00020\u000bH\u0016R\u001b\u0010\u001e\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R$\u0010$\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R6\u00104\u001a\u0016\u0012\u0004\u0012\u000202\u0018\u000101j\n\u0012\u0004\u0012\u000202\u0018\u0001`38\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006="}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "Landroid/view/ViewGroup;", "contentLay", "", "name", "", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "contentData", "", "areaRes", "", "setContentLay", "loadNetData", "", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;", "data", "showEmptyView", "Lcom/guochao/faceshow/aaspring/base/activity/a;", "getActivityConfig", "getLayoutId", "initView", "loadData", "onResume", "finish", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView$delegate", "Lkotlin/Lazy;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "list", "Ljava/util/List;", "getList", "()Ljava/util/List;", "Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;", "refreshLay", "Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;", "getRefreshLay", "()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;", "setRefreshLay", "(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V", "Landroid/view/View;", "emptyView", "Landroid/view/View;", "getEmptyView", "()Landroid/view/View;", "setEmptyView", "(Landroid/view/View;)V", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;", "Lkotlin/collections/ArrayList;", "dataList", "Ljava/util/ArrayList;", "getDataList", "()Ljava/util/ArrayList;", "setDataList", "(Ljava/util/ArrayList;)V", "<init>", "()V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LiveAreaMoreActivity extends BaseActivity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private ArrayList<LiveRoomPageData.LiveCountry> dataList;
    @Nullable
    private View emptyView;
    @NotNull
    private final List<CountryStateBean> list;
    @NotNull
    private final Lazy recyclerView$delegate;
    @Nullable
    private SmartRefreshLayout refreshLay;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "dataList", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;", "Lkotlin/collections/ArrayList;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void start(@NotNull Context context, @NotNull ArrayList<LiveRoomPageData.LiveCountry> dataList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dataList, "dataList");
            Intent intent = new Intent(context, LiveAreaMoreActivity.class);
            intent.putParcelableArrayListExtra("dataList", dataList);
            context.startActivity(intent);
        }
    }

    public LiveAreaMoreActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<RecyclerView>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaMoreActivity$recyclerView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final RecyclerView invoke() {
                return (RecyclerView) LiveAreaMoreActivity.this.findViewById(R.id.recycler_view);
            }
        });
        this.recyclerView$delegate = lazy;
        this.list = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m459initView$lambda1(LiveAreaMoreActivity this$0, wd.j it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.loadNetData();
    }

    private final void loadNetData() {
        post("tokens/live/cache/getCountryByState").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<CountryStateBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaMoreActivity$loadNetData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<CountryStateBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                LiveAreaMoreActivity.this.showEmptyView(new ArrayList());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<CountryStateBean> list, @NotNull FaceCastBaseResponse<List<CountryStateBean>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                SmartRefreshLayout refreshLay = LiveAreaMoreActivity.this.getRefreshLay();
                if (refreshLay != null) {
                    refreshLay.w();
                }
                if (list == null) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (CountryStateBean countryStateBean : list) {
                    List<CountryStateBean.Country> list2 = countryStateBean.countryOfStateList;
                    if (list2 != null) {
                        Intrinsics.checkNotNullExpressionValue(list2, "it.countryOfStateList");
                        if (!list2.isEmpty()) {
                            arrayList.add(countryStateBean);
                        }
                    }
                }
                LiveAreaMoreActivity.this.showEmptyView(arrayList);
                LiveAreaMoreActivity.this.getList().clear();
                LiveAreaMoreActivity.this.getList().addAll(arrayList);
                RecyclerView.Adapter adapter = LiveAreaMoreActivity.this.getRecyclerView().getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setContentLay(ViewGroup viewGroup, String str, List<? extends CountryStateBean.Country> list, int i9) {
        if (viewGroup == null || list == null || list.isEmpty()) {
            if (viewGroup == null) {
                return;
            }
            viewGroup.setVisibility(8);
            return;
        }
        viewGroup.setVisibility(0);
        View view = ViewGroupKt.get(viewGroup, 0);
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) view;
        textView.setText(str);
        TextDrawableUtil.addDrawableStart(textView, i9);
        View view2 = ViewGroupKt.get(viewGroup, 1);
        Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView");
        DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) view2;
        disTouchRecyclerView.setLayoutManager(new GridLayoutManager((Context) this, 3, 1, false));
        disTouchRecyclerView.setAdapter(new LiveAreaMoreActivity$setContentLay$1(list, this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showEmptyView(List<CountryStateBean> list) {
        ArrayList arrayList = new ArrayList();
        for (CountryStateBean countryStateBean : list) {
            List<CountryStateBean.Country> list2 = countryStateBean.countryOfStateList;
            if (list2 != null) {
                Intrinsics.checkNotNullExpressionValue(list2, "it.countryOfStateList");
                arrayList.addAll(list2);
            }
        }
        LiveAreaCacheManager.Companion companion = LiveAreaCacheManager.Companion;
        companion.getInstance().removeRepeatItem(arrayList);
        List<CountryStateBean.Country> liveAreaHistory = companion.getInstance().getLiveAreaHistory();
        if (list.isEmpty() && liveAreaHistory.isEmpty()) {
            View view = this.emptyView;
            if (view != null) {
                view.setVisibility(0);
            }
            SmartRefreshLayout smartRefreshLayout = this.refreshLay;
            if (smartRefreshLayout == null) {
                return;
            }
            smartRefreshLayout.setVisibility(8);
            return;
        }
        View view2 = this.emptyView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        SmartRefreshLayout smartRefreshLayout2 = this.refreshLay;
        if (smartRefreshLayout2 != null) {
            smartRefreshLayout2.setVisibility(0);
        }
        if (!liveAreaHistory.isEmpty()) {
            CountryStateBean countryStateBean2 = new CountryStateBean();
            countryStateBean2.countryOfStateList = liveAreaHistory;
            countryStateBean2.name = getString(R.string.live_watch_history);
            countryStateBean2.stateId = -1;
            list.add(0, countryStateBean2);
        }
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @NotNull ArrayList<LiveRoomPageData.LiveCountry> arrayList) {
        Companion.start(context, arrayList);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        Intent intent = new Intent();
        intent.setAction(LOCAL_EVENT_MSG.LIVE_FROM_COUNTRY);
        EventBus.getDefault().post(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    @NotNull
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        com.guochao.faceshow.aaspring.base.activity.a a10 = new a.C0147a(this).b(true).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder(this).immersionStatusBar(true).build()");
        return a10;
    }

    @Nullable
    public final ArrayList<LiveRoomPageData.LiveCountry> getDataList() {
        return this.dataList;
    }

    @Nullable
    public final View getEmptyView() {
        return this.emptyView;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_live_area_more;
    }

    @NotNull
    public final List<CountryStateBean> getList() {
        return this.list;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        Object value = this.recyclerView$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-recyclerView>(...)");
        return (RecyclerView) value;
    }

    @Nullable
    public final SmartRefreshLayout getRefreshLay() {
        return this.refreshLay;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.dataList = getIntent().getParcelableArrayListExtra("dataList");
        setTitle(R.string.setting_region);
        setLightStatusBar(true);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.f();
        }
        this.emptyView = findViewById(R.id.empty_view);
        SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) findViewById(R.id.refresh_layout);
        this.refreshLay = smartRefreshLayout;
        Intrinsics.checkNotNull(smartRefreshLayout);
        smartRefreshLayout.L(false);
        SmartRefreshLayout smartRefreshLayout2 = this.refreshLay;
        Intrinsics.checkNotNull(smartRefreshLayout2);
        smartRefreshLayout2.T(new zd.d() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.i
            @Override // zd.d
            public final void a(wd.j jVar) {
                LiveAreaMoreActivity.m459initView$lambda1(LiveAreaMoreActivity.this, jVar);
            }
        });
        SmartRefreshLayout smartRefreshLayout3 = this.refreshLay;
        Intrinsics.checkNotNull(smartRefreshLayout3);
        smartRefreshLayout3.p(0, 60, 1.0f, true);
        getRecyclerView().setLayoutManager(new LinearLayoutManager(this));
        getRecyclerView().setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaMoreActivity$initView$3
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return LiveAreaMoreActivity.this.getList().size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                CountryStateBean countryStateBean = LiveAreaMoreActivity.this.getList().get(i9);
                int i10 = countryStateBean.stateId;
                if (i10 == -1) {
                    LiveAreaMoreActivity liveAreaMoreActivity = LiveAreaMoreActivity.this;
                    View view = holder.itemView;
                    Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
                    String str = countryStateBean.name;
                    Intrinsics.checkNotNullExpressionValue(str, "it.name");
                    liveAreaMoreActivity.setContentLay((ViewGroup) view, str, countryStateBean.countryOfStateList, R.mipmap.live_area_history);
                } else if (i10 == 1) {
                    LiveAreaMoreActivity liveAreaMoreActivity2 = LiveAreaMoreActivity.this;
                    View view2 = holder.itemView;
                    Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.view.ViewGroup");
                    String str2 = countryStateBean.name;
                    Intrinsics.checkNotNullExpressionValue(str2, "it.name");
                    liveAreaMoreActivity2.setContentLay((ViewGroup) view2, str2, countryStateBean.countryOfStateList, R.mipmap.live_area_ya);
                } else if (i10 == 2) {
                    LiveAreaMoreActivity liveAreaMoreActivity3 = LiveAreaMoreActivity.this;
                    View view3 = holder.itemView;
                    Intrinsics.checkNotNull(view3, "null cannot be cast to non-null type android.view.ViewGroup");
                    String str3 = countryStateBean.name;
                    Intrinsics.checkNotNullExpressionValue(str3, "it.name");
                    liveAreaMoreActivity3.setContentLay((ViewGroup) view3, str3, countryStateBean.countryOfStateList, R.mipmap.live_area_ou);
                } else if (i10 == 3) {
                    LiveAreaMoreActivity liveAreaMoreActivity4 = LiveAreaMoreActivity.this;
                    View view4 = holder.itemView;
                    Intrinsics.checkNotNull(view4, "null cannot be cast to non-null type android.view.ViewGroup");
                    String str4 = countryStateBean.name;
                    Intrinsics.checkNotNullExpressionValue(str4, "it.name");
                    liveAreaMoreActivity4.setContentLay((ViewGroup) view4, str4, countryStateBean.countryOfStateList, R.mipmap.live_area_fei);
                } else if (i10 == 4) {
                    LiveAreaMoreActivity liveAreaMoreActivity5 = LiveAreaMoreActivity.this;
                    View view5 = holder.itemView;
                    Intrinsics.checkNotNull(view5, "null cannot be cast to non-null type android.view.ViewGroup");
                    String str5 = countryStateBean.name;
                    Intrinsics.checkNotNullExpressionValue(str5, "it.name");
                    liveAreaMoreActivity5.setContentLay((ViewGroup) view5, str5, countryStateBean.countryOfStateList, R.mipmap.live_area_mei);
                } else if (i10 != 5) {
                } else {
                    LiveAreaMoreActivity liveAreaMoreActivity6 = LiveAreaMoreActivity.this;
                    View view6 = holder.itemView;
                    Intrinsics.checkNotNull(view6, "null cannot be cast to non-null type android.view.ViewGroup");
                    String str6 = countryStateBean.name;
                    Intrinsics.checkNotNullExpressionValue(str6, "it.name");
                    liveAreaMoreActivity6.setContentLay((ViewGroup) view6, str6, countryStateBean.countryOfStateList, R.mipmap.live_area_ao);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NotNull
            public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new BaseViewHolder(LayoutInflater.from(LiveAreaMoreActivity.this.getActivity()).inflate(R.layout.layout_tag_area_continent, parent, false));
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        loadNetData();
    }

    public final void setDataList(@Nullable ArrayList<LiveRoomPageData.LiveCountry> arrayList) {
        this.dataList = arrayList;
    }

    public final void setEmptyView(@Nullable View view) {
        this.emptyView = view;
    }

    public final void setRefreshLay(@Nullable SmartRefreshLayout smartRefreshLayout) {
        this.refreshLay = smartRefreshLayout;
    }
}
