.class public final Lio/grpc/netty/shaded/io/netty/util/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "length"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    return-void
.end method

.method private constructor <init>([C)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chars"

    .line 4
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->e([CLjava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    .line 5
    array-length p1, p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    return-void
.end method

.method private static e([CII)[C
    .locals 1

    .line 1
    array-length v0, p0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_1

    if-gt p1, v0, :cond_0

    .line 2
    new-array p1, v0, [C

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(C)Lio/grpc/netty/shaded/io/netty/util/internal/a;
    .locals 4

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 2
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a(C)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->c(Ljava/lang/CharSequence;II)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/internal/a;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->c(Ljava/lang/CharSequence;II)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/CharSequence;II)Lio/grpc/netty/shaded/io/netty/util/internal/a;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, p3, :cond_3

    sub-int v0, p3, p2

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    array-length v2, v1

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    add-int v2, v3, v0

    .line 3
    invoke-static {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->e([CII)[C

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    .line 4
    :cond_0
    instance-of v1, p1, Lio/grpc/netty/shaded/io/netty/util/internal/a;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/internal/a;

    .line 6
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    .line 7
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    invoke-static {p1, p2, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    return-object p0

    :cond_1
    :goto_0
    if-ge p2, p3, :cond_2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 10
    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: csq.length() >= ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "),but actual is ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public charAt(I)C
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    if-gt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    aget-char p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public d(I)C
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    return-void
.end method

.method public g(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    if-gt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (length: >= 0, <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(II)Lio/grpc/netty/shaded/io/netty/util/internal/a;
    .locals 2

    if-ne p1, p2, :cond_0

    .line 1
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/internal/a;

    const/16 p2, 0x10

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    array-length v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;-><init>(I)V

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;-><init>([C)V

    return-object v0
.end method

.method public i(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    return v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->h(II)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a:[C

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
