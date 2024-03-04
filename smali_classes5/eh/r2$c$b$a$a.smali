.class Leh/r2$c$b$a$a;
.super Lio/grpc/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$c$b$a;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/z$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Leh/r2$c$b$a;


# direct methods
.method constructor <init>(Leh/r2$c$b$a;Lio/grpc/g$a;)V
    .locals 0

    iput-object p1, p0, Leh/r2$c$b$a$a;->c:Leh/r2$c$b$a;

    invoke-direct {p0, p2}, Lio/grpc/z$a;-><init>(Lio/grpc/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Leh/r2$c$b$a$a;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/r2$c$b$a$a;->c:Leh/r2$c$b$a;

    iget-object v0, v0, Leh/r2$c$b$a;->b:Leh/r2$c$b;

    iget-object v1, v0, Leh/r2$c$b;->c:Leh/r2$c;

    iget-object v0, v0, Leh/r2$c$b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leh/r2$c;->b(Leh/r2$c;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/z$a;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method

.method public b(Lio/grpc/s0;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Leh/r2$c$b$a$a;->b:Z

    .line 2
    iget-object v0, p0, Leh/r2$c$b$a$a;->c:Leh/r2$c$b$a;

    iget-object v0, v0, Leh/r2$c$b$a;->b:Leh/r2$c$b;

    iget-object v1, v0, Leh/r2$c$b;->c:Leh/r2$c;

    iget-object v0, v0, Leh/r2$c$b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Leh/r2$c;->b(Leh/r2$c;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/z$a;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/g$a;->b(Lio/grpc/s0;)V

    return-void
.end method
