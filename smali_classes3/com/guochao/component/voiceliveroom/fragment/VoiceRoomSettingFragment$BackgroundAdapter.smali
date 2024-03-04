.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
        "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Ljava/util/List;)V",
        "currentUserClicked",
        "",
        "currentBackground",
        "",
        "getItemCount",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "component_liveroom_release"
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
.field private currentUserClicked:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->list:Ljava/util/List;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->currentUserClicked:I

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->onCreateViewHolder$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->onBindViewHolder$lambda-5(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-5(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Landroid/view/View;)V
    .locals 0

    const-string p2, "$mode"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;->newInstance(Landroid/net/Uri;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "parentFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "pictureReview"

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->currentUserClicked:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final currentBackground()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->currentUserClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->list:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getSelected()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 5
    :goto_1
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getUrl()Landroid/net/Uri;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_4
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getId()I

    move-result v2

    if-ne v2, v1, :cond_5

    const-string v0, ""

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 12
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$id;->image:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->n(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Le0/h;

    .line 5
    new-instance v4, Ljc/e;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Ljc/e;-><init>(Landroid/content/Context;I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/a;->u0([Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    .line 6
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->currentUserClicked:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    sget v0, Lcom/guochao/component/liveroom/R$id;->icon:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 9
    sget v0, Lcom/guochao/component/liveroom/R$id;->cardView:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 10
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 11
    sget v1, Lcom/guochao/component/liveroom/R$id;->info:I

    sget v3, Lcom/guochao/component/liveroom/R$string;->setting_privacy_distance_default:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getFree()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 13
    sget v1, Lcom/guochao/component/liveroom/R$id;->info:I

    sget v3, Lcom/guochao/component/liveroom/R$string;->voice_room_free:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 14
    :cond_2
    :goto_1
    iget v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->currentUserClicked:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    if-ne v1, p1, :cond_3

    .line 15
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 17
    sget p1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_bg_expand:I

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v7, 0x0

    .line 18
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    new-instance v9, Lcom/guochao/component/voiceliveroom/fragment/c1;

    invoke-direct {v9, p2, p1}, Lcom/guochao/component/voiceliveroom/fragment/c1;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->getSelected()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 20
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 22
    sget p1, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_selected:I

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const/4 p1, 0x4

    .line 25
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/guochao/component/liveroom/R$layout;->grid_item_voice_room_background:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026ackground, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/b1;

    invoke-direct {v0, p0, p2}, Lcom/guochao/component/voiceliveroom/fragment/b1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
