.class Lcom/twitter/sdk/android/core/identity/h$b;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/h$b;->a:Lcom/twitter/sdk/android/core/k;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/h$b;->b:Lcom/twitter/sdk/android/core/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h$b;->b:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed successfully"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h$b;->a:Lcom/twitter/sdk/android/core/k;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/j;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/k;->b(Lcom/twitter/sdk/android/core/j;)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h$b;->b:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    return-void
.end method
