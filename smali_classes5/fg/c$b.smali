.class Lfg/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/f2$d<",
        "Lio/grpc/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfg/c$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfg/c$b;->d()Lio/grpc/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/d;

    invoke-virtual {p0, p1}, Lfg/c$b;->c(Lio/grpc/d;)V

    return-void
.end method

.method public c(Lio/grpc/d;)V
    .locals 0

    check-cast p1, Lfg/c$c;

    invoke-virtual {p1}, Lfg/c$c;->k()V

    return-void
.end method

.method public d()Lio/grpc/d;
    .locals 4

    .line 1
    new-instance v0, Lmg/e;

    new-instance v1, Lug/i;

    const-string v2, "handshaker pool"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lug/i;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v3, v1}, Lmg/e;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Lfg/c$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lig/v;->I(Ljava/lang/String;)Lig/v;

    move-result-object v1

    const-class v2, Log/d;

    .line 3
    invoke-virtual {v1, v2}, Lig/v;->D(Ljava/lang/Class;)Lig/v;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/grpc/internal/b;->c()Lio/grpc/r0;

    move-result-object v1

    check-cast v1, Lig/v;

    .line 5
    invoke-virtual {v1, v0}, Lig/v;->F(Lio/grpc/netty/shaded/io/netty/channel/m0;)Lig/v;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lig/v;->P()Lig/v;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lio/grpc/internal/b;->a()Lio/grpc/q0;

    move-result-object v1

    .line 8
    new-instance v2, Lfg/c$c;

    invoke-direct {v2, v1, v0}, Lfg/c$c;-><init>(Lio/grpc/q0;Lio/grpc/netty/shaded/io/netty/channel/m0;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "grpc-alts-handshaker-service-channel"

    return-object v0
.end method
