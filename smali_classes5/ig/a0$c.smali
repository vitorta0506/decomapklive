.class Lig/a0$c;
.super Lig/z$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/a0;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic E:Lig/a0;


# direct methods
.method constructor <init>(Lig/a0;Lig/y;Lio/grpc/netty/shaded/io/netty/channel/l0;ILio/grpc/internal/i2;Lio/grpc/internal/p2;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lig/a0$c;->E:Lig/a0;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lig/z$c;-><init>(Lig/y;Lio/grpc/netty/shaded/io/netty/channel/l0;ILio/grpc/internal/i2;Lio/grpc/internal/p2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected e0(Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lig/a0$c;->E:Lig/a0;

    invoke-static {v0, p1}, Lig/a0;->i(Lig/a0;Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method
