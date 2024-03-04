.class Lio/grpc/internal/r1$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/r1$d;->a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/r1$d;


# direct methods
.method constructor <init>(Lio/grpc/internal/r1$d;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/r1$d$a;->a:Lio/grpc/internal/r1$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/r1$d$a;->a:Lio/grpc/internal/r1$d;

    invoke-static {v0}, Lio/grpc/internal/r1$d;->b(Lio/grpc/internal/r1$d;)Lio/grpc/n0$h;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$h;->g()V

    return-void
.end method
