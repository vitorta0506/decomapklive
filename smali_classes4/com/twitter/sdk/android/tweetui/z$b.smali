.class Lcom/twitter/sdk/android/tweetui/z$b;
.super Lcom/twitter/sdk/android/tweetui/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/z;->i(JLcom/twitter/sdk/android/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/m<",
        "Lcom/twitter/sdk/android/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:J

.field final synthetic d:Lcom/twitter/sdk/android/core/b;

.field final synthetic e:Lcom/twitter/sdk/android/tweetui/z;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/z;Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/g;JLcom/twitter/sdk/android/core/b;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/z$b;->e:Lcom/twitter/sdk/android/tweetui/z;

    iput-wide p4, p0, Lcom/twitter/sdk/android/tweetui/z$b;->c:J

    iput-object p6, p0, Lcom/twitter/sdk/android/tweetui/z$b;->d:Lcom/twitter/sdk/android/core/b;

    invoke-direct {p0, p2, p3}, Lcom/twitter/sdk/android/tweetui/m;-><init>(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/g;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z$b;->e:Lcom/twitter/sdk/android/tweetui/z;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/z;->b(Lcom/twitter/sdk/android/tweetui/z;)Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/q;->f(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->e()Lcom/twitter/sdk/android/core/services/FavoriteService;

    move-result-object p1

    iget-wide v0, p0, Lcom/twitter/sdk/android/tweetui/z$b;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/core/services/FavoriteService;->destroy(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/z$b;->d:Lcom/twitter/sdk/android/core/b;

    .line 2
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
