.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;
.super Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;",
        "itemView",
        "Landroid/view/View;",
        "gcUser",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "f2fChatMessageFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;",
        "(Landroid/view/View;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V",
        "convert",
        "",
        "f2FChatMessageModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;",
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
.field private final f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcUser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2fChatMessageFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    return-void
.end method

.method public static final synthetic access$getGcUser$p(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-object p0
.end method

.method public static synthetic c(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->convert$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;

    invoke-direct {v3, p2, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;)V

    .line 6
    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2FChatMessageModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0b77

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a04ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f0a04fd

    const v4, 0x7f0a00f0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->f2fChatMessageFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    invoke-static {v1}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    .line 12
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_0

    :cond_0
    const v0, 0x7f1203a5

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08027e

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, -0x2

    .line 19
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/holder/b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/b;-><init>(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
