.class Lcom/twitter/sdk/android/tweetcomposer/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/twitter/a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/twitter/a;

    invoke-direct {v0}, Lcom/twitter/a;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$d;->a:Lcom/twitter/a;

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

.method b()Lcom/twitter/a;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$d;->a:Lcom/twitter/a;

    return-object v0
.end method
