.class Lcom/twitter/sdk/android/tweetui/z$c;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/l;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/twitter/sdk/android/tweetui/z;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;)V
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
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/z$c;->b:Lcom/twitter/sdk/android/tweetui/z;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/z$c;->a:Lcom/twitter/sdk/android/core/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z$c;->a:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

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
    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/models/l;

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/z$c;->b:Lcom/twitter/sdk/android/tweetui/z;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/z;->j(Lcom/twitter/sdk/android/core/models/l;)V

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/z$c;->a:Lcom/twitter/sdk/android/core/b;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lcom/twitter/sdk/android/core/i;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->b:Lretrofit2/Response;

    invoke-direct {v2, v0, p1}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    :cond_0
    return-void
.end method
