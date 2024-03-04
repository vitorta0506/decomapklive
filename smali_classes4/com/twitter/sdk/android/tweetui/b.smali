.class abstract Lcom/twitter/sdk/android/tweetui/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/b$a;,
        Lcom/twitter/sdk/android/tweetui/b$b;
    }
.end annotation


# static fields
.field static final u:I


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetui/b$a;

.field private b:Lcom/twitter/sdk/android/tweetui/l;

.field c:Lcom/twitter/sdk/android/tweetui/w;

.field d:Lcom/twitter/sdk/android/tweetui/x;

.field private e:Landroid/net/Uri;

.field f:Lcom/twitter/sdk/android/core/models/l;

.field g:I

.field h:Z

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;

.field l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

.field m:Landroid/widget/TextView;

.field n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/twitter/sdk/android/tweetui/R$style;->tw__TweetLightStyle:I

    sput v0, Lcom/twitter/sdk/android/tweetui/b;->u:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    .line 3
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->h(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/tweetui/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->j(Ljava/lang/String;)V

    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->getLayout()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private synthetic j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->c:Lcom/twitter/sdk/android/tweetui/w;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/tweetui/w;->a(Lcom/twitter/sdk/android/core/models/l;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/f;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object p1

    const-string v0, "TweetUi"

    const-string v1, "Activity cannot be found to open URL"

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetui/b$b;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/b$b;-><init>(Lcom/twitter/sdk/android/tweetui/b;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setName(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/f0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setScreenName(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->j:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/f0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/UserUtils;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->j:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setText(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->g(Lcom/twitter/sdk/android/core/models/l;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/f0;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/g;->c(Landroid/widget/TextView;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->k:Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method c()V
    .locals 1

    .line 1
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_author_full_name:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_author_screen_name:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->j:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__aspect_ratio_media_container:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->k:Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;

    .line 5
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tweet_media_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    .line 6
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_media_badge:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    return-void
.end method

.method protected d(Lcom/twitter/sdk/android/core/models/h;)D
    .locals 4

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/twitter/sdk/android/core/models/h;->b:I

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/twitter/sdk/android/core/models/h;->a:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    return-wide v0
.end method

.method protected e(Lcom/twitter/sdk/android/core/models/MediaEntity;)D
    .locals 4

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->sizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;->medium:Lcom/twitter/sdk/android/core/models/MediaEntity$Size;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity$Size;->w:I

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity$Size;->h:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    return-wide v0
.end method

.method protected abstract f(I)D
.end method

.method protected g(Lcom/twitter/sdk/android/core/models/l;)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/b$a;->b()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/d0;->d()Lcom/twitter/sdk/android/tweetui/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/z;->e(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/tweetui/h;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->H:Lcom/twitter/sdk/android/core/models/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/l;->c(Lcom/twitter/sdk/android/core/models/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/e0;->g(Lcom/twitter/sdk/android/core/models/l;)Z

    move-result v5

    .line 6
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->getLinkClickListener()Lcom/twitter/sdk/android/tweetui/l;

    move-result-object v2

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/b;->q:I

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/b;->r:I

    invoke-static/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/b0;->h(Lcom/twitter/sdk/android/tweetui/h;Lcom/twitter/sdk/android/tweetui/l;IIZZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method abstract getLayout()I
.end method

.method protected getLinkClickListener()Lcom/twitter/sdk/android/tweetui/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->b:Lcom/twitter/sdk/android/tweetui/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/a;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/a;-><init>(Lcom/twitter/sdk/android/tweetui/b;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->b:Lcom/twitter/sdk/android/tweetui/l;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->b:Lcom/twitter/sdk/android/tweetui/l;

    return-object v0
.end method

.method getPermalinkUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public getTweet()Lcom/twitter/sdk/android/core/models/l;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    return-object v0
.end method

.method public getTweetId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/l;->i:J

    return-wide v0
.end method

.method i()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/b$a;->b()Lcom/twitter/sdk/android/tweetui/d0;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TweetUi"

    invoke-interface {v2, v3, v0}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return v1
.end method

.method k()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->getPermalinkUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/f;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "TweetUi"

    const-string v2, "Activity cannot be found to open permalink URI"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->a(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/l;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/b;->setName(Lcom/twitter/sdk/android/core/models/l;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/b;->setScreenName(Lcom/twitter/sdk/android/core/models/l;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/b;->setTweetMedia(Lcom/twitter/sdk/android/core/models/l;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/b;->setText(Lcom/twitter/sdk/android/core/models/l;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/b;->setContentDescription(Lcom/twitter/sdk/android/core/models/l;)V

    .line 7
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->f(Lcom/twitter/sdk/android/core/models/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->getTweetId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/b;->n(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->e:Landroid/net/Uri;

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/b;->m()V

    return-void
.end method

.method n(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/e0;->c(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->e:Landroid/net/Uri;

    return-void
.end method

.method setContentDescription(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/e0;->f(Lcom/twitter/sdk/android/core/models/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__loading_tweet:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/b$a;->b()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/d0;->d()Lcom/twitter/sdk/android/tweetui/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/z;->e(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/tweetui/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 6
    :goto_0
    iget-object v2, p1, Lcom/twitter/sdk/android/core/models/l;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/v;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 7
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/sdk/android/tweetui/R$string;->tw__tweet_content_description:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/f0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x1

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/f0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x2

    .line 10
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/f0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTweet(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->l()V

    return-void
.end method

.method public setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->c:Lcom/twitter/sdk/android/tweetui/w;

    return-void
.end method

.method final setTweetMedia(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->b()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->H:Lcom/twitter/sdk/android/core/models/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/l;->c(Lcom/twitter/sdk/android/core/models/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->H:Lcom/twitter/sdk/android/core/models/d;

    .line 4
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/l;->a(Lcom/twitter/sdk/android/core/models/d;)Lcom/twitter/sdk/android/core/models/h;

    move-result-object v2

    .line 5
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/l;->b(Lcom/twitter/sdk/android/core/models/d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/b;->d(Lcom/twitter/sdk/android/core/models/h;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/b;->setViewsForMedia(D)V

    .line 8
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    invoke-virtual {v2, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setVineCard(Lcom/twitter/sdk/android/core/models/l;)V

    .line 9
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setCard(Lcom/twitter/sdk/android/core/models/d;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/j;->g(Lcom/twitter/sdk/android/core/models/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/j;->e(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/MediaEntity;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->e(Lcom/twitter/sdk/android/core/models/MediaEntity;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/b;->setViewsForMedia(D)V

    .line 14
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->q(Lcom/twitter/sdk/android/core/models/l;Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setMediaEntity(Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/j;->f(Lcom/twitter/sdk/android/core/models/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/j;->b(Lcom/twitter/sdk/android/core/models/l;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/b;->f(I)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/twitter/sdk/android/tweetui/b;->setViewsForMedia(D)V

    .line 20
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    invoke-virtual {v1, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->q(Lcom/twitter/sdk/android/core/models/l;Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->n:Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->d:Lcom/twitter/sdk/android/tweetui/x;

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V

    return-void
.end method

.method setViewsForMedia(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->k:Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->k:Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->setAspectRatio(D)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
