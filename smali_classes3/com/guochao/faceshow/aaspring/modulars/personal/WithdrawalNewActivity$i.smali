.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->S0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->H0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Z)V

    :cond_0
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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;>;)V"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/util/List;)Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flPayoneer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivPayoneerMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivPayoneerMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->getPayoneerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Z)Z

    goto/16 :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerAccount()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;-><init>()V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->setPayoneerId(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->setId(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->getPayoneerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->a:I

    if-eq p1, p2, :cond_6

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    sget p2, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEER:I

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V

    goto :goto_3

    .line 24
    :cond_5
    :goto_2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->a:I

    if-eq p1, p2, :cond_6

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->H0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Z)V

    :cond_6
    :goto_3
    return-void
.end method
