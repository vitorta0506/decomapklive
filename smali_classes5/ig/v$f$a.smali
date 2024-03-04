.class Lig/v$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/v$f;->h1(Ljava/net/SocketAddress;Lio/grpc/internal/s$a;Lio/grpc/ChannelLogger;)Lio/grpc/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/h$b;

.field final synthetic b:Lig/v$f;


# direct methods
.method constructor <init>(Lig/v$f;Lio/grpc/internal/h$b;)V
    .locals 0

    iput-object p1, p0, Lig/v$f$a;->b:Lig/v$f;

    iput-object p2, p0, Lig/v$f$a;->a:Lio/grpc/internal/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lig/v$f$a;->a:Lio/grpc/internal/h$b;

    invoke-virtual {v0}, Lio/grpc/internal/h$b;->a()V

    return-void
.end method
