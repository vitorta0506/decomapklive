.class public final Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final creater:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final join:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final showmore:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;
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
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->content:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->creater:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->join:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->mainLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->showmore:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->userCount:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00f0

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0255

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0282

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a05fe

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a073b

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0a88

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0b26

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0d89

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0e0f

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v12, :cond_0

    .line 10
    new-instance v0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V

    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d00cd

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityVideoTypesNewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
