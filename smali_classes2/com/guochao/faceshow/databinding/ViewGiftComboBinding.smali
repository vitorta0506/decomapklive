.class public final Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ballView:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomRL:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numTV:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final perfectIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rippleView3:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final roadIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rotateIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scaleView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Lcom/guochao/faceshow/views/SvgaImageViewV2;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->ballView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->bottomRL:Landroid/widget/RelativeLayout;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->perfectIV:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView1:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rippleView3:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rotateIV:Landroid/widget/ImageView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->scaleView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a010b

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0152

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a082b

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0878

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a09a2

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v8, :cond_0

    const v0, 0x7f0a09a3

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v9, :cond_0

    const v0, 0x7f0a09a4

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v10, :cond_0

    const v0, 0x7f0a09cf

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a09d9

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a09fd

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    .line 11
    new-instance v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;-><init>(Landroid/view/View;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Lcom/guochao/faceshow/views/SvgaImageViewV2;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;
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

    const v0, 0x7f0d0467

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
