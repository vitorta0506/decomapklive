.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/sdk/android/tweetui/BaseTweetView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;J)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;->b:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iput-wide p2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;->a:J

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;->a:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "loadTweet failure for Tweet Id %d."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TweetUi"

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$a;->b:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method
