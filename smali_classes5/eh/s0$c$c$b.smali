.class Leh/s0$c$c$b;
.super Lio/grpc/t0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0$c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Leh/s0$c$c;


# direct methods
.method private constructor <init>(Leh/s0$c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    invoke-direct {p0}, Lio/grpc/t0$e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leh/s0$c$c;Leh/s0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/s0$c$c$b;-><init>(Leh/s0$c$c;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v0, v0, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->j(Leh/s0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/s0$c$c$b$a;

    invoke-direct {v1, p0, p1}, Leh/s0$c$c$b$a;-><init>(Leh/s0$c$c$b;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lio/grpc/t0$g;)V
    .locals 2

    iget-object v0, p0, Leh/s0$c$c$b;->a:Leh/s0$c$c;

    iget-object v0, v0, Leh/s0$c$c;->p:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->j(Leh/s0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/s0$c$c$b$b;

    invoke-direct {v1, p0, p1}, Leh/s0$c$c$b$b;-><init>(Leh/s0$c$c$b;Lio/grpc/t0$g;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
