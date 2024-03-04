.class Lcom/guochao/faceshow/activity/MyGiftListActivity$a;
.super Lkc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MyGiftListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MyGiftListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-direct {p0}, Lkc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d0(Lcom/guochao/faceshow/activity/MyGiftListActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->g0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V

    return-void
.end method

.method public e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->i0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->e0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;->a:Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->g0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B(Z)V

    :goto_0
    return-void
.end method
