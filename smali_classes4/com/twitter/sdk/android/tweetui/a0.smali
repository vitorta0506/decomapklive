.class public final synthetic Lcom/twitter/sdk/android/tweetui/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/twitter/sdk/android/tweetui/a0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetui/a0;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/a0;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/a0;->a:Lcom/twitter/sdk/android/tweetui/a0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/twitter/sdk/android/tweetui/i;

    check-cast p2, Lcom/twitter/sdk/android/tweetui/i;

    invoke-static {p1, p2}, Lcom/twitter/sdk/android/tweetui/b0;->a(Lcom/twitter/sdk/android/tweetui/i;Lcom/twitter/sdk/android/tweetui/i;)I

    move-result p1

    return p1
.end method
