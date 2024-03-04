package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestKt;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.PlanetResult;
import com.guochao.faceshow.aaspring.beans.PlanetUserBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.PlanetDataUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u00012\u00020\u0002:\u0002klB\u0007¢\u0006\u0004\bi\u0010jJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0003H\u0002J\b\u0010\n\u001a\u00020\u0003H\u0002J\b\u0010\u000b\u001a\u00020\u0003H\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\u0012\u0010\u0015\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R\"\u0010(\u001a\u00020'8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R&\u0010=\u001a\u00060<R\u00020\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010C\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010J\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bJ\u0010L\"\u0004\bM\u0010NR\"\u0010O\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010K\u001a\u0004\bO\u0010L\"\u0004\bP\u0010NR*\u0010S\u001a\n\u0012\u0004\u0012\u00020R\u0018\u00010Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\"\u0010Y\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010D\u001a\u0004\bZ\u0010F\"\u0004\b[\u0010HR(\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00130Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010T\u001a\u0004\b]\u0010V\"\u0004\b^\u0010XR(\u0010`\u001a\b\u0018\u00010_R\u00020\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR(\u0010f\u001a\b\u0012\u0004\u0012\u00020R0Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010T\u001a\u0004\bg\u0010V\"\u0004\bh\u0010X¨\u0006m"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "Landroid/view/View$OnClickListener;", "", "setLoadingView", "", "realGender", "refreshGenderIcon", "checkLocalData", "getPlanetCacheData", "getPlanetData", "showLoadingView", "dismissLoadingView", "toRandomChatActivity", "Lcom/guochao/faceshow/aaspring/base/activity/a;", "getActivityConfig", "initView", "getLayoutId", "loadData", "Landroid/view/View;", "p0", "onClick", "Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;", "planet", "Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;", "getPlanet", "()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;", "setPlanet", "(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V", "Landroid/widget/TextView;", "randomChat", "Landroid/widget/TextView;", "getRandomChat", "()Landroid/widget/TextView;", "setRandomChat", "(Landroid/widget/TextView;)V", "tvSexTip", "getTvSexTip", "setTvSexTip", "Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;", "floatTitleBack", "Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;", "getFloatTitleBack", "()Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;", "setFloatTitleBack", "(Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;)V", "Landroid/widget/FrameLayout;", "flLoading", "Landroid/widget/FrameLayout;", "getFlLoading", "()Landroid/widget/FrameLayout;", "setFlLoading", "(Landroid/widget/FrameLayout;)V", "Lcom/guochao/faceshow/views/SvgaImageViewV2;", "loading", "Lcom/guochao/faceshow/views/SvgaImageViewV2;", "getLoading", "()Lcom/guochao/faceshow/views/SvgaImageViewV2;", "setLoading", "(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V", "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;", "mViewRunnable", "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;", "getMViewRunnable", "()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;", "setMViewRunnable", "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;)V", "plantSex", "I", "getPlantSex", "()I", "setPlantSex", "(I)V", "", "isCacheData", "Z", "()Z", "setCacheData", "(Z)V", "isBaseMatch", "setBaseMatch", "", "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;", "homeUser", "Ljava/util/List;", "getHomeUser", "()Ljava/util/List;", "setHomeUser", "(Ljava/util/List;)V", "mCurrentIndex", "getMCurrentIndex", "setMCurrentIndex", "mViews", "getMViews", "setMViews", "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;", "recommendPlanetAdapter", "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;", "getRecommendPlanetAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;", "setRecommendPlanetAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;)V", "chatUserList", "getChatUserList", "setChatUserList", "<init>", "()V", "RecommendPlanetAdapter", "ViewRunnable", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class PlantActivity extends BaseActivity implements View.OnClickListener {
    public FrameLayout flLoading;
    public TitleBackgroundView floatTitleBack;
    private boolean isBaseMatch;
    private boolean isCacheData;
    public SvgaImageViewV2 loading;
    private int mCurrentIndex;
    public SoulPlanetsView planet;
    public TextView randomChat;
    @Nullable
    private RecommendPlanetAdapter recommendPlanetAdapter;
    public TextView tvSexTip;
    @NotNull
    private ViewRunnable mViewRunnable = new ViewRunnable();
    private int plantSex = -1;
    @Nullable
    private List<PlanetUserBean> homeUser = new ArrayList();
    @NotNull
    private List<View> mViews = new ArrayList();
    @NotNull
    private List<PlanetUserBean> chatUserList = new ArrayList();

    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;", "Lk9/b;", "", "getCount", "Landroid/content/Context;", "context", "position", "Landroid/view/ViewGroup;", "parent", "Landroid/view/View;", "getView", "", "getItem", "getPopularity", ViewHierarchyConstants.VIEW_KEY, "themeColor", "", "onThemeColorChanged", "<init>", "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class RecommendPlanetAdapter extends k9.b {
        public RecommendPlanetAdapter() {
        }

        @Override // k9.b
        public int getCount() {
            List<PlanetUserBean> homeUser = PlantActivity.this.getHomeUser();
            if (homeUser != null) {
                return homeUser.size();
            }
            return 0;
        }

        @Override // k9.b
        @Nullable
        public Object getItem(int i9) {
            List<PlanetUserBean> homeUser = PlantActivity.this.getHomeUser();
            if (homeUser != null) {
                return homeUser.get(i9);
            }
            return null;
        }

        @Override // k9.b
        public int getPopularity(int i9) {
            return 0;
        }

        @Override // k9.b
        @Nullable
        public View getView(@NotNull Context context, int i9, @NotNull ViewGroup parent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i9 <= PlantActivity.this.getMViews().size() - 1) {
                return PlantActivity.this.getMViews().get(i9);
            }
            return null;
        }

        @Override // k9.b
        public void onThemeColorChanged(@NotNull View view, int i9) {
            Intrinsics.checkNotNullParameter(view, "view");
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;", "Ljava/lang/Runnable;", "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V", "run", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class ViewRunnable implements Runnable {
        public ViewRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int coerceAtMost;
            if (PlantActivity.this.getActivity() == null || ((BaseActivity) PlantActivity.this.getActivity()).isDestroyed()) {
                return;
            }
            int mCurrentIndex = PlantActivity.this.getMCurrentIndex();
            List<PlanetUserBean> homeUser = PlantActivity.this.getHomeUser();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(4, (homeUser != null ? homeUser.size() : 0) - mCurrentIndex);
            if (coerceAtMost == 0) {
                if (PlantActivity.this.getRecommendPlanetAdapter() == null) {
                    PlantActivity plantActivity = PlantActivity.this;
                    plantActivity.setRecommendPlanetAdapter(new RecommendPlanetAdapter());
                    PlantActivity.this.getPlanet().setAdapter(PlantActivity.this.getRecommendPlanetAdapter());
                }
                RecommendPlanetAdapter recommendPlanetAdapter = PlantActivity.this.getRecommendPlanetAdapter();
                if (recommendPlanetAdapter != null) {
                    recommendPlanetAdapter.notifyDataSetChanged();
                }
                PlantActivity.this.dismissLoadingView();
                if (PlantActivity.this.isCacheData()) {
                    PlantActivity.this.getPlanetData();
                    return;
                }
                return;
            }
            for (int i9 = 0; i9 < coerceAtMost; i9++) {
                View view = LayoutInflater.from(PlantActivity.this.getActivity()).inflate(R.layout.list_item_planet_user, (ViewGroup) PlantActivity.this.getPlanet(), false);
                List<PlanetUserBean> homeUser2 = PlantActivity.this.getHomeUser();
                PlanetUserBean planetUserBean = homeUser2 != null ? homeUser2.get(PlantActivity.this.getMCurrentIndex()) : null;
                PlantActivity plantActivity2 = PlantActivity.this;
                plantActivity2.setMCurrentIndex(plantActivity2.getMCurrentIndex() + 1);
                if (planetUserBean != null) {
                    TextView textView = (TextView) view.findViewById(R.id.user_name);
                    textView.setText(planetUserBean.getNickName());
                    textView.setSelected(true);
                    View findViewById = view.findViewById(R.id.avatar_view);
                    Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.avatar_view)");
                    ((HeadPortraitView) findViewById).f(planetUserBean, true);
                }
                List<View> mViews = PlantActivity.this.getMViews();
                Intrinsics.checkNotNullExpressionValue(view, "view");
                mViews.add(view);
            }
            HandlerGetter.getMainHandler().removeCallbacks(PlantActivity.this.getMViewRunnable());
            HandlerGetter.getMainHandler().post(PlantActivity.this.getMViewRunnable());
        }
    }

    private final void checkLocalData() {
        PlanetResult planetResult = (PlanetResult) GsonGetter.getGson().fromJson(CustomNameCacheUtils.getString(this, CustomNameCacheUtils.MODULE_PLANET, getCurrentUser().userId + CustomNameCacheUtils.KEY_PLANT_MASKED), (Class<Object>) PlanetResult.class);
        Unit unit = null;
        if (planetResult != null) {
            final List<PlanetUserBean> list = planetResult.getList();
            if (list != null) {
                PlanetDataUtils.INSTANCE.getPlanetDataList().addAll(list);
                this.isBaseMatch = false;
                getPlanet().removeAllViews();
                getPlanet().setLayout(false);
                this.mCurrentIndex = 0;
                this.mViews.clear();
                List<PlanetUserBean> list2 = this.homeUser;
                if (list2 != null) {
                    list2.clear();
                }
                this.chatUserList.clear();
                List<PlanetUserBean> list3 = this.homeUser;
                if (list3 != null) {
                    list3.addAll(list);
                }
                this.isCacheData = true;
                HandlerGetter.getMainHandler().post(this.mViewRunnable);
                getPlanet().setOnTagClickListener(new SoulPlanetsView.c() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.i
                    @Override // com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView.c
                    public final void onItemClick(ViewGroup viewGroup, View view, int i9) {
                        PlantActivity.m558checkLocalData$lambda4$lambda3$lambda2(PlantActivity.this, list, viewGroup, view, i9);
                    }
                });
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                getPlanetData();
            }
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            getPlanetData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkLocalData$lambda-4$lambda-3$lambda-2  reason: not valid java name */
    public static final void m558checkLocalData$lambda4$lambda3$lambda2(PlantActivity this$0, List it2, ViewGroup viewGroup, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "$it2");
        ChatActivity.navToChat(this$0, ((PlanetUserBean) it2.get(i9)).getUserId(), 99, ((PlanetUserBean) it2.get(i9)).getNickName(), true);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.plant_avatar_click);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissLoadingView() {
        getFlLoading().setVisibility(8);
    }

    private final void getPlanetCacheData() {
        PlanetDataUtils planetDataUtils = PlanetDataUtils.INSTANCE;
        if ((!planetDataUtils.getPlanetDataList().isEmpty()) && planetDataUtils.getPlanetDataList().size() > 0) {
            getPlanet().removeAllViews();
            getPlanet().setLayout(false);
            this.mCurrentIndex = 0;
            this.mViews.clear();
            List<PlanetUserBean> list = this.homeUser;
            if (list != null) {
                list.clear();
            }
            this.chatUserList.clear();
            List<PlanetUserBean> list2 = this.homeUser;
            if (list2 != null) {
                list2.addAll(planetDataUtils.getPlanetDataList());
            }
            HandlerGetter.getMainHandler().post(this.mViewRunnable);
            getPlanet().setOnTagClickListener(new SoulPlanetsView.c() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.h
                @Override // com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView.c
                public final void onItemClick(ViewGroup viewGroup, View view, int i9) {
                    PlantActivity.m559getPlanetCacheData$lambda5(PlantActivity.this, viewGroup, view, i9);
                }
            });
            return;
        }
        checkLocalData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getPlanetCacheData$lambda-5  reason: not valid java name */
    public static final void m559getPlanetCacheData$lambda5(PlantActivity this$0, ViewGroup viewGroup, View view, int i9) {
        PlanetUserBean planetUserBean;
        PlanetUserBean planetUserBean2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<PlanetUserBean> list = this$0.homeUser;
        String str = null;
        String userId = (list == null || (planetUserBean2 = list.get(i9)) == null) ? null : planetUserBean2.getUserId();
        List<PlanetUserBean> list2 = this$0.homeUser;
        if (list2 != null && (planetUserBean = list2.get(i9)) != null) {
            str = planetUserBean.getNickName();
        }
        ChatActivity.navToChat(this$0, userId, 99, str, true);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.plant_avatar_click);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getPlanetData() {
        int i9 = 0;
        this.isCacheData = false;
        showLoadingView();
        if (getCurrentUser().sex != 1 ? this.plantSex != 1 : this.plantSex != 0) {
            i9 = 1;
        }
        GCRequest putBody = GCRequestKt.requestOnLifecycle(this, "api/token/social/recommend/recommendUserForXq").putBody("sex", Integer.valueOf(this.plantSex)).putBody("type", Integer.valueOf(i9));
        putBody.getCallbackHolder().setSuccessClz(PlanetResult.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity$getPlanetData$$inlined$success$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                PlanetDataUtils planetDataUtils = PlanetDataUtils.INSTANCE;
                planetDataUtils.setPlanetDataTime(System.currentTimeMillis());
                planetDataUtils.getPlanetUserIdList().clear();
                planetDataUtils.getPlanetDataList().clear();
                PlanetResult planetResult = (PlanetResult) _response.getData();
                if (planetResult != null) {
                    String json = GsonGetter.getGson().toJson(planetResult);
                    PlantActivity plantActivity = PlantActivity.this;
                    CustomNameCacheUtils.setString(plantActivity, CustomNameCacheUtils.MODULE_PLANET, PlantActivity.this.getCurrentUser().userId + CustomNameCacheUtils.KEY_PLANT_MASKED, json);
                    planetDataUtils.getPlanetUserIdList().clear();
                    planetDataUtils.getPlanetDataList().clear();
                    final List<PlanetUserBean> list = planetResult.getList();
                    if (list != null) {
                        planetDataUtils.getPlanetDataList().addAll(list);
                        PlantActivity.this.setBaseMatch(false);
                        PlantActivity.this.getPlanet().removeAllViews();
                        PlantActivity.this.getPlanet().setLayout(false);
                        PlantActivity.this.setMCurrentIndex(0);
                        PlantActivity.this.getMViews().clear();
                        List<PlanetUserBean> homeUser = PlantActivity.this.getHomeUser();
                        if (homeUser != null) {
                            homeUser.clear();
                        }
                        PlantActivity.this.getChatUserList().clear();
                        List<PlanetUserBean> homeUser2 = PlantActivity.this.getHomeUser();
                        if (homeUser2 != null) {
                            homeUser2.addAll(list);
                        }
                        HandlerGetter.getMainHandler().post(PlantActivity.this.getMViewRunnable());
                        SoulPlanetsView planet = PlantActivity.this.getPlanet();
                        final PlantActivity plantActivity2 = PlantActivity.this;
                        planet.setOnTagClickListener(new SoulPlanetsView.c() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity$getPlanetData$1$1$1$1$1
                            @Override // com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView.c
                            public final void onItemClick(ViewGroup viewGroup, View view, int i10) {
                                ChatActivity.navToChat(PlantActivity.this, list.get(i10).getUserId(), 99, list.get(i10).getNickName(), true);
                                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.plant_avatar_click);
                            }
                        });
                    }
                }
            }
        });
        putBody.request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m560initView$lambda0(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshGenderIcon(int i9) {
        if (i9 == 0) {
            setEndIcon(R.mipmap.icon_ugc_gender_female);
            getTvSexTip().setText(getString(R.string.planet_tip_1));
        } else if (i9 != 1) {
            setEndIcon(R.mipmap.icon_ugc_gender_male_female);
            getTvSexTip().setText(getString(R.string.planet_tip));
        } else {
            setEndIcon(R.mipmap.icon_ugc_gender_male);
            getTvSexTip().setText(getString(R.string.planet_tip));
        }
    }

    private final void setLoadingView() {
        SVGAParser parser = SvgaImageViewUtils.getParser();
        InputStream openRawResource = getResources().openRawResource(R.raw.loading_global);
        Intrinsics.checkNotNullExpressionValue(openRawResource, "resources.openRawResourc…ase.R.raw.loading_global)");
        parser.decodeFromInputStream(openRawResource, "global_loading", new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity$setLoadingView$1
            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                double height = videoItem.getVideoSize().getHeight();
                double width = videoItem.getVideoSize().getWidth();
                ViewGroup.LayoutParams layoutParams = PlantActivity.this.getLoading().getLayoutParams();
                Intrinsics.checkNotNullExpressionValue(layoutParams, "loading.layoutParams");
                if (!BaseConfig.isChinese()) {
                    double d10 = 1.5f;
                    double d11 = 1.3f;
                    layoutParams.height = (int) ((height / d10) * d11);
                    layoutParams.width = (int) ((width / d10) * d11);
                } else {
                    double d12 = 1.5f;
                    layoutParams.height = (int) (height * d12);
                    layoutParams.width = (int) (width * d12);
                }
                PlantActivity.this.getLoading().setLayoutParams(layoutParams);
                PlantActivity.this.getLoading().setVideoItem(videoItem);
                PlantActivity.this.getLoading().startAnimation();
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        }, true);
    }

    private final void showLoadingView() {
        getFlLoading().setVisibility(0);
    }

    private final void toRandomChatActivity() {
        PlanetUserBean planetBaseMatchUser;
        List<PlanetUserBean> list = this.homeUser;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.chatUserList.addAll(list);
        List<PlanetUserBean> list2 = this.chatUserList;
        PlanetDataUtils planetDataUtils = PlanetDataUtils.INSTANCE;
        list2.removeAll(planetDataUtils.getPlanetUserIdList());
        boolean z10 = this.chatUserList.size() == 0;
        if (z10) {
            this.chatUserList.addAll(list);
            planetDataUtils.getPlanetUserIdList().clear();
        }
        if (!z10 && this.chatUserList.size() == list.size() && (planetBaseMatchUser = planetDataUtils.getPlanetBaseMatchUser()) != null && Intrinsics.areEqual(this.chatUserList.get(0).getUserId(), planetBaseMatchUser.getUserId())) {
            TypeIntrinsics.asMutableCollection(this.chatUserList).remove(planetDataUtils.getPlanetBaseMatchUser());
        }
        ChatActivity.navToChat(this, this.chatUserList.get(0).getUserId(), 100, this.chatUserList.get(0).getNickName(), true);
        new Bundle().putString(Contants.USER_ID, this.chatUserList.get(0).getUserId());
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.planet_surprise_click);
        if (!this.isBaseMatch && this.chatUserList.size() == list.size()) {
            planetDataUtils.setPlanetBaseMatchUser(this.chatUserList.get(0));
            this.isBaseMatch = true;
        }
        planetDataUtils.getPlanetUserIdList().add(this.chatUserList.get(0));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    @NotNull
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        com.guochao.faceshow.aaspring.base.activity.a a10 = new a.C0147a(this).b(true).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder(this).immersionStatusBar(true).build()");
        return a10;
    }

    @NotNull
    public final List<PlanetUserBean> getChatUserList() {
        return this.chatUserList;
    }

    @NotNull
    public final FrameLayout getFlLoading() {
        FrameLayout frameLayout = this.flLoading;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("flLoading");
        return null;
    }

    @NotNull
    public final TitleBackgroundView getFloatTitleBack() {
        TitleBackgroundView titleBackgroundView = this.floatTitleBack;
        if (titleBackgroundView != null) {
            return titleBackgroundView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("floatTitleBack");
        return null;
    }

    @Nullable
    public final List<PlanetUserBean> getHomeUser() {
        return this.homeUser;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_plant;
    }

    @NotNull
    public final SvgaImageViewV2 getLoading() {
        SvgaImageViewV2 svgaImageViewV2 = this.loading;
        if (svgaImageViewV2 != null) {
            return svgaImageViewV2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loading");
        return null;
    }

    public final int getMCurrentIndex() {
        return this.mCurrentIndex;
    }

    @NotNull
    public final ViewRunnable getMViewRunnable() {
        return this.mViewRunnable;
    }

    @NotNull
    public final List<View> getMViews() {
        return this.mViews;
    }

    @NotNull
    public final SoulPlanetsView getPlanet() {
        SoulPlanetsView soulPlanetsView = this.planet;
        if (soulPlanetsView != null) {
            return soulPlanetsView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("planet");
        return null;
    }

    public final int getPlantSex() {
        return this.plantSex;
    }

    @NotNull
    public final TextView getRandomChat() {
        TextView textView = this.randomChat;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("randomChat");
        return null;
    }

    @Nullable
    public final RecommendPlanetAdapter getRecommendPlanetAdapter() {
        return this.recommendPlanetAdapter;
    }

    @NotNull
    public final TextView getTvSexTip() {
        TextView textView = this.tvSexTip;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvSexTip");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        Display defaultDisplay;
        setLightStatusBar(false);
        setTitle(R.string.planet_buzzcast);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.plant_page);
        View findViewById = findViewById(R.id.float_title_back);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.float_title_back)");
        setFloatTitleBack((TitleBackgroundView) findViewById);
        getFloatTitleBack().setBackgroundColor(ContextCompat.getColor(getActivity(), R.color.transparent));
        View findViewById2 = findViewById(R.id.planet);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.planet)");
        setPlanet((SoulPlanetsView) findViewById2);
        View findViewById3 = findViewById(R.id.fl_loading);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.fl_loading)");
        setFlLoading((FrameLayout) findViewById3);
        View findViewById4 = findViewById(R.id.loading);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.loading)");
        setLoading((SvgaImageViewV2) findViewById4);
        View findViewById5 = findViewById(R.id.random_chat);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.random_chat)");
        setRandomChat((TextView) findViewById5);
        View findViewById6 = findViewById(R.id.tv_sex_tip);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.tv_sex_tip)");
        setTvSexTip((TextView) findViewById6);
        getRandomChat().setOnClickListener(this);
        getFlLoading().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlantActivity.m560initView$lambda0(view);
            }
        });
        setLoadingView();
        WindowManager windowManager = getWindowManager();
        if (windowManager != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            getPlanet().setRefreshRate(defaultDisplay.getRefreshRate());
        }
        GCCoreActivity activity = getActivity();
        int i9 = CustomNameCacheUtils.getInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, "last_planet_sex_" + getCurrentUser().getUserId(), getCurrentUser().sex == 0 ? 1 : 0);
        this.plantSex = i9;
        refreshGenderIcon(i9);
        this.mTitleBarHelper.f();
        View d10 = this.mTitleBarHelper.d();
        ImageButton imageButton = d10 instanceof ImageButton ? (ImageButton) d10 : null;
        if (imageButton != null) {
            imageButton.setImageResource(R.drawable.icon_white_left_back);
        }
        this.mTitleBarHelper.setOnRightIconClickListener(new v.d() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity$initView$3
            @Override // com.guochao.faceshow.aaspring.views.v.d
            public void onFirstIconClick(@Nullable View view) {
                if (PlantActivity.this.getPlantSex() == 2) {
                    PlantActivity plantActivity = PlantActivity.this;
                    plantActivity.setPlantSex(plantActivity.getCurrentUser().sex != 1 ? 1 : 0);
                } else if (PlantActivity.this.getPlantSex() == PlantActivity.this.getCurrentUser().sex) {
                    PlantActivity.this.setPlantSex(2);
                } else if (PlantActivity.this.getPlantSex() == 0) {
                    PlantActivity.this.setPlantSex(1);
                } else if (PlantActivity.this.getPlantSex() == 1) {
                    PlantActivity.this.setPlantSex(0);
                }
                PlantActivity plantActivity2 = PlantActivity.this;
                plantActivity2.refreshGenderIcon(plantActivity2.getPlantSex());
                EventTrackingUtils.getInstance().track(EventTrackingUtils.PLANET_GENDER_CLICK);
                GCCoreActivity activity2 = PlantActivity.this.getActivity();
                CustomNameCacheUtils.setInt(activity2, CustomNameCacheUtils.MODULE_NOTIFICATION, "last_planet_sex_" + PlantActivity.this.getCurrentUser().getUserId(), PlantActivity.this.getPlantSex());
                PlantActivity.this.getPlanetData();
            }
        });
    }

    public final boolean isBaseMatch() {
        return this.isBaseMatch;
    }

    public final boolean isCacheData() {
        return this.isCacheData;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        if (System.currentTimeMillis() - PlanetDataUtils.INSTANCE.getPlanetDataTime() > 60000) {
            checkLocalData();
        } else {
            getPlanetCacheData();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.random_chat) {
            toRandomChatActivity();
        }
    }

    public final void setBaseMatch(boolean z10) {
        this.isBaseMatch = z10;
    }

    public final void setCacheData(boolean z10) {
        this.isCacheData = z10;
    }

    public final void setChatUserList(@NotNull List<PlanetUserBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.chatUserList = list;
    }

    public final void setFlLoading(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
        this.flLoading = frameLayout;
    }

    public final void setFloatTitleBack(@NotNull TitleBackgroundView titleBackgroundView) {
        Intrinsics.checkNotNullParameter(titleBackgroundView, "<set-?>");
        this.floatTitleBack = titleBackgroundView;
    }

    public final void setHomeUser(@Nullable List<PlanetUserBean> list) {
        this.homeUser = list;
    }

    public final void setLoading(@NotNull SvgaImageViewV2 svgaImageViewV2) {
        Intrinsics.checkNotNullParameter(svgaImageViewV2, "<set-?>");
        this.loading = svgaImageViewV2;
    }

    public final void setMCurrentIndex(int i9) {
        this.mCurrentIndex = i9;
    }

    public final void setMViewRunnable(@NotNull ViewRunnable viewRunnable) {
        Intrinsics.checkNotNullParameter(viewRunnable, "<set-?>");
        this.mViewRunnable = viewRunnable;
    }

    public final void setMViews(@NotNull List<View> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.mViews = list;
    }

    public final void setPlanet(@NotNull SoulPlanetsView soulPlanetsView) {
        Intrinsics.checkNotNullParameter(soulPlanetsView, "<set-?>");
        this.planet = soulPlanetsView;
    }

    public final void setPlantSex(int i9) {
        this.plantSex = i9;
    }

    public final void setRandomChat(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.randomChat = textView;
    }

    public final void setRecommendPlanetAdapter(@Nullable RecommendPlanetAdapter recommendPlanetAdapter) {
        this.recommendPlanetAdapter = recommendPlanetAdapter;
    }

    public final void setTvSexTip(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvSexTip = textView;
    }
}
