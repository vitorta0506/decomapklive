.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->f(Lcom/twitter/sdk/android/core/s;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/l;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->c(J)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {p1}, Landroid/app/IntentService;->stopSelf()V

    return-void
.end method
