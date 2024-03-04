.class public abstract Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.super Lcom/twitter/sdk/android/tweetui/b;
.source "SourceFile"


# instance fields
.field A:Landroid/view/ViewGroup;

.field B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

.field C:Landroid/view/View;

.field D:I

.field E:I

.field F:I

.field G:Landroid/graphics/drawable/ColorDrawable;

.field v:Landroid/widget/TextView;

.field w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

.field x:Landroid/widget/ImageView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 9
    new-instance v0, Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/b$a;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/b$a;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->q()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/l;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/b$a;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/l;ILcom/twitter/sdk/android/tweetui/b$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/l;ILcom/twitter/sdk/android/tweetui/b$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/twitter/sdk/android/tweetui/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/b$a;)V

    .line 3
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->r(I)V

    .line 4
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->q()V

    .line 5
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->s()V

    .line 7
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method public static synthetic o(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->v(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->u(Lcom/twitter/sdk/android/core/models/l;Landroid/view/View;)V

    return-void
.end method

.method private r(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/b;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setStyleAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw v0
.end method

.method private s()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/b;->h:Z

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweetActionsEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/t;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    .line 3
    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/b$a;->b()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/d0;->d()Lcom/twitter/sdk/android/tweetui/z;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/t;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setOnActionCallback(Lcom/twitter/sdk/android/core/b;)V

    return-void
.end method

.method private setStyleAttributes(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__container_bg_color:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_light_container_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->D:I

    .line 4
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__primary_text_color:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_light_primary_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    .line 7
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__action_color:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_action_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/b;->q:I

    .line 10
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__action_highlight_color:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$color;->tw__tweet_action_light_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/b;->r:I

    .line 13
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__tweet_actions_enabled:I

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/b;->h:Z

    .line 15
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->D:I

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/f;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_photo_error_light:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/b;->t:I

    .line 17
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_logo_blue:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->E:I

    .line 18
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_retweet_light:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->F:I

    goto :goto_0

    .line 19
    :cond_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_photo_error_dark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/b;->t:I

    .line 20
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_logo_white:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->E:I

    .line 21
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_retweet_dark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->F:I

    :goto_0
    if-eqz p1, :cond_1

    const-wide v0, 0x3fd999999999999aL    # 0.4

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fd6666666666666L    # 0.35

    :goto_1
    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    if-eqz p1, :cond_2

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    const/high16 v4, -0x1000000

    .line 22
    :goto_2
    iget v5, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    invoke-static {v0, v1, v4, v5}, Lcom/twitter/sdk/android/tweetui/f;->a(DII)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    if-eqz p1, :cond_3

    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    goto :goto_3

    :cond_3
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_3
    if-eqz p1, :cond_4

    const/high16 v2, -0x1000000

    .line 23
    :cond_4
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->D:I

    invoke-static {v0, v1, v2, p1}, Lcom/twitter/sdk/android/tweetui/f;->a(DII)I

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/b;->s:I

    .line 24
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/b;->s:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->G:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method private setTimestamp(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/v;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/v;->c(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setXmlDataAttributes(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView_tw__tweet_id:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/f0;->c(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/twitter/sdk/android/tweetui/b;->n(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    new-instance p1, Lcom/twitter/sdk/android/core/models/m;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/m;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/twitter/sdk/android/core/models/m;->d(J)Lcom/twitter/sdk/android/core/models/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/m;->a()Lcom/twitter/sdk/android/core/models/l;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid tw__tweet_id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private t(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setXmlDataAttributes(Landroid/content/res/TypedArray;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setStyleAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw p2
.end method

.method private synthetic u(Lcom/twitter/sdk/android/core/models/l;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/b;->c:Lcom/twitter/sdk/android/tweetui/w;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/twitter/sdk/android/tweetui/w;->a(Lcom/twitter/sdk/android/core/models/l;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/twitter/sdk/android/core/f;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object p1

    const-string p2, "TweetUi"

    const-string v0, "Activity cannot be found to open URL"

    invoke-interface {p1, p2, v0}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic v(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/twitter/sdk/android/tweetui/R$color;->tw__black_opacity_10:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private x()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getTweetId()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;J)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/b$a;->b()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/d0;->d()Lcom/twitter/sdk/android/tweetui/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getTweetId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/twitter/sdk/android/tweetui/z;->h(JLcom/twitter/sdk/android/core/b;)V

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/b;->c()V

    .line 2
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_author_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->z:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_timestamp:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->y:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__twitter_logo:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->x:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_retweeted_by:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->v:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_action_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    .line 7
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->quote_tweet_holder:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->A:Landroid/view/ViewGroup;

    .line 8
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->bottom_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->C:Landroid/view/View;

    return-void
.end method

.method public bridge synthetic getTweet()Lcom/twitter/sdk/android/core/models/l;
    .locals 1

    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/b;->getTweet()Lcom/twitter/sdk/android/core/models/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTweetId()J
    .locals 2

    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/b;->getTweetId()J

    move-result-wide v0

    return-wide v0
.end method

.method l()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/b;->l()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->a(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/l;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/l;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w(Lcom/twitter/sdk/android/core/models/l;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTimestamp(Lcom/twitter/sdk/android/core/models/l;)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweetActions(Lcom/twitter/sdk/android/core/models/l;)V

    .line 7
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->y(Lcom/twitter/sdk/android/core/models/l;)V

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setQuoteTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->s()V

    .line 4
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->x()V

    return-void
.end method

.method protected q()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->D:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->s:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaBgColor(I)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->t:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setPhotoErrorResId(I)V

    .line 7
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->G:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->y:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->v:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setOnActionCallback(Lcom/twitter/sdk/android/core/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/t;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    .line 2
    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/b$a;->b()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/d0;->d()Lcom/twitter/sdk/android/tweetui/z;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/twitter/sdk/android/tweetui/t;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setOnActionCallback(Lcom/twitter/sdk/android/core/b;)V

    .line 4
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method setProfilePhotoView(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->a:Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/b$a;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;->REASONABLY_SMALL:Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;

    invoke-static {p1, v1}, Lcom/twitter/sdk/android/core/internal/UserUtils;->b(Lcom/twitter/sdk/android/core/models/User;Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->k(Ljava/lang/String;)Lcom/squareup/picasso/t;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->G:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/t;->j(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/t;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/t;->f(Landroid/widget/ImageView;)V

    return-void
.end method

.method setQuoteTweet(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/e0;->g(Lcom/twitter/sdk/android/core/models/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    .line 5
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/b;->q:I

    iget v5, p0, Lcom/twitter/sdk/android/tweetui/b;->r:I

    iget v6, p0, Lcom/twitter/sdk/android/tweetui/b;->s:I

    iget v7, p0, Lcom/twitter/sdk/android/tweetui/b;->t:I

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->p(IIIIII)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->v:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    .line 7
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->c:Lcom/twitter/sdk/android/tweetui/w;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V

    .line 8
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->d:Lcom/twitter/sdk/android/tweetui/x;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V

    .line 9
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->A:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->A:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->A:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setTweet(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method setTweetActions(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method public setTweetActionsEnabled(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/b;->h:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->C:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->w:Lcom/twitter/sdk/android/tweetui/TweetActionBarView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->C:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V

    :cond_0
    return-void
.end method

.method public setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->B:Lcom/twitter/sdk/android/tweetui/QuoteTweetView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V

    :cond_0
    return-void
.end method

.method w(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->z:Landroid/widget/ImageView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/d;

    invoke-direct {v1, p0, p1}, Lcom/twitter/sdk/android/tweetui/d;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->z:Landroid/widget/ImageView;

    new-instance v0, Lcom/twitter/sdk/android/tweetui/e;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/e;-><init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method y(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->y:Lcom/twitter/sdk/android/core/models/l;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->v:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$string;->tw__retweeted_by_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->v:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->v:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
