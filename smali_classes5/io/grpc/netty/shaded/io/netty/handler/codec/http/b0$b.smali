.class Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

.field private final b:I

.field c:I


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    .line 3
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->b:I

    return-void
.end method


# virtual methods
.method public a(B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result p1

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->g(I)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->b()V

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->a(C)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    return v0
.end method

.method protected final b()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->b:I

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;

    move-result-object v0

    throw v0
.end method

.method protected c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP header is larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->f()V

    .line 3
    invoke-virtual {p1, p0}, Lkg/j;->p0(Lio/grpc/netty/shaded/io/netty/util/g;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Lkg/j;->R1(I)Lkg/j;

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/a;

    return-object p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    return-void
.end method
