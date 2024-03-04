.class public Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$layout;->target_user_thumbnail:I

    invoke-static {v0, v1, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    sget v0, Lcom/linecorp/linesdk/R$id;->textViewDisplayName:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/linecorp/linesdk/R$id;->imageViewTargetUser:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->e()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/linecorp/linesdk/R$drawable;->friend_thumbnail:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/linecorp/linesdk/R$drawable;->group_thumbnail:I

    .line 3
    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->b()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->j(Landroid/net/Uri;)Lcom/squareup/picasso/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/t;->i(I)Lcom/squareup/picasso/t;

    move-result-object p1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/t;->f(Landroid/widget/ImageView;)V

    return-void
.end method
