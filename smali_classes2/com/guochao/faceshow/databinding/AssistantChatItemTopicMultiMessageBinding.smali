.class public final Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final assistantTopicLeftAvatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftImgBg:Lcom/guochao/faceshow/views/ShapedImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftImgIcon:Lcom/guochao/faceshow/views/ShapedImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftJoinIcon:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftNameIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicLeftTextContent:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantTopicPicShowTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Lcom/guochao/faceshow/views/ShapedImageView;Lcom/guochao/faceshow/views/ShapedImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/views/ShapedImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/views/ShapedImageView;
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
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftAvatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftImgBg:Lcom/guochao/faceshow/views/ShapedImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftImgIcon:Lcom/guochao/faceshow/views/ShapedImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftJoinIcon:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftName:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftNameIcon:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftText:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicLeftTextContent:Landroid/widget/RelativeLayout;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->assistantTopicPicShowTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00d6

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00d7

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/guochao/faceshow/views/ShapedImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00d8

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/guochao/faceshow/views/ShapedImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a00d9

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a00da

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a00db

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a00dc

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a00dd

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a00de

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 10
    new-instance v0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Lcom/guochao/faceshow/views/ShapedImageView;Lcom/guochao/faceshow/views/ShapedImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;
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

    const v0, 0x7f0d00df

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/AssistantChatItemTopicMultiMessageBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
