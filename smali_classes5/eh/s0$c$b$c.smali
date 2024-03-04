.class Leh/s0$c$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/s0$c$b;->a(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Leh/s0$c$b;


# direct methods
.method constructor <init>(Leh/s0$c$b;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Leh/s0$c$b$c;->b:Leh/s0$c$b;

    iput-object p2, p0, Leh/s0$c$b$c;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/s0$c$b$c;->b:Leh/s0$c$b;

    iget-boolean v1, v0, Leh/s0$c$a;->h:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Leh/s0$c$b$c;->a:Lio/grpc/Status;

    iput-object v1, v0, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 3
    iget-object v0, v0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/s0$c$b$c;->a:Lio/grpc/Status;

    aput-object v4, v2, v3

    const-string v3, "Received EDS error: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Leh/s0$c$b$c;->b:Leh/s0$c$b;

    iget-object v0, v0, Leh/s0$c$b;->k:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->h(Leh/s0$c;)V

    return-void
.end method
