.class public Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment_ViewBinding;->b:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c35

    const-string v2, "field \'tvTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvTime:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0959

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c15

    const-string v2, "field \'tvIncome\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvIncome:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c30

    const-string v2, "field \'tvSpending\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvSpending:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a057f

    const-string v2, "field \'ivDateImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->ivDateImg:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0733

    const-string v2, "field \'lvTransactionRecord\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0580

    const-string v2, "field \'ivEmptyImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->ivEmptyImg:Landroid/widget/ImageView;

    .line 10
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09ad

    const-string v2, "field \'rlEmptyViewLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->rlEmptyViewLayout:Landroid/widget/RelativeLayout;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06b8

    const-string v2, "field \'llRootLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->llRootLayout:Landroid/widget/LinearLayout;

    .line 12
    const-class v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v1, 0x7f0a0961

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v0, 0x7f0a0ab9

    const-string v1, "field \'spaceWeight\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->spaceWeight:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment_ViewBinding;->b:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment_ViewBinding;->b:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvTime:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvIncome:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvSpending:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->ivDateImg:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->ivEmptyImg:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->rlEmptyViewLayout:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->llRootLayout:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->spaceWeight:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
