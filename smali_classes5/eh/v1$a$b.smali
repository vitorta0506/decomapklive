.class Leh/v1$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/v1$a;-><init>(Leh/v1;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leh/v1$a;


# direct methods
.method constructor <init>(Leh/v1$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/v1$a$b;->b:Leh/v1$a;

    iput-object p2, p0, Leh/v1$a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/v1$a$b;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->e:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/v1$a$b;->b:Leh/v1$a;

    new-instance v1, Leh/t2$b;

    sget-object v2, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection timeout for priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leh/v1$a$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v2, v3}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-direct {v1, v2}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    iput-object v1, v0, Leh/v1$a;->h:Lio/grpc/n0$i;

    .line 4
    iget-object v0, p0, Leh/v1$a$b;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->f(Leh/v1;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Leh/v1$a$b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Priority {0} failed over to next"

    invoke-virtual {v0, v1, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Leh/v1$a$b;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh/v1;->g(Leh/v1;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Leh/v1$a$b;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0, v2}, Leh/v1;->h(Leh/v1;Z)V

    return-void
.end method
