.class public final Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivLeftBack:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rulesContent2:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rulesContent3:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rulesTitle2:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rulesTitle3:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarSpace:Landroid/widget/Space;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleBar:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Space;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
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
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/Space;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->ivLeftBack:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesContent2:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesContent3:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesTitle2:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesTitle3:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->statusBarSpace:Landroid/widget/Space;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->titleBar:Landroid/widget/FrameLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/faceshow/signin/R$id;->iv_left_back:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/faceshow/signin/R$id;->rules_content2:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/faceshow/signin/R$id;->rules_content3:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/faceshow/signin/R$id;->rules_title2:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/faceshow/signin/R$id;->rules_title3:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/faceshow/signin/R$id;->status_bar_space:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Space;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/faceshow/signin/R$id;->title_bar:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/faceshow/signin/R$id;->tv_title:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 17
    new-instance v0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Space;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;
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
    sget v0, Lcom/guochao/faceshow/signin/R$layout;->activity_signin_center_rules:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
