.class Lcom/twitter/sdk/android/tweetui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/c;->a:Lcom/twitter/sdk/android/core/b;

    return-void
.end method


# virtual methods
.method a()Lcom/twitter/sdk/android/core/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/c;->a:Lcom/twitter/sdk/android/core/b;

    return-object v0
.end method
