.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->e(Lcom/twitter/sdk/android/core/s;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/s;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->a:Lcom/twitter/sdk/android/core/s;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/models/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->a:Lcom/twitter/sdk/android/core/s;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/i;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->f(Lcom/twitter/sdk/android/core/s;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
