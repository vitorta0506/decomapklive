.class Lio/grpc/internal/y0$a;
.super Lio/grpc/internal/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/w0<",
        "Lio/grpc/internal/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/internal/y0;


# direct methods
.method constructor <init>(Lio/grpc/internal/y0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0$a;->b:Lio/grpc/internal/y0;

    invoke-direct {p0}, Lio/grpc/internal/w0;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y0$a;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->i(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$j;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/y0$a;->b:Lio/grpc/internal/y0;

    invoke-virtual {v0, v1}, Lio/grpc/internal/y0$j;->a(Lio/grpc/internal/y0;)V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y0$a;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->i(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$j;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/y0$a;->b:Lio/grpc/internal/y0;

    invoke-virtual {v0, v1}, Lio/grpc/internal/y0$j;->b(Lio/grpc/internal/y0;)V

    return-void
.end method
