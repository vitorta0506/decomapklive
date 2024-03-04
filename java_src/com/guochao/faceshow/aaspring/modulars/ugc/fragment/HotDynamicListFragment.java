package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.HotDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.AttachTopicHolder;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
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
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u000fH\u0002J\b\u0010\u0016\u001a\u00020\u000fH\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;", "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;", "()V", "topicAdapter", "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;", "getTopicAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;", "topicAdapter$delegate", "Lkotlin/Lazy;", "topicListView", "Landroidx/recyclerview/widget/RecyclerView;", "getTopicListView", "()Landroidx/recyclerview/widget/RecyclerView;", "topicListView$delegate", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "pageNo", "", "loadTopic", "readCache", "writeCache", "data", "", "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;", "Companion", "TopicAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HotDynamicListFragment extends UgcDynamicListFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Lazy topicAdapter$delegate;
    @NotNull
    private final Lazy topicListView$delegate;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final HotDynamicListFragment getInstance() {
            HotDynamicListFragment hotDynamicListFragment = new HotDynamicListFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("position", 1);
            bundle.putInt("type", 3);
            hotDynamicListFragment.setArguments(bundle);
            return hotDynamicListFragment;
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0018\u0010\n\u001a\u00020\u000f2\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0016R.\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;", "()V", "data", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;", "Lkotlin/collections/ArrayList;", "getData", "()Ljava/util/ArrayList;", "setData", "(Ljava/util/ArrayList;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class TopicAdapter extends RecyclerView.Adapter<AttachTopicHolder> {
        @NotNull
        private ArrayList<UgcTopicBean> data = new ArrayList<>();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
        public static final void m561onBindViewHolder$lambda0(AttachTopicHolder holder, UgcTopicBean ugcTopicBean, int i9) {
            Intrinsics.checkNotNullParameter(holder, "$holder");
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_hot_topic_click);
            TopicHomePageActivity.r0(holder.itemView.getContext(), ugcTopicBean);
        }

        @NotNull
        public final ArrayList<UgcTopicBean> getData() {
            return this.data;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.data.size();
        }

        public final void setData(@NotNull ArrayList<UgcTopicBean> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
            this.data = arrayList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull final AttachTopicHolder holder, int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            holder.f(this.data.get(i9), i9);
            holder.setOnClickListener(new AttachTopicHolder.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.g
                @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.AttachTopicHolder.b
                public final void a(UgcTopicBean ugcTopicBean, int i10) {
                    HotDynamicListFragment.TopicAdapter.m561onBindViewHolder$lambda0(AttachTopicHolder.this, ugcTopicBean, i10);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public AttachTopicHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new AttachTopicHolder(parent, R.drawable.bg_item_topic_2);
        }

        public final void setData(@Nullable List<UgcTopicBean> list) {
            this.data.clear();
            if (list != null) {
                this.data.addAll(list);
            }
            notifyDataSetChanged();
        }
    }

    public HotDynamicListFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<RecyclerView>() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.HotDynamicListFragment$topicListView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RecyclerView invoke() {
                RecyclerView recyclerView = new RecyclerView(HotDynamicListFragment.this.requireActivity());
                recyclerView.setBackgroundColor(-1);
                recyclerView.setPadding(DensityUtil.dp2px(4.0f), DensityUtil.dp2px(5.0f), DensityUtil.dp2px(4.0f), DensityUtil.dp2px(5.0f));
                return recyclerView;
            }
        });
        this.topicListView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<TopicAdapter>() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.HotDynamicListFragment$topicAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HotDynamicListFragment.TopicAdapter invoke() {
                return new HotDynamicListFragment.TopicAdapter();
            }
        });
        this.topicAdapter$delegate = lazy2;
    }

    @JvmStatic
    @NotNull
    public static final HotDynamicListFragment getInstance() {
        return Companion.getInstance();
    }

    private final void loadTopic() {
        post("tokens/search/findRecommendAndHotTopicList").v("recommendCount", 10).v("hotCount", 0).M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<? extends UgcTopicBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.HotDynamicListFragment$loadTopic$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<? extends UgcTopicBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(List<? extends UgcTopicBean> list, FaceCastBaseResponse<List<? extends UgcTopicBean>> faceCastBaseResponse) {
                onResponse2(list, (FaceCastBaseResponse<List<UgcTopicBean>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable List<? extends UgcTopicBean> list, @NotNull FaceCastBaseResponse<List<UgcTopicBean>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                List<UgcTopicBean> asMutableList = TypeIntrinsics.asMutableList(list);
                if (list != null) {
                    HotDynamicListFragment.this.writeCache(list);
                    HotDynamicListFragment.this.getTopicAdapter().setData(asMutableList);
                }
            }
        });
    }

    private final void readCache() {
        List<UgcTopicBean> list = (List) com.guochao.faceshow.aaspring.manager.b.a(BaseConfig.DB_TYPE_TOPIC_NAME, "topics", new TypeToken<List<? extends UgcTopicBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.HotDynamicListFragment$readCache$data$1
        }.getType());
        if (list == null || list.isEmpty()) {
            return;
        }
        getList().clear();
        getTopicAdapter().setData(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeCache(List<? extends UgcTopicBean> list) {
        com.guochao.faceshow.aaspring.manager.b.f(BaseConfig.DB_TYPE_TOPIC_NAME, "topics", list);
    }

    @NotNull
    public final TopicAdapter getTopicAdapter() {
        return (TopicAdapter) this.topicAdapter$delegate.getValue();
    }

    @NotNull
    public final RecyclerView getTopicListView() {
        return (RecyclerView) this.topicListView$delegate.getValue();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
        addHeaderView(getTopicListView(), 20234);
        getTopicListView().setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        getTopicListView().setAdapter(getTopicAdapter());
        readCache();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        super.loadData(i9);
        if (i9 == getDefaultPage()) {
            loadTopic();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, aa.e
    public /* bridge */ /* synthetic */ void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9) {
        aa.d.a(this, baseDynamicViewHolder, dynamicBean, i9);
    }
}
