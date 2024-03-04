.class final Lio/grpc/netty/shaded/io/netty/util/internal/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/util/internal/g;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->b:Lio/grpc/netty/shaded/io/netty/util/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/g;Lio/grpc/netty/shaded/io/netty/util/internal/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/g;)V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/util/internal/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->a:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->b:Lio/grpc/netty/shaded/io/netty/util/internal/g;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/g;->c(Lio/grpc/netty/shaded/io/netty/util/internal/g;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->b:Lio/grpc/netty/shaded/io/netty/util/internal/g;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/g;->d(Lio/grpc/netty/shaded/io/netty/util/internal/g;)[Lio/grpc/netty/shaded/io/netty/util/internal/w;

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->a:I

    aget-object v0, v0, v1

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->a:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->b:Lio/grpc/netty/shaded/io/netty/util/internal/g;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/g;->c(Lio/grpc/netty/shaded/io/netty/util/internal/g;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/g$b;->a()Lio/grpc/netty/shaded/io/netty/util/internal/w;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
