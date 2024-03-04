.class final Lfg/a;
.super Lio/grpc/b;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/b;-><init>()V

    const-string v0, "status"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Status;

    iput-object p1, p0, Lfg/a;->a:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V
    .locals 0

    iget-object p1, p0, Lfg/a;->a:Lio/grpc/Status;

    invoke-virtual {p3, p1}, Lio/grpc/b$a;->b(Lio/grpc/Status;)V

    return-void
.end method
