.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeadAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "layoutId",
        "",
        "(I)V",
        "convert",
        "",
        "holder",
        "item",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter$1;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a04bf

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->getDressHead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHead(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->get_hostCertificationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setHostCertificationUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->setUserVipData(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setOnline(Z)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->getLiveStatus()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setLivingStatus(Z)V

    const v0, 0x7f0a080d

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->getNickName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;)V

    return-void
.end method
