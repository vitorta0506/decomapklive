.class Leh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/a;


# direct methods
.method constructor <init>(Leh/a;)V
    .locals 0

    iput-object p1, p0, Leh/a$a;->a:Leh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh/a;->b(Leh/a;Z)Z

    .line 2
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutting down"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->m(Leh/a;)Leh/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->m(Leh/a;)Leh/a$c;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v2, "shutdown"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object v1

    invoke-static {v0, v1}, Leh/a$c;->a(Leh/a$c;Ljava/lang/Exception;)V

    .line 5
    :cond_0
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->o(Leh/a;)Lio/grpc/d1$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->o(Leh/a;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->o(Leh/a;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, Leh/a$a;->a:Leh/a;

    invoke-static {v0}, Leh/a;->q(Leh/a;)Lio/grpc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q0;->m()Lio/grpc/q0;

    return-void
.end method
