.class final Lpg/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private e:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lpg/g;


# direct methods
.method constructor <init>(Lpg/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lpg/g$e;->f:Lpg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lpg/g$e;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lpg/g;->c(Lpg/g;)Lio/grpc/netty/shaded/io/netty/util/l;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lpg/g$e;->b:I

    .line 4
    invoke-static {p1}, Lpg/g;->d(Lpg/g;)[Lpg/g$b;

    move-result-object v0

    invoke-static {p1, p2}, Lpg/g;->f(Lpg/g;I)I

    move-result p1

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lpg/g$e;->a(Lpg/g$b;)V

    return-void
.end method

.method private a(Lpg/g$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/g$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget v0, p1, Lpg/g$b;->a:I

    iget v1, p0, Lpg/g$e;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpg/g$e;->f:Lpg/g;

    invoke-static {v0}, Lpg/g;->c(Lpg/g;)Lio/grpc/netty/shaded/io/netty/util/l;

    move-result-object v0

    iget-object v1, p0, Lpg/g$e;->a:Ljava/lang/Object;

    iget-object v2, p1, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lpg/g$e;->e:Lpg/g$b;

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lpg/g$b;->d:Lpg/g$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lpg/g$e;->e:Lpg/g$b;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lpg/g$e;->e:Lpg/g$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lpg/g$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lpg/g$e;->d:Lpg/g$b;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lpg/g$e;->c:Lpg/g$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lpg/g$e;->e:Lpg/g$b;

    iput-object v0, p0, Lpg/g$e;->d:Lpg/g$b;

    .line 5
    iget-object v0, v0, Lpg/g$b;->d:Lpg/g$b;

    invoke-direct {p0, v0}, Lpg/g$e;->a(Lpg/g$b;)V

    .line 6
    iget-object v0, p0, Lpg/g$e;->d:Lpg/g$b;

    iget-object v0, v0, Lpg/g$b;->c:Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpg/g$e;->d:Lpg/g$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lpg/g$e;->f:Lpg/g;

    iget-object v2, p0, Lpg/g$e;->c:Lpg/g$b;

    invoke-virtual {v1, v0, v2}, Lpg/g;->L(Lpg/g$b;Lpg/g$b;)Lpg/g$b;

    move-result-object v0

    iput-object v0, p0, Lpg/g$e;->c:Lpg/g$b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lpg/g$e;->d:Lpg/g$b;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
