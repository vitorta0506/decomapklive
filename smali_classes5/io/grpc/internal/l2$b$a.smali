.class Lio/grpc/internal/l2$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/l2$b;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/g$a;

.field final synthetic b:Lio/grpc/internal/l2$b;


# direct methods
.method constructor <init>(Lio/grpc/internal/l2$b;Lio/grpc/g$a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/l2$b$a;->b:Lio/grpc/internal/l2$b;

    iput-object p2, p0, Lio/grpc/internal/l2$b$a;->a:Lio/grpc/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/l2$b$a;->a:Lio/grpc/g$a;

    sget-object v1, Lio/grpc/internal/l2;->h:Lio/grpc/Status;

    new-instance v2, Lio/grpc/s0;

    invoke-direct {v2}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method
