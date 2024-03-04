.class Leh/n2$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/n2$b;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/ConnectivityState;

.field final synthetic b:Lio/grpc/n0$i;

.field final synthetic c:Leh/n2$b;


# direct methods
.method constructor <init>(Leh/n2$b;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 0

    iput-object p1, p0, Leh/n2$b$a;->c:Leh/n2$b;

    iput-object p2, p0, Leh/n2$b$a;->a:Lio/grpc/ConnectivityState;

    iput-object p3, p0, Leh/n2$b$a;->b:Lio/grpc/n0$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n2$b$a;->c:Leh/n2$b;

    iget-object v0, v0, Leh/n2$b;->d:Leh/n2;

    invoke-static {v0}, Leh/n2;->f(Leh/n2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/n2$b$a;->c:Leh/n2$b;

    iget-object v1, v1, Leh/n2$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/n2$b$a;->c:Leh/n2$b;

    iget-object v1, p0, Leh/n2$b$a;->a:Lio/grpc/ConnectivityState;

    iput-object v1, v0, Leh/n2$b;->b:Lio/grpc/ConnectivityState;

    .line 3
    iget-object v1, p0, Leh/n2$b$a;->b:Lio/grpc/n0$i;

    iput-object v1, v0, Leh/n2$b;->c:Lio/grpc/n0$i;

    .line 4
    iget-object v0, v0, Leh/n2$b;->d:Leh/n2;

    invoke-static {v0}, Leh/n2;->g(Leh/n2;)V

    return-void
.end method
