.class Lcom/google/common/cache/k$e$b;
.super Lcom/google/common/collect/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/k$e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s<",
        "Lcom/google/common/cache/q<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/cache/k$e;


# direct methods
.method constructor <init>(Lcom/google/common/cache/k$e;Lcom/google/common/cache/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$e$b;->b:Lcom/google/common/cache/k$e;

    invoke-direct {p0, p2}, Lcom/google/common/collect/s;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/cache/q;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$e$b;->b(Lcom/google/common/cache/q;)Lcom/google/common/cache/q;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/google/common/cache/q;)Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/q;->f()Lcom/google/common/cache/q;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/k$e$b;->b:Lcom/google/common/cache/k$e;

    iget-object v0, v0, Lcom/google/common/cache/k$e;->a:Lcom/google/common/cache/q;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
