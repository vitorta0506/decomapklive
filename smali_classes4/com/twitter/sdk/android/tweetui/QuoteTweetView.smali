.class public Lcom/twitter/sdk/android/tweetui/QuoteTweetView;
.super Lcom/twitter/sdk/android/tweetui/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetui/b$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/b$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/b$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/b$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/twitter/sdk/android/tweetui/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/b$a;)V

    return-void
.end method


# virtual methods
.method protected e(Lcom/twitter/sdk/android/core/models/MediaEntity;)D
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->e(Lcom/twitter/sdk/android/core/models/MediaEntity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    return-wide v2

    :cond_1
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    return-wide v2

    :cond_2
    return-wide v0
.end method

.method protected f(I)D
    .locals 2

    const-wide v0, 0x3ff999999999999aL    # 1.6

    return-wide v0
.end method

.method protected getLayout()I
    .locals 1

    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__tweet_quote:I

    return v0
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
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method protected o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__media_view_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->p(IIII)V

    .line 3
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__quote_tweet_border:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->s:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaBgColor(I)V

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->l:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/b;->t:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setPhotoErrorResId(I)V

    return-void
.end method

.method public p(IIIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/b;->o:I

    .line 2
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/b;->p:I

    .line 3
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/b;->q:I

    .line 4
    iput p4, p0, Lcom/twitter/sdk/android/tweetui/b;->r:I

    .line 5
    iput p5, p0, Lcom/twitter/sdk/android/tweetui/b;->s:I

    .line 6
    iput p6, p0, Lcom/twitter/sdk/android/tweetui/b;->t:I

    .line 7
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->o()V

    return-void
.end method

.method public bridge synthetic setTweet(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method

.method public bridge synthetic setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/w;)V

    return-void
.end method

.method public bridge synthetic setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/b;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/x;)V

    return-void
.end method
