.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    return-void
.end method
