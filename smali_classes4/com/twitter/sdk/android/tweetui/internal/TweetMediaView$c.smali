.class Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final c:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;


# instance fields
.field final a:I

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;->c:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;->a:I

    .line 4
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;->b:I

    return-void
.end method

.method static a(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;->c:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$c;-><init>(II)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
