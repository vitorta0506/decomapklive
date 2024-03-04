.class public final Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loadDone:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loading:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;->loadDone:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;->loading:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;->textTV:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/component/liveroom/R$id;->load_done:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$id;->loading:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 5
    sget v0, Lcom/guochao/component/liveroom/R$id;->textTV:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 7
    new-instance v0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;
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

    .line 2
    sget v0, Lcom/guochao/component/liveroom/R$layout;->layout_voice_room_my_loadmore_footer:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyLoadmoreFooterBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
