.class Lig/y$a;
.super Lio/grpc/internal/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/w0<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lig/y;


# direct methods
.method constructor <init>(Lig/y;)V
    .locals 0

    iput-object p1, p0, Lig/y$a;->b:Lig/y;

    invoke-direct {p0}, Lio/grpc/internal/w0;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    iget-object v0, p0, Lig/y$a;->b:Lig/y;

    invoke-static {v0}, Lig/y;->G0(Lig/y;)Lig/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lig/d;->d(Z)V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lig/y$a;->b:Lig/y;

    invoke-static {v0}, Lig/y;->G0(Lig/y;)Lig/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lig/d;->d(Z)V

    return-void
.end method
