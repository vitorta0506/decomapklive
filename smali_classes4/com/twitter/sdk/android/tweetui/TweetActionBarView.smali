.class public Lcom/twitter/sdk/android/tweetui/TweetActionBarView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;

.field b:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

.field c:Landroid/widget/ImageButton;

.field d:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->a:Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_like_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->b:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    .line 2
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__tweet_share_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->c:Landroid/widget/ImageButton;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->a()V

    return-void
.end method

.method setLike(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->a:Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;->a()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->b:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    iget-boolean v2, p1, Lcom/twitter/sdk/android/core/models/l;->g:Z

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;->setToggledOn(Z)V

    .line 3
    new-instance v1, Lcom/twitter/sdk/android/tweetui/k;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->d:Lcom/twitter/sdk/android/core/b;

    invoke-direct {v1, p1, v0, v2}, Lcom/twitter/sdk/android/tweetui/k;-><init>(Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/tweetui/d0;Lcom/twitter/sdk/android/core/b;)V

    .line 4
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->b:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method setOnActionCallback(Lcom/twitter/sdk/android/core/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->d:Lcom/twitter/sdk/android/core/b;

    return-void
.end method

.method setShare(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->a:Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView$a;->a()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->c:Landroid/widget/ImageButton;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/u;

    invoke-direct {v2, p1, v0}, Lcom/twitter/sdk/android/tweetui/u;-><init>(Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/tweetui/d0;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method setTweet(Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setLike(Lcom/twitter/sdk/android/core/models/l;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetActionBarView;->setShare(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method
