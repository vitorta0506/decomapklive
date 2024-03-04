.class Leh/q0$b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/q0$b$b;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/ConnectivityState;

.field final synthetic b:Lio/grpc/n0$i;

.field final synthetic c:Leh/q0$b$b;


# direct methods
.method constructor <init>(Leh/q0$b$b;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 0

    iput-object p1, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iput-object p2, p0, Leh/q0$b$b$a;->a:Lio/grpc/ConnectivityState;

    iput-object p3, p0, Leh/q0$b$b$a;->b:Lio/grpc/n0$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iget-object v0, v0, Leh/q0$b$b;->a:Leh/q0$b;

    iget-object v0, v0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->h(Leh/q0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iget-object v1, v1, Leh/q0$b$b;->a:Leh/q0$b;

    invoke-static {v1}, Leh/q0$b;->c(Leh/q0$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iget-object v0, v0, Leh/q0$b$b;->a:Leh/q0$b;

    iget-object v1, p0, Leh/q0$b$b$a;->a:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Leh/q0$b;->g(Leh/q0$b;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    .line 3
    iget-object v0, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iget-object v0, v0, Leh/q0$b$b;->a:Leh/q0$b;

    iget-object v1, p0, Leh/q0$b$b$a;->b:Lio/grpc/n0$i;

    invoke-static {v0, v1}, Leh/q0$b;->e(Leh/q0$b;Lio/grpc/n0$i;)Lio/grpc/n0$i;

    .line 4
    iget-object v0, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iget-object v0, v0, Leh/q0$b$b;->a:Leh/q0$b;

    invoke-static {v0}, Leh/q0$b;->b(Leh/q0$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Leh/q0$b$b$a;->c:Leh/q0$b$b;

    iget-object v0, v0, Leh/q0$b$b;->a:Leh/q0$b;

    iget-object v0, v0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->f(Leh/q0;)V

    :cond_1
    return-void
.end method
