.class Leh/r2$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$d;->a(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Leh/r2$d;


# direct methods
.method constructor <init>(Leh/r2$d;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Leh/r2$d$b;->b:Leh/r2$d;

    iput-object p2, p0, Leh/r2$d$b;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/r2$d$b;->b:Leh/r2$d;

    invoke-static {v0}, Leh/r2$d;->h(Leh/r2$d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leh/r2$d$b;->b:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->r(Leh/r2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Leh/r2$d$b;->b:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->t(Leh/r2;)Lio/grpc/t0$e;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    iget-object v2, p0, Leh/r2$d$b;->a:Lio/grpc/Status;

    invoke-virtual {v2}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/r2$d$b;->b:Leh/r2$d;

    .line 3
    invoke-static {v4}, Leh/r2$d;->m(Leh/r2$d;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Leh/r2$d$b;->a:Lio/grpc/Status;

    invoke-virtual {v4}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Leh/r2$d$b;->a:Lio/grpc/Status;

    invoke-virtual {v4}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to load LDS %s. xDS server returned: %s: %s."

    .line 4
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/t0$e;->a(Lio/grpc/Status;)V

    :cond_1
    :goto_0
    return-void
.end method
