.class public Lcom/twitter/sdk/android/tweetui/TweetView;
.super Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setVerifiedCheck(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/twitter/sdk/android/core/models/User;->verified:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_verified:I

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected f(I)D
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method

.method protected getLayout()I
    .locals 1

    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__tweet:I

    return v0
.end method

.method l()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->l()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b;->f:Lcom/twitter/sdk/android/core/models/l;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetView;->setVerifiedCheck(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method
