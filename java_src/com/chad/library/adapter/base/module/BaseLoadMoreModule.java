package com.chad.library.adapter.base.module;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.j;
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010#\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\"¢\u0006\u0004\bI\u0010JJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0011\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0006J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010\u0017\u001a\u00020\u0002J\u0012\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u0006H\u0007J\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001b\u001a\u00020\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u000f\u0010!\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u001f\u0010 R\u001c\u0010#\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R$\u0010)\u001a\u00020'2\u0006\u0010(\u001a\u00020'8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R$\u0010-\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b-\u0010&\u001a\u0004\b-\u0010.R\"\u00100\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00106\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010&\u001a\u0004\b7\u0010.\"\u0004\b8\u00109R\"\u0010:\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010&\u001a\u0004\b:\u0010.\"\u0004\b;\u00109R\"\u0010<\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010&\u001a\u0004\b<\u0010.\"\u0004\b=\u00109R*\u0010?\u001a\u00020\n2\u0006\u0010>\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010\u0015R*\u0010D\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010&\u001a\u0004\bD\u0010.\"\u0004\bE\u00109R\u0011\u0010F\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bF\u0010.R\u0011\u0010H\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bG\u0010B¨\u0006K"}, d2 = {"Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "Lx0/c;", "", "invokeLoadMoreListener", "Landroidx/recyclerview/widget/LinearLayoutManager;", "llm", "", "isFullScreen", "", "numbers", "", "getTheBiggestNumber", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "viewHolder", "setupViewHolder$com_github_CymChad_brvah", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "setupViewHolder", "loadMoreToLoading", "hasLoadMoreView", "position", "autoLoadMore$com_github_CymChad_brvah", "(I)V", "autoLoadMore", "checkDisableLoadMoreIfNotFullPage", "gone", "loadMoreEnd", "loadMoreComplete", "loadMoreFail", "Lx0/j;", "listener", "setOnLoadMoreListener", "reset$com_github_CymChad_brvah", "()V", "reset", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "mNextLoadEnable", "Z", "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "<set-?>", "loadMoreStatus", "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "getLoadMoreStatus", "()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "isLoadEndMoreGone", "()Z", "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "loadMoreView", "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "getLoadMoreView", "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "setLoadMoreView", "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V", "enableLoadMoreEndClick", "getEnableLoadMoreEndClick", "setEnableLoadMoreEndClick", "(Z)V", "isAutoLoadMore", "setAutoLoadMore", "isEnableLoadMoreIfNotFullPage", "setEnableLoadMoreIfNotFullPage", "value", "preLoadNumber", "I", "getPreLoadNumber", "()I", "setPreLoadNumber", "isEnableLoadMore", "setEnableLoadMore", "isLoading", "getLoadMoreViewPosition", "loadMoreViewPosition", "<init>", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class BaseLoadMoreModule implements x0.c {
    @NotNull
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean enableLoadMoreEndClick;
    private boolean isAutoLoadMore;
    private boolean isEnableLoadMore;
    private boolean isEnableLoadMoreIfNotFullPage;
    private boolean isLoadEndMoreGone;
    @NotNull
    private LoadMoreStatus loadMoreStatus;
    @NotNull
    private BaseLoadMoreView loadMoreView;
    @Nullable
    private j mLoadMoreListener;
    private boolean mNextLoadEnable;
    private int preLoadNumber;

    public BaseLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        this.mNextLoadEnable = true;
        this.loadMoreStatus = LoadMoreStatus.Complete;
        this.loadMoreView = LoadMoreModuleConfig.getDefLoadMoreView();
        this.isAutoLoadMore = true;
        this.isEnableLoadMoreIfNotFullPage = true;
        this.preLoadNumber = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkDisableLoadMoreIfNotFullPage$lambda-4  reason: not valid java name */
    public static final void m35checkDisableLoadMoreIfNotFullPage$lambda4(BaseLoadMoreModule this$0, RecyclerView.LayoutManager manager) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(manager, "$manager");
        if (this$0.isFullScreen((LinearLayoutManager) manager)) {
            this$0.mNextLoadEnable = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkDisableLoadMoreIfNotFullPage$lambda-5  reason: not valid java name */
    public static final void m36checkDisableLoadMoreIfNotFullPage$lambda5(RecyclerView.LayoutManager manager, BaseLoadMoreModule this$0) {
        Intrinsics.checkNotNullParameter(manager, "$manager");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) manager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        if (this$0.getTheBiggestNumber(iArr) + 1 != this$0.baseQuickAdapter.getItemCount()) {
            this$0.mNextLoadEnable = true;
        }
    }

    private final int getTheBiggestNumber(int[] iArr) {
        int i9 = -1;
        if (iArr != null) {
            int i10 = 0;
            if (!(iArr.length == 0)) {
                int length = iArr.length;
                while (i10 < length) {
                    int i11 = iArr[i10];
                    i10++;
                    if (i11 > i9) {
                        i9 = i11;
                    }
                }
            }
        }
        return i9;
    }

    private final void invokeLoadMoreListener() {
        j jVar;
        this.loadMoreStatus = LoadMoreStatus.Loading;
        RecyclerView recyclerViewOrNull = this.baseQuickAdapter.getRecyclerViewOrNull();
        if ((recyclerViewOrNull == null ? null : Boolean.valueOf(recyclerViewOrNull.post(new Runnable() { // from class: com.chad.library.adapter.base.module.e
            @Override // java.lang.Runnable
            public final void run() {
                BaseLoadMoreModule.m37invokeLoadMoreListener$lambda3$lambda2(BaseLoadMoreModule.this);
            }
        }))) != null || (jVar = this.mLoadMoreListener) == null) {
            return;
        }
        jVar.onLoadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeLoadMoreListener$lambda-3$lambda-2  reason: not valid java name */
    public static final void m37invokeLoadMoreListener$lambda3$lambda2(BaseLoadMoreModule this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        j jVar = this$0.mLoadMoreListener;
        if (jVar == null) {
            return;
        }
        jVar.onLoadMore();
    }

    private final boolean isFullScreen(LinearLayoutManager linearLayoutManager) {
        return (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == this.baseQuickAdapter.getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    public static /* synthetic */ void loadMoreEnd$default(BaseLoadMoreModule baseLoadMoreModule, boolean z10, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        baseLoadMoreModule.loadMoreEnd(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupViewHolder$lambda-1  reason: not valid java name */
    public static final void m38setupViewHolder$lambda1(BaseLoadMoreModule this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getLoadMoreStatus() == LoadMoreStatus.Fail) {
            this$0.loadMoreToLoading();
        } else if (this$0.getLoadMoreStatus() == LoadMoreStatus.Complete) {
            this$0.loadMoreToLoading();
        } else if (this$0.getEnableLoadMoreEndClick() && this$0.getLoadMoreStatus() == LoadMoreStatus.End) {
            this$0.loadMoreToLoading();
        }
    }

    public final void autoLoadMore$com_github_CymChad_brvah(int i9) {
        LoadMoreStatus loadMoreStatus;
        if (this.isAutoLoadMore && hasLoadMoreView() && i9 >= this.baseQuickAdapter.getItemCount() - this.preLoadNumber && (loadMoreStatus = this.loadMoreStatus) == LoadMoreStatus.Complete && loadMoreStatus != LoadMoreStatus.Loading && this.mNextLoadEnable) {
            invokeLoadMoreListener();
        }
    }

    public final void checkDisableLoadMoreIfNotFullPage() {
        final RecyclerView.LayoutManager layoutManager;
        if (this.isEnableLoadMoreIfNotFullPage) {
            return;
        }
        this.mNextLoadEnable = false;
        RecyclerView recyclerViewOrNull = this.baseQuickAdapter.getRecyclerViewOrNull();
        if (recyclerViewOrNull == null || (layoutManager = recyclerViewOrNull.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerViewOrNull.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.module.f
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadMoreModule.m35checkDisableLoadMoreIfNotFullPage$lambda4(BaseLoadMoreModule.this, layoutManager);
                }
            }, 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerViewOrNull.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.module.d
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadMoreModule.m36checkDisableLoadMoreIfNotFullPage$lambda5(RecyclerView.LayoutManager.this, this);
                }
            }, 50L);
        }
    }

    public final boolean getEnableLoadMoreEndClick() {
        return this.enableLoadMoreEndClick;
    }

    @NotNull
    public final LoadMoreStatus getLoadMoreStatus() {
        return this.loadMoreStatus;
    }

    @NotNull
    public final BaseLoadMoreView getLoadMoreView() {
        return this.loadMoreView;
    }

    public final int getLoadMoreViewPosition() {
        if (this.baseQuickAdapter.hasEmptyView()) {
            return -1;
        }
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.baseQuickAdapter;
        return baseQuickAdapter.getHeaderLayoutCount() + baseQuickAdapter.getData().size() + baseQuickAdapter.getFooterLayoutCount();
    }

    public final int getPreLoadNumber() {
        return this.preLoadNumber;
    }

    public final boolean hasLoadMoreView() {
        if (this.mLoadMoreListener == null || !this.isEnableLoadMore) {
            return false;
        }
        if (this.loadMoreStatus == LoadMoreStatus.End && this.isLoadEndMoreGone) {
            return false;
        }
        return !this.baseQuickAdapter.getData().isEmpty();
    }

    public final boolean isAutoLoadMore() {
        return this.isAutoLoadMore;
    }

    public final boolean isEnableLoadMore() {
        return this.isEnableLoadMore;
    }

    public final boolean isEnableLoadMoreIfNotFullPage() {
        return this.isEnableLoadMoreIfNotFullPage;
    }

    public final boolean isLoadEndMoreGone() {
        return this.isLoadEndMoreGone;
    }

    public final boolean isLoading() {
        return this.loadMoreStatus == LoadMoreStatus.Loading;
    }

    public final void loadMoreComplete() {
        if (hasLoadMoreView()) {
            this.loadMoreStatus = LoadMoreStatus.Complete;
            this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
            checkDisableLoadMoreIfNotFullPage();
        }
    }

    @JvmOverloads
    public final void loadMoreEnd() {
        loadMoreEnd$default(this, false, 1, null);
    }

    @JvmOverloads
    public final void loadMoreEnd(boolean z10) {
        if (hasLoadMoreView()) {
            this.isLoadEndMoreGone = z10;
            this.loadMoreStatus = LoadMoreStatus.End;
            if (z10) {
                this.baseQuickAdapter.notifyItemRemoved(getLoadMoreViewPosition());
            } else {
                this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
            }
        }
    }

    public final void loadMoreFail() {
        if (hasLoadMoreView()) {
            this.loadMoreStatus = LoadMoreStatus.Fail;
            this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
        }
    }

    public final void loadMoreToLoading() {
        LoadMoreStatus loadMoreStatus = this.loadMoreStatus;
        LoadMoreStatus loadMoreStatus2 = LoadMoreStatus.Loading;
        if (loadMoreStatus == loadMoreStatus2) {
            return;
        }
        this.loadMoreStatus = loadMoreStatus2;
        this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
        invokeLoadMoreListener();
    }

    public final void reset$com_github_CymChad_brvah() {
        if (this.mLoadMoreListener != null) {
            setEnableLoadMore(true);
            this.loadMoreStatus = LoadMoreStatus.Complete;
        }
    }

    public final void setAutoLoadMore(boolean z10) {
        this.isAutoLoadMore = z10;
    }

    public final void setEnableLoadMore(boolean z10) {
        boolean hasLoadMoreView = hasLoadMoreView();
        this.isEnableLoadMore = z10;
        boolean hasLoadMoreView2 = hasLoadMoreView();
        if (hasLoadMoreView) {
            if (hasLoadMoreView2) {
                return;
            }
            this.baseQuickAdapter.notifyItemRemoved(getLoadMoreViewPosition());
        } else if (hasLoadMoreView2) {
            this.loadMoreStatus = LoadMoreStatus.Complete;
            this.baseQuickAdapter.notifyItemInserted(getLoadMoreViewPosition());
        }
    }

    public final void setEnableLoadMoreEndClick(boolean z10) {
        this.enableLoadMoreEndClick = z10;
    }

    public final void setEnableLoadMoreIfNotFullPage(boolean z10) {
        this.isEnableLoadMoreIfNotFullPage = z10;
    }

    public final void setLoadMoreView(@NotNull BaseLoadMoreView baseLoadMoreView) {
        Intrinsics.checkNotNullParameter(baseLoadMoreView, "<set-?>");
        this.loadMoreView = baseLoadMoreView;
    }

    @Override // x0.c
    public void setOnLoadMoreListener(@Nullable j jVar) {
        this.mLoadMoreListener = jVar;
        setEnableLoadMore(true);
    }

    public final void setPreLoadNumber(int i9) {
        if (i9 > 1) {
            this.preLoadNumber = i9;
        }
    }

    public final void setupViewHolder$com_github_CymChad_brvah(@NotNull BaseViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.module.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseLoadMoreModule.m38setupViewHolder$lambda1(BaseLoadMoreModule.this, view);
            }
        });
    }
}
