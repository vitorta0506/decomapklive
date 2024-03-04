.class final Leh/v1$a$c;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/v1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field final synthetic b:Leh/v1$a;


# direct methods
.method constructor <init>(Leh/v1$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/v1$a$c;->b:Leh/v1$a;

    invoke-direct {p0}, Ldh/b;-><init>()V

    .line 2
    iput-boolean p2, p0, Leh/v1$a$c;->a:Z

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Leh/v1$a$c;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Leh/v1$a$c;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$d;->j()V

    :cond_0
    return-void
.end method

.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 2

    iget-object v0, p0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->j(Leh/v1;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/v1$a$c$a;

    invoke-direct {v1, p0, p1, p2}, Leh/v1$a$c$a;-><init>(Leh/v1$a$c;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Leh/v1$a$c;->b:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->m(Leh/v1;)Lio/grpc/n0$d;

    move-result-object v0

    return-object v0
.end method
