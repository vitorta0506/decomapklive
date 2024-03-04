.class public final Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->initUserTrankData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001J.\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0005H\u0016J\u001e\u0010\u000b\u001a\u00020\u00072\u0014\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

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
            "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 9
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
            "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_29

    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1e

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0a0b84

    const v2, 0x7f0a0a2a

    const/16 v3, 0x8

    const v4, 0x7f0a03d6

    const/4 v5, 0x0

    if-eqz v0, :cond_22

    const/4 v6, 0x1

    const v7, 0x7f0f0089

    if-eq v0, v6, :cond_19

    const/4 v8, 0x2

    if-eq v0, v8, :cond_e

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_3

    :cond_4
    move-object v0, v5

    :goto_3
    if-eqz p1, :cond_5

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v3, v5

    .line 7
    :goto_4
    invoke-static {v0, v3, v7}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_5

    :cond_6
    move-object v0, v5

    :goto_5
    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_7

    :cond_8
    move-object v0, v5

    :goto_7
    if-eqz p1, :cond_9

    .line 10
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object v2, v5

    .line 11
    :goto_8
    invoke-static {v0, v2, v7}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_9

    :cond_a
    move-object v0, v5

    :goto_9
    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_a
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_b

    :cond_c
    move-object p2, v5

    :goto_b
    if-eqz p1, :cond_d

    .line 14
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    if-eqz p1, :cond_d

    iget-object v5, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    .line 15
    :cond_d
    invoke-static {p2, v5, v7}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto/16 :goto_1e

    .line 16
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_c

    :cond_f
    move-object v0, v5

    :goto_c
    if-nez v0, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_d
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_e

    :cond_11
    move-object v0, v5

    :goto_e
    if-eqz p1, :cond_12

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    if-eqz v4, :cond_12

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    goto :goto_f

    :cond_12
    move-object v4, v5

    .line 19
    :goto_f
    invoke-static {v0, v4, v7}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_10

    :cond_13
    move-object v0, v5

    :goto_10
    if-nez v0, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_11
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_12

    :cond_15
    move-object p2, v5

    :goto_12
    if-eqz p1, :cond_16

    .line 22
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    goto :goto_13

    :cond_16
    move-object p1, v5

    .line 23
    :goto_13
    invoke-static {p2, p1, v7}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/guochao/faceshow/views/NormalCircleImageView;

    :cond_17
    if-nez v5, :cond_18

    goto/16 :goto_1e

    :cond_18
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1e

    .line 25
    :cond_19
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_14

    :cond_1a
    move-object v0, v5

    :goto_14
    if-nez v0, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    :goto_15
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_16

    :cond_1c
    move-object v0, v5

    :goto_16
    if-eqz p1, :cond_1d

    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;

    if-eqz p1, :cond_1d

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageTrankItemData;->img:Ljava/lang/String;

    goto :goto_17

    :cond_1d
    move-object p1, v5

    .line 28
    :goto_17
    invoke-static {v0, p1, v7}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_18

    :cond_1e
    move-object p1, v5

    :goto_18
    if-nez p1, :cond_1f

    goto :goto_19

    :cond_1f
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :goto_19
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/guochao/faceshow/views/NormalCircleImageView;

    :cond_20
    if-nez v5, :cond_21

    goto :goto_1e

    :cond_21
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 31
    :cond_22
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_1a

    :cond_23
    move-object p1, v5

    :goto_1a
    if-nez p1, :cond_24

    goto :goto_1b

    :cond_24
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :goto_1b
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    goto :goto_1c

    :cond_25
    move-object p1, v5

    :goto_1c
    if-nez p1, :cond_26

    goto :goto_1d

    :cond_26
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :goto_1d
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/guochao/faceshow/views/NormalCircleImageView;

    :cond_27
    if-nez v5, :cond_28

    goto :goto_1e

    :cond_28
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_29
    :goto_1e
    return-void
.end method
