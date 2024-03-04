.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/j;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    return-void
.end method


# virtual methods
.method public final onLoadMore()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;)V

    return-void
.end method
