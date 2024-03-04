.class Lcom/google/firebase/installations/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/g;


# instance fields
.field private final a:Lcom/google/firebase/installations/h;

.field private final b:Lt4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/h<",
            "Lcom/google/firebase/installations/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/h;Lt4/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/h;",
            "Lt4/h<",
            "Lcom/google/firebase/installations/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/installations/d;->a:Lcom/google/firebase/installations/h;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/installations/d;->b:Lt4/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/installations/d;->b:Lt4/h;

    invoke-virtual {v0, p1}, Lt4/h;->d(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/google/firebase/installations/local/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/d;->a:Lcom/google/firebase/installations/h;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/h;->f(Lcom/google/firebase/installations/local/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/installations/d;->b:Lt4/h;

    .line 4
    invoke-static {}, Lcom/google/firebase/installations/f;->a()Lcom/google/firebase/installations/f$a;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/f$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/f$a;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/f$a;->d(J)Lcom/google/firebase/installations/f$a;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/f$a;->c(J)Lcom/google/firebase/installations/f$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/installations/f$a;->a()Lcom/google/firebase/installations/f;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lt4/h;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
