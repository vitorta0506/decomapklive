.class final Leh/q0$b$b;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/q0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Leh/q0$b;


# direct methods
.method private constructor <init>(Leh/q0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/q0$b$b;->a:Leh/q0$b;

    invoke-direct {p0}, Ldh/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leh/q0$b;Leh/q0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/q0$b$b;-><init>(Leh/q0$b;)V

    return-void
.end method


# virtual methods
.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 2

    iget-object v0, p0, Leh/q0$b$b;->a:Leh/q0$b;

    iget-object v0, v0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->j(Leh/q0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/q0$b$b$a;

    invoke-direct {v1, p0, p1, p2}, Leh/q0$b$b$a;-><init>(Leh/q0$b$b;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Leh/q0$b$b;->a:Leh/q0$b;

    iget-object v0, v0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->g(Leh/q0;)Lio/grpc/n0$d;

    move-result-object v0

    return-object v0
.end method
