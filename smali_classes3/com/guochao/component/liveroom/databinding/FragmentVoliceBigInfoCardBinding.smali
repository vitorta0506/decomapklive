.class public final Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final countTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headerIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinLL:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final memberRL:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final moneyLL:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final moneyTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recentRV:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final reportIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final roomIdTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
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
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->countTV:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->headerIV:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->iconIV:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinLL:Landroid/widget/LinearLayout;

    .line 7
    iput-object p6, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinTV:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->memberRL:Landroid/widget/RelativeLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyLL:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyTV:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->recentRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object p11, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->reportIV:Landroid/widget/ImageView;

    .line 13
    iput-object p12, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->roomIdTV:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->titleTV:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/guochao/component/liveroom/R$id;->countTV:I

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/guochao/component/liveroom/R$id;->headerIV:I

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/guochao/component/liveroom/R$id;->iconIV:I

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/guochao/component/liveroom/R$id;->joinLL:I

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/guochao/component/liveroom/R$id;->joinTV:I

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/guochao/component/liveroom/R$id;->memberRL:I

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/guochao/component/liveroom/R$id;->moneyLL:I

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/guochao/component/liveroom/R$id;->moneyTV:I

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/guochao/component/liveroom/R$id;->recentRV:I

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/guochao/component/liveroom/R$id;->reportIV:I

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/guochao/component/liveroom/R$id;->roomIdTV:I

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcom/guochao/component/liveroom/R$id;->titleTV:I

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    new-instance v1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;
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
    sget v0, Lcom/guochao/component/liveroom/R$layout;->fragment_volice_big_info_card:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
