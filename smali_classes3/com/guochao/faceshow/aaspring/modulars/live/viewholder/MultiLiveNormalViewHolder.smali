.class public final Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bindValue",
        "",
        "roomItemData",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "position",
        "",
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
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    const p2, 0x7f0a0715

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isPrivateLiveRoom()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0a00f6

    .line 4
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getAudienceList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "audienceList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p2, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->setAvatarList(Ljava/util/List;)V

    :cond_2
    const p2, 0x7f0a057e

    .line 7
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveImg()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const v1, 0x7f0f025e

    .line 9
    invoke-static {p2, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    const p2, 0x7f0a04ff

    .line 10
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->setLabel(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
