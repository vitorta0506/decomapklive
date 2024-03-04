.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;


# instance fields
.field private final a:[B

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->b:[B

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;-><init>([B)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a:[B

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->b:I

    return-void
.end method


# virtual methods
.method a()[B
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a:[B

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenSslSessionId{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a:[B

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
