.class final Lio/grpc/m$a;
.super Lio/grpc/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/b$a;

.field private final b:Lio/grpc/s0;


# direct methods
.method public constructor <init>(Lio/grpc/b$a;Lio/grpc/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/b$a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/m$a;->a:Lio/grpc/b$a;

    .line 3
    iput-object p2, p0, Lio/grpc/m$a;->b:Lio/grpc/s0;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/s0;)V
    .locals 2

    const-string v0, "headers"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    .line 3
    iget-object v1, p0, Lio/grpc/m$a;->b:Lio/grpc/s0;

    invoke-virtual {v0, v1}, Lio/grpc/s0;->q(Lio/grpc/s0;)V

    .line 4
    invoke-virtual {v0, p1}, Lio/grpc/s0;->q(Lio/grpc/s0;)V

    .line 5
    iget-object p1, p0, Lio/grpc/m$a;->a:Lio/grpc/b$a;

    invoke-virtual {p1, v0}, Lio/grpc/b$a;->a(Lio/grpc/s0;)V

    return-void
.end method

.method public b(Lio/grpc/Status;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/m$a;->a:Lio/grpc/b$a;

    invoke-virtual {v0, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    return-void
.end method
