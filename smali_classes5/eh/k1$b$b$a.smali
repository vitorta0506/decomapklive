.class Leh/k1$b$b$a;
.super Lio/grpc/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/k1$b$b;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
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
.field final synthetic b:Leh/k1$b$b;


# direct methods
.method constructor <init>(Leh/k1$b$b;Lio/grpc/g$a;)V
    .locals 0

    iput-object p1, p0, Leh/k1$b$b$a;->b:Leh/k1$b$b;

    invoke-direct {p0, p2}, Lio/grpc/z$a;-><init>(Lio/grpc/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    sget-object v1, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Leh/k1$b$b$a;->b:Leh/k1$b$b;

    iget-object v1, v1, Leh/k1$b$b;->b:Leh/k1$b;

    iget-object v1, v1, Leh/k1$b;->a:Ljava/lang/Long;

    aput-object v1, p2, v0

    const-string v0, "Deadline exceeded after up to %d ns of fault-injected delay"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    sget-object v0, Lio/grpc/Status;->j:Lio/grpc/Status;

    .line 6
    invoke-virtual {v0, p2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    invoke-virtual {p1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 7
    new-instance p2, Lio/grpc/s0;

    invoke-direct {p2}, Lio/grpc/s0;-><init>()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lio/grpc/z$a;->e()Lio/grpc/g$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method
