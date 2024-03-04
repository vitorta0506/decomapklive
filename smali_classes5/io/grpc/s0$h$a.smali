.class Lio/grpc/s0$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/s0$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lio/grpc/s0$h;


# direct methods
.method constructor <init>(Lio/grpc/s0$h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/s0$h$a;->c:Lio/grpc/s0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/s0$h$a;->a:Z

    .line 3
    invoke-static {p1}, Lio/grpc/s0$h;->c(Lio/grpc/s0$h;)I

    move-result p1

    iput p1, p0, Lio/grpc/s0$h$a;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/s0$h$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :goto_0
    iget v0, p0, Lio/grpc/s0$h$a;->b:I

    iget-object v2, p0, Lio/grpc/s0$h$a;->c:Lio/grpc/s0$h;

    iget-object v2, v2, Lio/grpc/s0$h;->c:Lio/grpc/s0;

    invoke-static {v2}, Lio/grpc/s0;->a(Lio/grpc/s0;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lio/grpc/s0$h$a;->c:Lio/grpc/s0$h;

    iget-object v2, v0, Lio/grpc/s0$h;->c:Lio/grpc/s0;

    invoke-static {v0}, Lio/grpc/s0$h;->d(Lio/grpc/s0$h;)Lio/grpc/s0$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/s0$i;->a()[B

    move-result-object v0

    iget-object v3, p0, Lio/grpc/s0$h$a;->c:Lio/grpc/s0$h;

    iget-object v3, v3, Lio/grpc/s0$h;->c:Lio/grpc/s0;

    iget v4, p0, Lio/grpc/s0$h$a;->b:I

    invoke-static {v3, v4}, Lio/grpc/s0;->d(Lio/grpc/s0;I)[B

    move-result-object v3

    invoke-static {v2, v0, v3}, Lio/grpc/s0;->e(Lio/grpc/s0;[B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lio/grpc/s0$h$a;->a:Z

    return v1

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/s0$h$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/s0$h$a;->b:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/s0$h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/grpc/s0$h$a;->a:Z

    .line 3
    iget-object v0, p0, Lio/grpc/s0$h$a;->c:Lio/grpc/s0$h;

    iget-object v1, v0, Lio/grpc/s0$h;->c:Lio/grpc/s0;

    iget v2, p0, Lio/grpc/s0$h$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/grpc/s0$h$a;->b:I

    invoke-static {v0}, Lio/grpc/s0$h;->d(Lio/grpc/s0$h;)Lio/grpc/s0$i;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lio/grpc/s0;->f(Lio/grpc/s0;ILio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
