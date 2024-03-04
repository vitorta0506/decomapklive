.class public final Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final myCard:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final region:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selected:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vipView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/views/LevelView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->myCard:Landroidx/cardview/widget/CardView;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->nickName:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->region:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->selected:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    .line 10
    iput-object p9, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->vipView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/component/liveroom/R$id;->avatar_view:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$id;->level_view:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/component/liveroom/R$id;->my_card:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/cardview/widget/CardView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/component/liveroom/R$id;->nick_name:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/component/liveroom/R$id;->region:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/component/liveroom/R$id;->selected:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/component/liveroom/R$id;->user_gender_age:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/component/liveroom/R$id;->vip_view:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    if-eqz v11, :cond_0

    .line 17
    new-instance v0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;-><init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;)V

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;
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
    sget v0, Lcom/guochao/component/liveroom/R$layout;->list_item_voice_members:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
