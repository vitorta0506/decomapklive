.class Lio/grpc/internal/z$j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z$j;->a(Lio/grpc/Status;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lio/grpc/s0;

.field final synthetic c:Lio/grpc/internal/z$j;


# direct methods
.method constructor <init>(Lio/grpc/internal/z$j;Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z$j$c;->c:Lio/grpc/internal/z$j;

    iput-object p2, p0, Lio/grpc/internal/z$j$c;->a:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/z$j$c;->b:Lio/grpc/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/z$j$c;->c:Lio/grpc/internal/z$j;

    invoke-static {v0}, Lio/grpc/internal/z$j;->e(Lio/grpc/internal/z$j;)Lio/grpc/g$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/z$j$c;->a:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/z$j$c;->b:Lio/grpc/s0;

    invoke-virtual {v0, v1, v2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method