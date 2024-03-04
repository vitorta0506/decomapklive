.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->openGiftBox(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;
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
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;",
            ">;)V"
        }
    .end annotation

    const-string p2, "0"

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "2"

    const/4 v3, 0x1

    const-string v4, "1"

    if-nez v1, :cond_2

    .line 2
    :try_start_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getMoney()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    const v6, 0x7f0f01b6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getIsSuccess()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getIsSuccess()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-static {v5, v3, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;ZILjava/lang/String;)V

    goto/16 :goto_3

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getMoney()Ljava/lang/String;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v5, 0x7f0f020c

    const v6, 0x7f0f020b

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getMoney()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getMoney()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getIsSuccess()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getIsSuccess()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;->getMoney()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;ZILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 13
    :catch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-static {p1, v0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;ZILjava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-static {p1, v0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;ZILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    const/4 v0, 0x0

    const-string v1, "0"

    invoke-static {p1, v0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;ZILjava/lang/String;)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;->a(Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
