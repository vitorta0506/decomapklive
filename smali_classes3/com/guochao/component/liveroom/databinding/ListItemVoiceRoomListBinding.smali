.class public final Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final badge:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final countryLogo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cover:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lockRL:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final memberCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final micCountArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mineTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final roomTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final seatArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tagsArea:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->badge:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->countryLogo:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->cover:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->lockRL:Landroid/widget/RelativeLayout;

    .line 7
    iput-object p6, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->memberCount:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->micCountArea:Landroid/widget/LinearLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->mineTV:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->onlineTime:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->roomTitle:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->seatArea:Landroid/widget/LinearLayout;

    .line 13
    iput-object p12, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 14
    iput-object p13, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->tagsArea:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/guochao/component/liveroom/R$id;->badge:I

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/guochao/component/liveroom/R$id;->country_logo:I

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/guochao/component/liveroom/R$id;->cover:I

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/guochao/component/liveroom/R$id;->lockRL:I

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/guochao/component/liveroom/R$id;->member_count:I

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/guochao/component/liveroom/R$id;->mic_count_area:I

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/guochao/component/liveroom/R$id;->mineTV:I

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/guochao/component/liveroom/R$id;->online_time:I

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/guochao/component/liveroom/R$id;->room_title:I

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/guochao/component/liveroom/R$id;->seat_area:I

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/guochao/component/liveroom/R$id;->svga:I

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcom/guochao/component/liveroom/R$id;->tags_area:I

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    new-instance v1, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-object v4, v0

    check-cast v4, Landroidx/cardview/widget/CardView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/TextView;)V

    return-object v1

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget v0, Lcom/guochao/component/liveroom/R$layout;->list_item_voice_room_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
