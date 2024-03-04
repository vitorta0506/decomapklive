.class public final Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final backButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bgHeaderLay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentArea:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final devView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editUserInfo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final freezeUser:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final frozeType:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headerLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivMore:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftBack:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svga:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabLay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvChat:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvFocus:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->backButton:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->bgHeaderLay:Landroid/widget/FrameLayout;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->bottomLay:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->contentArea:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->devView:Landroid/view/View;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->editUserInfo:Landroid/widget/ImageView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->emptyContent:Landroid/widget/FrameLayout;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->freezeUser:Landroid/widget/FrameLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->frozeType:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->headerLay:Landroid/widget/LinearLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->ivMore:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->leftBack:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->svga:Lcom/opensource/svgaplayer/SVGAImageView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->tabLay:Landroid/widget/FrameLayout;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->tvChat:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->tvFocus:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;
    .locals 24
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a00b9

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0101

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0130

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0156

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0259

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a02b9

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    const v1, 0x7f0a0315

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a032c

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a044b

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0452

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a04c5

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a05bd

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a063f

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0af5

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0b20

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/FrameLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0b26

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0a0c59

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a0c8a

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0e05

    .line 19
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    if-eqz v23, :cond_0

    .line 20
    new-instance v1, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v23}, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;)V

    return-object v1

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;
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

    const v0, 0x7f0d00c2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityUserHomePageBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
