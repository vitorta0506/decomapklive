.class final Lio/grpc/s0$k;
.super Lio/grpc/s0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
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
.field private final f:Lio/grpc/s0$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLio/grpc/s0$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/grpc/s0$l<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/s0$i;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lio/grpc/s0$a;)V

    const-string p2, "-bin"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/o;->n(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "marshaller"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/s0$l;

    iput-object p1, p0, Lio/grpc/s0$k;->f:Lio/grpc/s0$l;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLio/grpc/s0$l;Lio/grpc/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/s0$k;-><init>(Ljava/lang/String;ZLio/grpc/s0$l;)V

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

    iget-object v0, p0, Lio/grpc/s0$k;->f:Lio/grpc/s0$l;

    invoke-interface {v0, p1}, Lio/grpc/s0$l;->b([B)Ljava/lang/Object;

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

    iget-object v0, p0, Lio/grpc/s0$k;->f:Lio/grpc/s0$l;

    invoke-interface {v0, p1}, Lio/grpc/s0$l;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
