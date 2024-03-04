.class public final Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomEndLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomMiddleLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomStartLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomSwitchLay:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final indicatorBottomEnd:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final indicatorBottomMiddle:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final indicatorBottomStart:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveBottomEnd:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveBottomMiddle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveBottomStart:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/View;
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
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->rootView:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->bottomEndLay:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->bottomMiddleLay:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->bottomStartLay:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->bottomSwitchLay:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->indicatorBottomEnd:Landroid/view/View;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->indicatorBottomMiddle:Landroid/view/View;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->indicatorBottomStart:Landroid/view/View;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->liveBottomEnd:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->liveBottomMiddle:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->liveBottomStart:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0155

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a015a

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a015c

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 4
    move-object v7, p0

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    const v0, 0x7f0a0544

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const v0, 0x7f0a0545

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    const v0, 0x7f0a0546

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    const v0, 0x7f0a067a

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a067c

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a067d

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 11
    new-instance p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v13}, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;
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

    const v0, 0x7f0d02ef

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->getRoot()Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchBottomBinding;->rootView:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    return-object v0
.end method
