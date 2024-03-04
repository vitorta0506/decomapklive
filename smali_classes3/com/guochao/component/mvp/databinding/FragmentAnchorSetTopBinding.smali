.class public final Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final closeIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final feeET:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final okTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeET:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeLL:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timePickerLL:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
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
    .param p4    # Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->avatarIV:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->closeIV:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->dateWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->feeET:Landroid/widget/EditText;

    .line 7
    iput-object p6, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->nameTV:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->okTV:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeET:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeLL:Landroid/widget/LinearLayout;

    .line 11
    iput-object p10, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timePickerLL:Landroid/widget/LinearLayout;

    .line 12
    iput-object p11, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeTV:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->timeWheel:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;
    .locals 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/component/mvp/R$id;->avatarIV:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/component/mvp/R$id;->closeIV:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/component/mvp/R$id;->dateWheel:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/component/mvp/R$id;->feeET:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/component/mvp/R$id;->nameTV:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/component/mvp/R$id;->okTV:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/component/mvp/R$id;->timeET:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/component/mvp/R$id;->timeLL:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcom/guochao/component/mvp/R$id;->timePickerLL:I

    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 19
    sget v0, Lcom/guochao/component/mvp/R$id;->timeTV:I

    .line 20
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 21
    sget v0, Lcom/guochao/component/mvp/R$id;->timeWheel:I

    .line 22
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    if-eqz v14, :cond_0

    .line 23
    new-instance v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)V

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;
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
    sget v0, Lcom/guochao/component/mvp/R$layout;->fragment_anchor_set_top:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->bind(Landroid/view/View;)Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
