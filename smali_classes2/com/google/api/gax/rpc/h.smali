.class public abstract Lcom/google/api/gax/rpc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/gax/rpc/d;)Lcom/google/api/gax/rpc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/d<",
            "TResponseT;>;)",
            "Lcom/google/api/gax/rpc/d<",
            "TRequestT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gax/rpc/h;->b(Lcom/google/api/gax/rpc/d;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/api/gax/rpc/d;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/d<",
            "TResponseT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/d<",
            "TRequestT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/e;

    invoke-direct {v0, p1}, Lcom/google/api/gax/rpc/e;-><init>(Lcom/google/api/gax/rpc/d;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/api/gax/rpc/h;->d(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/google/api/gax/rpc/h$b;

    invoke-direct {p2, p0, p1}, Lcom/google/api/gax/rpc/h$b;-><init>(Lcom/google/api/gax/rpc/h;Lcom/google/api/gax/rpc/l;)V

    return-object p2
.end method

.method public abstract c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Lcom/google/api/gax/rpc/m<",
            "TRequestT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;"
        }
    .end annotation
.end method

.method public d(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/h$a;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/h$a;-><init>(Lcom/google/api/gax/rpc/h;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gax/rpc/h;->c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/h$c;

    invoke-direct {v0, p0, p1}, Lcom/google/api/gax/rpc/h$c;-><init>(Lcom/google/api/gax/rpc/h;Lcom/google/api/gax/rpc/a;)V

    return-object v0
.end method
