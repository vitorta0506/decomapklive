.class Lcom/twitter/sdk/android/tweetui/t;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/l;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

.field final b:Lcom/twitter/sdk/android/tweetui/z;

.field final c:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/BaseTweetView;",
            "Lcom/twitter/sdk/android/tweetui/z;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/t;->a:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/t;->b:Lcom/twitter/sdk/android/tweetui/z;

    .line 4
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/t;->c:Lcom/twitter/sdk/android/core/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/t;->c:Lcom/twitter/sdk/android/core/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/t;->b:Lcom/twitter/sdk/android/tweetui/z;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/z;->j(Lcom/twitter/sdk/android/core/models/l;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/t;->a:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/t;->c:Lcom/twitter/sdk/android/core/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    :cond_0
    return-void
.end method
