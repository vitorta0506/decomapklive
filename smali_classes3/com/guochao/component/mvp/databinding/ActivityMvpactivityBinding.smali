.class public final Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final badgeIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contactTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final getAllTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final getMVPTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final giftIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mvpBgIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mvpInfoView:Lcom/guochao/component/mvp/view/MVPInfoView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mvpLevelIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickNameTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scrollView:Landroidx/core/widget/NestedScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleView:Lcom/guochao/component/mvp/view/TitleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final top:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewpager:Lcom/guochao/component/mvp/view/WrapViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/guochao/component/mvp/view/MVPInfoView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Lcom/guochao/component/mvp/view/TitleView;Landroid/widget/ImageView;Lcom/guochao/component/mvp/view/WrapViewPager;)V
    .locals 2
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
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
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/guochao/component/mvp/view/MVPInfoView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroidx/core/widget/NestedScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/guochao/component/mvp/view/TitleView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/guochao/component/mvp/view/WrapViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->badgeIV:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->contactTV:Landroid/widget/TextView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getAllTV:Landroid/widget/TextView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getMVPTitle:Landroid/widget/TextView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->giftIV:Landroid/widget/ImageView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpBgIV:Landroid/widget/ImageView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpInfoView:Lcom/guochao/component/mvp/view/MVPInfoView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->mvpLevelIV:Landroid/widget/ImageView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->nickNameTV:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->titleTV:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->titleView:Lcom/guochao/component/mvp/view/TitleView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->top:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->viewpager:Lcom/guochao/component/mvp/view/WrapViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;
    .locals 21
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/guochao/component/mvp/R$id;->avatar_view:I

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/guochao/component/mvp/R$id;->badgeIV:I

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/guochao/component/mvp/R$id;->contactTV:I

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/guochao/component/mvp/R$id;->getAllTV:I

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/guochao/component/mvp/R$id;->getMVPTitle:I

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/guochao/component/mvp/R$id;->giftIV:I

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/guochao/component/mvp/R$id;->mvpBgIV:I

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/guochao/component/mvp/R$id;->mvpInfoView:I

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/guochao/component/mvp/view/MVPInfoView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/guochao/component/mvp/R$id;->mvpLevelIV:I

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/guochao/component/mvp/R$id;->nickNameTV:I

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/guochao/component/mvp/R$id;->scrollView:I

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/core/widget/NestedScrollView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcom/guochao/component/mvp/R$id;->tablayout:I

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcom/guochao/component/mvp/R$id;->titleTV:I

    .line 26
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcom/guochao/component/mvp/R$id;->titleView:I

    .line 28
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/guochao/component/mvp/view/TitleView;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcom/guochao/component/mvp/R$id;->top:I

    .line 30
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_0

    .line 31
    sget v1, Lcom/guochao/component/mvp/R$id;->viewpager:I

    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/guochao/component/mvp/view/WrapViewPager;

    if-eqz v20, :cond_0

    .line 33
    new-instance v1, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v20}, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/guochao/component/mvp/view/MVPInfoView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Lcom/guochao/component/mvp/view/TitleView;Landroid/widget/ImageView;Lcom/guochao/component/mvp/view/WrapViewPager;)V

    return-object v1

    .line 34
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;
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
    sget v0, Lcom/guochao/component/mvp/R$layout;->activity_mvpactivity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->bind(Landroid/view/View;)Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
