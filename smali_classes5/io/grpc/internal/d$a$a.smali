.class Lio/grpc/internal/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/d$a;->v(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lqh/b;

.field final synthetic b:I

.field final synthetic c:Lio/grpc/internal/d$a;


# direct methods
.method constructor <init>(Lio/grpc/internal/d$a;Lqh/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/d$a$a;->c:Lio/grpc/internal/d$a;

    iput-object p2, p0, Lio/grpc/internal/d$a$a;->a:Lqh/b;

    iput p3, p0, Lio/grpc/internal/d$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "AbstractStream.request"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/grpc/internal/d$a$a;->a:Lqh/b;

    invoke-static {v1}, Lqh/c;->e(Lqh/b;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/d$a$a;->c:Lio/grpc/internal/d$a;

    invoke-static {v1}, Lio/grpc/internal/d$a;->i(Lio/grpc/internal/d$a;)Lio/grpc/internal/y;

    move-result-object v1

    iget v2, p0, Lio/grpc/internal/d$a$a;->b:I

    invoke-interface {v1, v2}, Lio/grpc/internal/y;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/d$a$a;->c:Lio/grpc/internal/d$a;

    invoke-interface {v2, v1}, Lio/grpc/internal/l1$b;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :goto_0
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw v1
.end method
