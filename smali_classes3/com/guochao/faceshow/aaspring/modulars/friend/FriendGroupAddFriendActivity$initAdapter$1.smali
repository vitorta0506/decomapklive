.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "convert",
        "",
        "holder",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;",
        "item",
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


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    const v0, 0x7f0d0428

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;ILcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;->convert$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;ILcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;ILcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getFriendList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    .line 3
    :cond_1
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->setFriendList(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getFriendList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/FriendInfo;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/db/FriendInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getHeadImg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const v1, 0x7f0a00fd

    const v2, 0x7f0f0089

    .line 3
    invoke-virtual {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setImageByUrl(ILjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    :cond_0
    if-eqz p1, :cond_2

    const v0, 0x7f0a0dc5

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    :cond_2
    const v0, 0x7f0a01f3

    if-eqz p1, :cond_3

    const v1, 0x7f0f05c8

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    const v1, 0x7f0a0424

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setImageByUrl(ILjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    :cond_4
    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;

    invoke-direct {v0, p2, p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;ILcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;->convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/FriendInfo;I)V

    return-void
.end method
