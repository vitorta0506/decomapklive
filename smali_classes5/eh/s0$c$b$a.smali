.class Leh/s0$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/s0$c$b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leh/s0$c$b;


# direct methods
.method constructor <init>(Leh/s0$c$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leh/s0$c$b$a;->b:Leh/s0$c$b;

    iput-object p2, p0, Leh/s0$c$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/s0$c$b$a;->b:Leh/s0$c$b;

    iget-boolean v1, v0, Leh/s0$c$a;->h:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Leh/s0$c$b$a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Resource {0} unavailable"

    invoke-virtual {v0, v1, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Leh/s0$c$b$a;->b:Leh/s0$c$b;

    sget-object v1, Lio/grpc/Status;->f:Lio/grpc/Status;

    iput-object v1, v0, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 4
    iput-boolean v2, v0, Leh/s0$c$a;->f:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Leh/s0$c$a;->g:Leh/s0$b;

    .line 6
    iget-object v0, v0, Leh/s0$c$b;->k:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->g(Leh/s0$c;)V

    return-void
.end method
