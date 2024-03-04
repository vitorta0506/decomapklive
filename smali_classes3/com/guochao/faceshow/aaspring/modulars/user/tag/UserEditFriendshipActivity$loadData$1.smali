.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "+",
        "Lcom/guochao/faceshow/bean/EmotionalTag;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J2\u0010\u0008\u001a\u00020\u00072\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00022\u0016\u0010\u0006\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00072\u0016\u0010\n\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/bean/EmotionalTag;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_1

    .line 4
    iget v2, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_3
    const/4 v3, 0x2

    if-nez v2, :cond_6

    goto :goto_0

    .line 9
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-le p1, p2, :cond_d

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvHotChat()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvHotChat()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvHotChat()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_c

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    if-ne v1, p2, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 15
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvSoulChat()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvSoulChat()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_10
    :goto_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvSoulChat()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_b

    :cond_11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getThirdDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_12

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    if-ne v1, p2, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 19
    :cond_13
    :goto_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_19

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvForeignerCountry()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :goto_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvForeignerCountry()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_16
    :goto_d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvForeignerCountry()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_f

    :cond_17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_18

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    if-ne v1, p2, :cond_18

    const/4 v1, 0x1

    goto :goto_e

    :cond_18
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 23
    :cond_19
    :goto_f
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1f

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvLocalCountry()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz p1, :cond_1c

    iget-object p1, p1, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvLocalCountry()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_1c
    :goto_11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvLocalCountry()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_13

    :cond_1d
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getSecondDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_1e

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    if-ne v1, p2, :cond_1e

    const/4 v1, 0x1

    goto :goto_12

    :cond_1e
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 27
    :cond_1f
    :goto_13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_25

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvOldAge()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_14

    :cond_20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :goto_14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz p1, :cond_22

    iget-object p1, p1, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    if-eqz p1, :cond_22

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvOldAge()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_15

    :cond_21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_22
    :goto_15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvOldAge()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_23

    goto :goto_17

    :cond_23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_24

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    if-ne v1, p2, :cond_24

    const/4 v1, 0x1

    goto :goto_16

    :cond_24
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 31
    :cond_25
    :goto_17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2b

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvSmallAge()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_18

    :cond_26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :goto_18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz p1, :cond_28

    iget-object p1, p1, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvSmallAge()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_19

    :cond_27
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_28
    :goto_19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getTvSmallAge()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_29

    goto :goto_1b

    :cond_29
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;->getFirstDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/EmotionalTag;

    if-eqz v1, :cond_2a

    iget v1, v1, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    if-ne v1, p2, :cond_2a

    goto :goto_1a

    :cond_2a
    const/4 p2, 0x0

    :goto_1a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2b
    :goto_1b
    return-void
.end method
