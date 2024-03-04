.class public final Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u001a\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "adapter",
        "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;",
        "page",
        "",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;)V",
        "getOneVOneRecord",
        "",
        "pageNo",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadData",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:I

.field public viewBinding:Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->page:I

    .line 3
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lx0/j;)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$2;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    return-object p0
.end method

.method public static final synthetic access$getPage$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->page:I

    return p0
.end method

.method public static final synthetic access$setPage$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->page:I

    return-void
.end method

.method private final getOneVOneRecord(I)V
    .locals 3

    const-string v0, "tokens/1v1/getMatchList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v1, 0x14

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->page:I

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->loadData(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->emptyText:Landroid/widget/TextView;

    const p2, 0x7f120688

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final loadData(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getOneVOneRecord(I)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    return-void
.end method
