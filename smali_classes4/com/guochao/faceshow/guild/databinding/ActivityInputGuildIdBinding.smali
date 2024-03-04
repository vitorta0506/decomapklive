.class public final Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final applySign:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guildId:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView29:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView30:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleBar:Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view2:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view3:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/EditText;
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
    .param p6    # Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->applySign:Landroid/widget/Button;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->guildId:Landroid/widget/EditText;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->textView29:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->textView30:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->titleBar:Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->view2:Landroid/view/View;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->view3:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/faceshow/guild/R$id;->apply_sign:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/faceshow/guild/R$id;->guild_id:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/faceshow/guild/R$id;->textView29:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/faceshow/guild/R$id;->textView30:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/faceshow/guild/R$id;->title_bar:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {v1}, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->bind(Landroid/view/View;)Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    move-result-object v8

    .line 12
    sget v0, Lcom/guochao/faceshow/guild/R$id;->view2:I

    .line 13
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 14
    sget v0, Lcom/guochao/faceshow/guild/R$id;->view3:I

    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 16
    new-instance v0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;Landroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;
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
    sget v0, Lcom/guochao/faceshow/guild/R$layout;->activity_input_guild_id:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
