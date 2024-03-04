.class Lio/grpc/s0$e;
.super Lio/grpc/s0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/s0$i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final f:Lio/grpc/s0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/grpc/s0$f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/s0$f<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, v1}, Lio/grpc/s0$i;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lio/grpc/s0$a;)V

    const-string v1, "-bin"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Binary header is named %s. It must end with %s"

    .line 4
    invoke-static {v2, v3, p1, v1}, Lcom/google/common/base/o;->n(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string p1, "empty key name"

    invoke-static {v0, p1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const-string p1, "marshaller is null"

    .line 6
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/s0$f;

    iput-object p1, p0, Lio/grpc/s0$e;->f:Lio/grpc/s0$f;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/s0$f;Lio/grpc/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/s0$e;-><init>(Ljava/lang/String;Lio/grpc/s0$f;)V

    return-void
.end method


# virtual methods
.method i([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/s0$e;->f:Lio/grpc/s0$f;

    invoke-interface {v0, p1}, Lio/grpc/s0$f;->b([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method k(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/s0$e;->f:Lio/grpc/s0$f;

    invoke-interface {v0, p1}, Lio/grpc/s0$f;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
