.class Lig/j0;
.super Lig/o0$b;
.source "SourceFile"


# instance fields
.field private final c:Lio/grpc/internal/r$a;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lig/o0$b;-><init>()V

    .line 2
    iput-object p1, p0, Lig/j0;->c:Lio/grpc/internal/r$a;

    .line 3
    iput-object p2, p0, Lig/j0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method d()Lio/grpc/internal/r$a;
    .locals 1

    iget-object v0, p0, Lig/j0;->c:Lio/grpc/internal/r$a;

    return-object v0
.end method

.method f()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lig/j0;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method
