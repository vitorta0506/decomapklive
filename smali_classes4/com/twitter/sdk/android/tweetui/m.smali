.class abstract Lcom/twitter/sdk/android/tweetui/m;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/sdk/android/core/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/b;

.field private final b:Lcom/twitter/sdk/android/core/g;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/m;->a:Lcom/twitter/sdk/android/core/b;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/m;->b:Lcom/twitter/sdk/android/core/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/m;->b:Lcom/twitter/sdk/android/core/g;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TweetUi"

    invoke-interface {v0, v2, v1, p1}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/m;->a:Lcom/twitter/sdk/android/core/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method
