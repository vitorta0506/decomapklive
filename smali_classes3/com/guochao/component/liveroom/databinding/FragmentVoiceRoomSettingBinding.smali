.class public final Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Landroidx/core/widget/NestedScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final backgroundRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentFL:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cover:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coverArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final info:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final save:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tagRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/widget/NestedScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/EditText;
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
    .param p11    # Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->appbar:Landroidx/core/widget/NestedScrollView;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->backgroundRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->contentFL:Landroid/widget/FrameLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->cover:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->coverArea:Landroid/widget/FrameLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->info:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->layout:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->save:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->tagRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object p11, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->title:Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/component/liveroom/R$id;->appbar:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$id;->background_rv:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/component/liveroom/R$id;->contentFL:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/component/liveroom/R$id;->cover:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/component/liveroom/R$id;->cover_area:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/component/liveroom/R$id;->info:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/component/liveroom/R$id;->layout:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/component/liveroom/R$id;->save:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcom/guochao/component/liveroom/R$id;->tag_rv:I

    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    .line 19
    sget v0, Lcom/guochao/component/liveroom/R$id;->title:I

    .line 20
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {v1}, Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;->bind(Landroid/view/View;)Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;

    move-result-object v13

    .line 22
    new-instance v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/lib_core/databinding/GcBaseTitleBarTransparentBinding;)V

    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;
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
    sget v0, Lcom/guochao/component/liveroom/R$layout;->fragment_voice_room_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
