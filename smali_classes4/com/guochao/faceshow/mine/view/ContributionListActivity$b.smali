.class Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;
.super Lkc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/ContributionListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-direct {p0}, Lkc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->d0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->g0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V

    return-void
.end method

.method public e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->i0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->e0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->g0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B(Z)V

    :goto_0
    return-void
.end method
