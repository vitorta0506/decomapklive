package com.guochao.faceshow.activitycenter.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import com.guochao.faceshow.aaspring.modulars.live.fragment.AppEventFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.databinding.FragmentActivityCenterBinding;
import com.guochao.faceshow.databinding.ItemActivityCenterBinding;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.promotion.data.ShortVideoActivityScheme;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.GsonGetter;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.f;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00162\u00020\u0001:\u0003\u0015\u0016\u0017B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u001a\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0015\u0010\u0003\u001a\u00060\u0004R\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "mAdapter", "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;", "getMAdapter", "()Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;)V", "getData", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "ActivityAdapter", "Companion", "PeopleViewHolder", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ActivityCenterFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final ActivityAdapter mAdapter = new ActivityAdapter();
    public FragmentActivityCenterBinding viewBinding;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;", "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class ActivityAdapter extends BaseQuickAdapter<BannerBeanData, PeopleViewHolder> implements LoadMoreModule {
        public ActivityAdapter() {
            super(R.layout.item_activity_center, null, 2, null);
        }

        @Override // com.chad.library.adapter.base.module.LoadMoreModule
        @NotNull
        public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
            return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull PeopleViewHolder holder, @NotNull BannerBeanData item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            ItemActivityCenterBinding binding = holder.getBinding();
            com.bumptech.glide.c.v(binding.imageView).r(item.getFileUrl()).m().Q0(binding.imageView);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ActivityCenterFragment newInstance() {
            Bundle bundle = new Bundle();
            ActivityCenterFragment activityCenterFragment = new ActivityCenterFragment();
            activityCenterFragment.setArguments(bundle);
            return activityCenterFragment;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/faceshow/databinding/ItemActivityCenterBinding;", "getBinding", "()Lcom/guochao/faceshow/databinding/ItemActivityCenterBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PeopleViewHolder extends BaseViewHolder {
        @NotNull
        private final ItemActivityCenterBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeopleViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ItemActivityCenterBinding bind = ItemActivityCenterBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.binding = bind;
        }

        @NotNull
        public final ItemActivityCenterBinding getBinding() {
            return this.binding;
        }
    }

    private final void getData() {
        post("api/appactivity/findAllActivity").M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.activitycenter.fragment.ActivityCenterFragment$getData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<String> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                ActivityCenterFragment.this.getViewBinding().swipe.setRefreshing(false);
                ActivityCenterFragment.this.getViewBinding().swipe.setVisibility(8);
                ActivityCenterFragment.this.getViewBinding().emptyIV.setVisibility(0);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                PromotionData promotionData = !TextUtils.isEmpty(str) ? (PromotionData) GsonGetter.getGson().fromJson(str, (Class<Object>) PromotionData.class) : null;
                ArrayList arrayList = new ArrayList();
                if ((promotionData != null ? promotionData.result : null) != null && promotionData.result.getLive() != null) {
                    List<PromotionData.ResultItem> live = promotionData.result.getLive();
                    Intrinsics.checkNotNullExpressionValue(live, "bean.result.live");
                    if (live.size() > 1) {
                        CollectionsKt__MutableCollectionsJVMKt.sortWith(live, new Comparator() { // from class: com.guochao.faceshow.activitycenter.fragment.ActivityCenterFragment$getData$1$onResponse$$inlined$sortByDescending$1
                            @Override // java.util.Comparator
                            public final int compare(T t10, T t11) {
                                int compareValues;
                                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((PromotionData.ResultItem) t11).startTime), Long.valueOf(((PromotionData.ResultItem) t10).startTime));
                                return compareValues;
                            }
                        });
                    }
                    List<PromotionData.ResultItem> live2 = promotionData.result.getLive();
                    Intrinsics.checkNotNullExpressionValue(live2, "bean.result.live");
                    for (PromotionData.ResultItem resultItem : live2) {
                        LogUtils.i(CrashHianalyticsData.TIME, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(resultItem.startTime)));
                        BannerBeanData bannerBeanData = new BannerBeanData();
                        bannerBeanData.setModelType(String.valueOf(resultItem.type));
                        bannerBeanData.setBannerName(resultItem.name);
                        ShortVideoActivityScheme shortVideoActivityScheme = resultItem.appScheme;
                        bannerBeanData.setSchemeId(shortVideoActivityScheme != null ? shortVideoActivityScheme.getSchemeId() : null);
                        ShortVideoActivityScheme shortVideoActivityScheme2 = resultItem.appScheme;
                        bannerBeanData.setSchemeName(shortVideoActivityScheme2 != null ? shortVideoActivityScheme2.getSchemeName() : null);
                        ShortVideoActivityScheme shortVideoActivityScheme3 = resultItem.appScheme;
                        bannerBeanData.setSchemeData(shortVideoActivityScheme3 != null ? shortVideoActivityScheme3.getSchemeData() : null);
                        ShortVideoActivityScheme shortVideoActivityScheme4 = resultItem.appScheme;
                        bannerBeanData.setSchemeType(shortVideoActivityScheme4 != null ? shortVideoActivityScheme4.getSchemeType() : null);
                        ShortVideoActivityScheme shortVideoActivityScheme5 = resultItem.appScheme;
                        bannerBeanData.setSchemeUrl(shortVideoActivityScheme5 != null ? shortVideoActivityScheme5.getSchemeUrl() : null);
                        bannerBeanData.setFileUrl(resultItem.coverImgUrl);
                        bannerBeanData.setBelongLang(resultItem.belongLang);
                        arrayList.add(bannerBeanData);
                    }
                }
                ActivityCenterFragment.this.getViewBinding().swipe.setRefreshing(false);
                if (arrayList.isEmpty()) {
                    ActivityCenterFragment.this.getViewBinding().swipe.setVisibility(8);
                    ActivityCenterFragment.this.getViewBinding().emptyIV.setVisibility(0);
                    return;
                }
                ActivityCenterFragment.this.getMAdapter().setNewInstance(arrayList);
                ActivityCenterFragment.this.getViewBinding().swipe.setVisibility(0);
                ActivityCenterFragment.this.getViewBinding().emptyIV.setVisibility(8);
            }
        });
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-1  reason: not valid java name */
    public static final void m602initView$lambda3$lambda1(ActivityCenterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-2  reason: not valid java name */
    public static final void m603initView$lambda3$lambda2(ActivityCenterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m604initView$lambda4(ActivityCenterFragment this$0, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(EventTrackingV2Utils.activity_center_activity);
            eventTrackingV2Utils.track(EventTrackingV2Utils.activity_load_from, "3");
            AppEventFragment.Q1(this$0.getActivity(), this$0.mAdapter.getItem(i9));
        } catch (Exception unused) {
        }
    }

    @NotNull
    public final ActivityAdapter getMAdapter() {
        return this.mAdapter;
    }

    @NotNull
    public final FragmentActivityCenterBinding getViewBinding() {
        FragmentActivityCenterBinding fragmentActivityCenterBinding = this.viewBinding;
        if (fragmentActivityCenterBinding != null) {
            return fragmentActivityCenterBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getData();
        FragmentActivityCenterBinding viewBinding = getViewBinding();
        viewBinding.swipe.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.faceshow.activitycenter.fragment.b
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                ActivityCenterFragment.m602initView$lambda3$lambda1(ActivityCenterFragment.this);
            }
        });
        ImageView emptyIV = viewBinding.emptyIV;
        Intrinsics.checkNotNullExpressionValue(emptyIV, "emptyIV");
        ViewExtendsKt.onClick$default(emptyIV, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.activitycenter.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityCenterFragment.m603initView$lambda3$lambda2(ActivityCenterFragment.this, view);
            }
        }, 1, null);
        getViewBinding().recyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(new f() { // from class: com.guochao.faceshow.activitycenter.fragment.c
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                ActivityCenterFragment.m604initView$lambda4(ActivityCenterFragment.this, baseQuickAdapter, view, i9);
            }
        });
    }

    public final void setViewBinding(@NotNull FragmentActivityCenterBinding fragmentActivityCenterBinding) {
        Intrinsics.checkNotNullParameter(fragmentActivityCenterBinding, "<set-?>");
        this.viewBinding = fragmentActivityCenterBinding;
    }
}
