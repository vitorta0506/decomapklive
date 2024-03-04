.class final Lkg/t0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field final a:Lio/grpc/netty/shaded/io/netty/util/internal/m;

.field final b:Lio/grpc/netty/shaded/io/netty/util/internal/m;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;

    move-result-object v0

    iput-object v0, p0, Lkg/t0$g;->a:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;

    move-result-object v0

    iput-object v0, p0, Lkg/t0$g;->b:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    return-void
.end method

.method synthetic constructor <init>(Lkg/t0$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lkg/t0$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lkg/t0$g;->a:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lkg/t0$g;->b:Lio/grpc/netty/shaded/io/netty/util/internal/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/m;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(usedHeapMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lkg/t0$g;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; usedDirectMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkg/t0$g;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
