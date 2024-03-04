.class Leh/v1$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/v1$a$c;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/ConnectivityState;

.field final synthetic b:Lio/grpc/n0$i;

.field final synthetic c:Leh/v1$a$c;


# direct methods
.method constructor <init>(Leh/v1$a$c;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 0

    iput-object p1, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iput-object p2, p0, Leh/v1$a$c$a;->a:Lio/grpc/ConnectivityState;

    iput-object p3, p0, Leh/v1$a$c$a;->b:Lio/grpc/n0$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iget-object v0, v0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->k(Leh/v1;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iget-object v1, v1, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v1, v1, Leh/v1$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iget-object v0, v0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v1, p0, Leh/v1$a$c$a;->a:Lio/grpc/ConnectivityState;

    iput-object v1, v0, Leh/v1$a;->g:Lio/grpc/ConnectivityState;

    .line 3
    iget-object v1, p0, Leh/v1$a$c$a;->b:Lio/grpc/n0$i;

    iput-object v1, v0, Leh/v1$a;->h:Lio/grpc/n0$i;

    .line 4
    iget-object v0, v0, Leh/v1$a;->e:Lio/grpc/d1$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iget-object v0, v0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->d:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Leh/v1$a$c$a;->a:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leh/v1$a$c$a;->a:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leh/v1$a$c$a;->a:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iget-object v0, v0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->d:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 9
    :cond_3
    iget-object v0, p0, Leh/v1$a$c$a;->c:Leh/v1$a$c;

    iget-object v0, v0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh/v1;->h(Leh/v1;Z)V

    return-void
.end method
