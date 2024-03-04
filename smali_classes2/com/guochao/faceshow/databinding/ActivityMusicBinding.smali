.class public final Lcom/guochao/faceshow/databinding/ActivityMusicBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final floatTitleBack:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mListView:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mRecyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mrefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicConllect:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicMine:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicOnline:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radiogroup:Landroid/widget/RadioGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final search:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchEt:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchEtLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchListView:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ListView;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/ListView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/RadioGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->floatTitleBack:Landroid/widget/FrameLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->mListView:Landroid/widget/ListView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->mRecyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->mrefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->musicConllect:Landroid/widget/RadioButton;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->musicMine:Landroid/widget/RadioButton;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->musicOnline:Landroid/widget/RadioButton;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->radiogroup:Landroid/widget/RadioGroup;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->search:Landroid/widget/ImageView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->searchEt:Landroid/widget/EditText;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->searchEtLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->searchListView:Landroid/widget/ListView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->searchRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->title:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityMusicBinding;
    .locals 21
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a042c

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0737

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ListView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0738

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a07a1

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a07be

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_0

    const v1, 0x7f0a07c1

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_0

    const v1, 0x7f0a07c3

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RadioButton;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0919

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioGroup;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0961

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0a0b

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0a17

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/EditText;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0a18

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0a1d

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ListView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0a20

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    if-eqz v18, :cond_0

    const v1, 0x1020016

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0bc5

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/Toolbar;

    if-eqz v20, :cond_0

    .line 17
    new-instance v1, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ListView;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/ListView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V

    return-object v1

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityMusicBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityMusicBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityMusicBinding;
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

    const v0, 0x7f0d0079

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityMusicBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityMusicBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
