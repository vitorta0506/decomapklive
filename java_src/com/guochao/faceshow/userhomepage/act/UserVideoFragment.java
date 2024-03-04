package com.guochao.faceshow.userhomepage.act;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.ActivityOptionsCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.MyVideoBean;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.activity.PersonVideoActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Tool;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 &2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001&B\u0005¢\u0006\u0002\u0010\u0004J$\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\u0012\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0011H\u0016J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0016J\b\u0010#\u001a\u00020\u000eH\u0016J$\u0010$\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010%\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;", "Lcom/guochao/faceshow/aaspring/beans/VideoItem;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "()V", "mEmptyView", "Landroid/view/View;", "mUserId", "", "getMUserId", "()Ljava/lang/String;", "setMUserId", "(Ljava/lang/String;)V", "convertItem", "", "holder", "position", "", BaseConfig.ITEM, "getLayoutId", "initView", ViewHierarchyConstants.VIEW_KEY, "loadData", "pageNo", "notifyDataLoaded", "hasMoreData", "", "onCreateLayoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onDestroyView", "onItemClick", "showEmptyView", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserVideoFragment extends BaseRecyclerViewFragment<VideoItem, BaseViewHolder> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private View mEmptyView;
    @Nullable
    private String mUserId;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;", Contants.USER_ID, "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final UserVideoFragment getInstance(@Nullable String str) {
            UserVideoFragment userVideoFragment = new UserVideoFragment();
            Bundle bundle = new Bundle();
            bundle.putString(Contants.USER_ID, str);
            userVideoFragment.setArguments(bundle);
            return userVideoFragment;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showEmptyView$lambda-3  reason: not valid java name */
    public static final void m799showEmptyView$lambda3(UserVideoFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.reload();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_base_recycler_view_withempty;
    }

    @Nullable
    public final String getMUserId() {
        return this.mUserId;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        View findViewById;
        View findViewById2;
        super.initView(view);
        if (view != null && (findViewById2 = view.findViewById(R.id.recycler_content_area)) != null) {
            findViewById2.setBackgroundColor(-1);
        }
        getRecyclerView().setPaddingRelative(DensityUtil.dp2px(3.0f), DensityUtil.dp2px(3.0f), DensityUtil.dp2px(3.0f), 0);
        Bundle arguments = getArguments();
        this.mUserId = arguments != null ? arguments.getString(Contants.USER_ID) : null;
        if (view == null || (findViewById = view.findViewById(R.id.recycler_content_area)) == null) {
            return;
        }
        findViewById.setPadding(0, 0, 0, Intrinsics.areEqual(getCurrentUser().userId, this.mUserId) ? 0 : DensityUtil.dp2px(89.0f));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        String str = this.mUserId;
        if (str != null) {
            GCRequestJava putBody = new GCRequestJava(Contants.getMyVideoNew).putBody(Contants.USER_ID, str).putBody("is_private", "1").putBody("page", Integer.valueOf(i9));
            putBody.getCallbackHolder().setSuccessClz(MyVideoBean.class);
            putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.userhomepage.act.UserVideoFragment$loadData$lambda-2$$inlined$success$1
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
                    MyVideoBean myVideoBean = (MyVideoBean) _response.getData();
                    if (UserVideoFragment.this.getCurrentPage() == UserVideoFragment.this.getDefaultPage()) {
                        UserVideoFragment.this.getList().clear();
                    }
                    if (myVideoBean != null && myVideoBean.getList() != null) {
                        List<VideoItem> list = UserVideoFragment.this.getList();
                        List<VideoItem> list2 = myVideoBean.getList();
                        Intrinsics.checkNotNullExpressionValue(list2, "data.list");
                        list.addAll(list2);
                        UserVideoFragment.this.notifyDataLoaded(myVideoBean.getList().size() >= 10);
                        return;
                    }
                    UserVideoFragment.this.notifyDataLoaded(false);
                }
            });
            putBody.getCallbackHolder().setFailClz(Object.class);
            putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.userhomepage.act.UserVideoFragment$loadData$lambda-2$$inlined$fail$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                    invoke2(response);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Response<Object> response) {
                    Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                    UserVideoFragment.this.notifyDataLoaded(false);
                }
            });
            putBody.request();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        if (!z10) {
            showEmptyView();
            return;
        }
        View view = this.mEmptyView;
        if (view != null) {
            removeHeaderView(view);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    @NotNull
    public RecyclerView.LayoutManager onCreateLayoutManager(@Nullable RecyclerView recyclerView) {
        return new GridLayoutManager(getActivity(), 2);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    public final void setMUserId(@Nullable String str) {
        this.mUserId = str;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            View view = this.mEmptyView;
            if (view == null) {
                View inflate = getLayoutInflater().inflate(R.layout.layout_live_list_empty, (ViewGroup) getRecyclerView(), false);
                this.mEmptyView = inflate;
                if (inflate != null) {
                    inflate.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.v
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            UserVideoFragment.m799showEmptyView$lambda3(UserVideoFragment.this, view2);
                        }
                    });
                }
                View view2 = this.mEmptyView;
                ViewGroup.LayoutParams layoutParams = view2 != null ? view2.getLayoutParams() : null;
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.height = -1;
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    View view3 = this.mEmptyView;
                    if (view3 != null) {
                        view3.setLayoutParams(marginLayoutParams);
                    }
                    View view4 = this.mEmptyView;
                    if (view4 != null) {
                        int paddingLeft = view4 != null ? view4.getPaddingLeft() : 0;
                        int dp2px = DensityUtil.dp2px(getActivity(), 64.0f);
                        View view5 = this.mEmptyView;
                        int right = view5 != null ? view5.getRight() : 0;
                        View view6 = this.mEmptyView;
                        view4.setPadding(paddingLeft, dp2px, right, view6 != null ? view6.getPaddingBottom() : 0);
                    }
                }
                View view7 = this.mEmptyView;
                if (view7 != null) {
                    view7.setBackgroundResource(R.color.white);
                }
            } else {
                removeHeaderView(view);
            }
            addHeaderView(this.mEmptyView, 1002);
            setFooterView(8);
        } else {
            View view8 = this.mEmptyView;
            if (view8 != null) {
                removeHeaderView(view8);
            }
        }
        View view9 = this.mEmptyView;
        if (view9 == null || view9 == null) {
            return;
        }
        view9.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void convertItem(@Nullable BaseViewHolder baseViewHolder, int i9, @Nullable VideoItem videoItem) {
        hc.a.s(baseViewHolder != null ? (ImageView) baseViewHolder.getView(R.id.cover) : null, videoItem != null ? videoItem.getVideoImg() : null, 10);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.grid_item_my_video, parent, false));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    public void onItemClick(@Nullable BaseViewHolder baseViewHolder, int i9, @Nullable VideoItem videoItem) {
        View view = getView();
        Intrinsics.checkNotNull(view);
        View view2 = getView();
        Intrinsics.checkNotNull(view2);
        View view3 = getView();
        Intrinsics.checkNotNull(view3);
        ActivityOptionsCompat makeScaleUpAnimation = ActivityOptionsCompat.makeScaleUpAnimation(view, view2.getWidth() / 2, view3.getHeight() / 2, 0, 0);
        Intrinsics.checkNotNullExpressionValue(makeScaleUpAnimation, "makeScaleUpAnimation(vie… view!!.height / 2, 0, 0)");
        Tool.mDataList = getList();
        Intent intent = new Intent(getContext(), PersonVideoActivity.class);
        PersonVideoActivity.VideoUrlConfig videoUrlConfig = new PersonVideoActivity.VideoUrlConfig();
        HashMap<String, String> hashMap = new HashMap<>();
        String str = getCurrentUser().userId;
        Intrinsics.checkNotNullExpressionValue(str, "currentUser.userId");
        hashMap.put(Contants.USER_ID, str);
        hashMap.put("page", getCurrentPage() + "");
        hashMap.put("is_private", "1");
        hashMap.put("limit", "24");
        videoUrlConfig.e(Contants.getMyVideoNew);
        videoUrlConfig.c(getCurrentPage());
        videoUrlConfig.d(hashMap);
        intent.putExtra("config", videoUrlConfig);
        intent.putExtra("position", i9);
        intent.putExtra("currPage", getCurrentPage() + "");
        intent.putExtra(Contants.USER_ID, getCurrentUser().userId);
        intent.putExtra("from", 12);
        startActivity(intent, makeScaleUpAnimation.toBundle());
    }
}
