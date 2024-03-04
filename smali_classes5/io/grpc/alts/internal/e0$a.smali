.class final Lio/grpc/alts/internal/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/f0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/alts/internal/e0;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/alts/internal/f0$a<",
        "Lkg/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:Lio/grpc/alts/internal/y;

.field final synthetic c:Lio/grpc/alts/internal/e0;


# direct methods
.method constructor <init>(Lio/grpc/alts/internal/e0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/alts/internal/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/alts/internal/e0$a;->c:Lio/grpc/alts/internal/e0;

    iput-object p2, p0, Lio/grpc/alts/internal/e0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p3, p0, Lio/grpc/alts/internal/e0$a;->b:Lio/grpc/alts/internal/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkg/j;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/alts/internal/e0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iget-object v1, p0, Lio/grpc/alts/internal/e0$a;->b:Lio/grpc/alts/internal/y;

    invoke-virtual {v1}, Lio/grpc/alts/internal/y;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->u(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkg/j;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/e0$a;->a(Lkg/j;)V

    return-void
.end method
