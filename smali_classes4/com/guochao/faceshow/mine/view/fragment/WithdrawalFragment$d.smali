.class Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/mine/model/MyWalletBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->T1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z

    if-eqz p1, :cond_5

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp9/a;->t(Lcom/guochao/faceshow/mine/model/MyWalletBean;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFcontunt1:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getWithDrawBalance()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getFreezeNum()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvWithdrawalOf:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getWithDrawBalance()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getF()I

    move-result p2

    int-to-long v3, p2

    const/4 p2, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->S1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->S1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->Q1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getFreezeNum()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreeze:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeJia:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeTip:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvAvailableBalance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeBalance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getFreezeNum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeJia:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeTip:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreeze:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvAvailableBalance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreeze:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeJia:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeTip:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreeze:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvAvailableBalance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;->a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
