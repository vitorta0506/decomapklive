.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;Lio/grpc/netty/shaded/io/netty/util/internal/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)V

    return-void
.end method


# virtual methods
.method public a(B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->M(Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    if-ne v0, v1, :cond_2

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->N(Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->b()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->a(B)Z

    move-result p1

    return p1
.end method

.method protected c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An HTTP line is larger than "

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
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->e()V

    .line 2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    return-object p1
.end method
