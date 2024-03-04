.class Lig/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic e:Lig/n;


# direct methods
.method private constructor <init>(Lig/n;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lig/n$b;->e:Lig/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lig/n;->m(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lig/n;->m(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lig/n;->n(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lig/n$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method synthetic constructor <init>(Lig/n;Lig/n$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lig/n$b;-><init>(Lig/n;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lig/n$b;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lig/n$b;->d:Lio/grpc/netty/shaded/io/netty/util/c;

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
    invoke-virtual {p0}, Lig/n$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lig/n$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    iget v1, p0, Lig/n$b;->a:I

    aget-object v2, v0, v1

    iput-object v2, p0, Lig/n$b;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v2, v1, 0x1

    .line 3
    aget-object v2, v0, v2

    iput-object v2, p0, Lig/n$b;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v1, v1, 0x2

    .line 4
    iput v1, p0, Lig/n$b;->a:I

    .line 5
    array-length v2, v0

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lig/n$b;->e:Lig/n;

    invoke-static {v1}, Lig/n;->m(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lig/n$b;->e:Lig/n;

    invoke-static {v0}, Lig/n;->n(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    iput-object v0, p0, Lig/n$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lig/n$b;->a:I

    :cond_0
    return-object p0

    .line 8
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lig/n$b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lig/n$b;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lig/n$b;->a:I

    iget-object v1, p0, Lig/n$b;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v1

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

    invoke-virtual {p0}, Lig/n$b;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lig/n$b;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
