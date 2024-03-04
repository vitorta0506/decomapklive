.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method varargs constructor <init>([Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->b(I)I

    move-result v0

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;->b:I

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 5
    iget-object v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;->a(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;->b:I

    and-int/2addr v3, v4

    .line 6
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    aget-object v5, v4, v3

    if-nez v5, :cond_0

    .line 7
    aput-object v2, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " collision between values: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;->a:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    aget-object v1, v1, v3

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method
