.class Lcom/guochao/faceshow/mine/view/BlackListActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BlackListActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$c;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$c;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->d0(Lcom/guochao/faceshow/mine/view/BlackListActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$c;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/BlackListActivity;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
