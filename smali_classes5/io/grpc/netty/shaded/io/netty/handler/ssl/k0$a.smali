.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->b:Ljava/lang/String;

    .line 3
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->c:I

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->s(Ljava/lang/CharSequence;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->c:I

    iget v2, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostPort{host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
