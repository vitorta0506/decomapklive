.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:[Lio/grpc/netty/shaded/io/netty/util/c;

.field private c:Lio/grpc/netty/shaded/io/netty/util/c;

.field private d:Lio/grpc/netty/shaded/io/netty/util/c;

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public c()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->a:I

    aget-object v2, v0, v1

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v2, v1, 0x1

    .line 3
    aget-object v2, v0, v2

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v1, v1, 0x2

    .line 4
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->a:I

    .line 5
    array-length v2, v0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->a:I

    :cond_0
    return-object p0

    .line 8
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->a:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
