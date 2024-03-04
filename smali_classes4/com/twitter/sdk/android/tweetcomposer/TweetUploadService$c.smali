.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/m;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/q;->f(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/m;

    move-result-object p1

    return-object p1
.end method
