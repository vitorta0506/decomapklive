.class Lxg/g$a;
.super Lio/grpc/internal/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/w0<",
        "Lxg/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lxg/g;


# direct methods
.method constructor <init>(Lxg/g;)V
    .locals 0

    iput-object p1, p0, Lxg/g$a;->b:Lxg/g;

    invoke-direct {p0}, Lio/grpc/internal/w0;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    iget-object v0, p0, Lxg/g$a;->b:Lxg/g;

    invoke-static {v0}, Lxg/g;->i(Lxg/g;)Lio/grpc/internal/k1$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/grpc/internal/k1$a;->c(Z)V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lxg/g$a;->b:Lxg/g;

    invoke-static {v0}, Lxg/g;->i(Lxg/g;)Lio/grpc/internal/k1$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/grpc/internal/k1$a;->c(Z)V

    return-void
.end method
