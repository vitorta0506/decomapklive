.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserOnSeatAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0008H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;",
        "list",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;",
        "(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Ljava/util/List;)V",
        "currentSelected",
        "",
        "getCurrentSelected",
        "()I",
        "setCurrentSelected",
        "(I)V",
        "currentSelectedUser",
        "getCurrentSelectedUser",
        "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;",
        "getList",
        "()Ljava/util/List;",
        "getItemCount",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field private currentSelected:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->list:Ljava/util/List;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->currentSelected:I

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->currentSelected:I

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;->getItem()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->access$setSendBtnEnable(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)V

    return-void
.end method


# virtual methods
.method public final getCurrentSelected()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->currentSelected:I

    return v0
.end method

.method public final getCurrentSelectedUser()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->currentSelected:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;I)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->currentSelected:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->access$getToUser(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;->getViewBinding()Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    .line 5
    iget-object v3, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->userHead:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;->getItem()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0089

    .line 7
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    .line 8
    invoke-static {v3, v4, v5, v6}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 9
    iget-object v3, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;->getItem()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->access$getToUser(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_2
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivNumberBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->tvNumber:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->tvNumber:Landroid/widget/TextView;

    const v1, 0x7f08054c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivHollowCircle:Landroid/widget/ImageView;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivNumberLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivNumberBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->tvNumber:Landroid/widget/TextView;

    const v1, 0x7f080551

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivHollowCircle:Landroid/widget/ImageView;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->tvNumber:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06009c

    .line 24
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->ivNumberLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;

    move-result-object p1

    const-string v0, "inflate(\n               \u2026lse\n                    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;-><init>(Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->access$getToUser(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/y;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/y;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2
.end method

.method public final setCurrentSelected(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;->currentSelected:I

    return-void
.end method
