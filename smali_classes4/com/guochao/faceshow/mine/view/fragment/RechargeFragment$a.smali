.class Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->R1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->S1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->loadData(I)V

    :goto_0
    return-void
.end method
