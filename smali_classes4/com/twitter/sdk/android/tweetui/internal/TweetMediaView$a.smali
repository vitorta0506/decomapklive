.class Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/squareup/picasso/Picasso;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/d0;->c()Lcom/twitter/sdk/android/tweetui/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/d0;->b()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method
