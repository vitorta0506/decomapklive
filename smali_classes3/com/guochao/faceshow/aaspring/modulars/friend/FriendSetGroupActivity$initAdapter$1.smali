.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    const v0, 0x7f0d01fc

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->convert$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->setCheckIndex(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;I)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/db/GroupInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v3, 0x7f0a04a2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_5

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    const v0, 0x7f12059a

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v4

    :goto_2
    invoke-virtual {p1, v3, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    .line 5
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getCheckIndex()I

    move-result p2

    const v0, 0x7f0a0add

    if-ne p2, p3, :cond_8

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/ImageView;

    :cond_6
    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/ImageView;

    :cond_9
    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    const/16 p2, 0x8

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-eqz p1, :cond_b

    .line 8
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_b

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;

    invoke-direct {v0, p3, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;I)V

    return-void
.end method
