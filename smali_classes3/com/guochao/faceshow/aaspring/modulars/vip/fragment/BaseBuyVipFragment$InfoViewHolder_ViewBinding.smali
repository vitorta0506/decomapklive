.class public Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    const v0, 0x7f0a0bad

    const-string v1, "field \'mView1\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView1:Landroid/view/View;

    const v0, 0x7f0a0bae

    const-string v1, "field \'mView2\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView1:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->mView2:Landroid/view/View;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
