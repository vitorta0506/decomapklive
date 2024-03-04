.class Leh/s0$c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0$c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leh/s0$c$c;


# direct methods
.method private constructor <init>(Leh/s0$c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/s0$c$c$a;->a:Leh/s0$c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leh/s0$c$c;Leh/s0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/s0$c$c$a;-><init>(Leh/s0$c$c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/s0$c$c$a;->a:Leh/s0$c$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh/s0$c$c;->j(Leh/s0$c$c;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    .line 2
    iget-object v0, p0, Leh/s0$c$c$a;->a:Leh/s0$c$c;

    iget-boolean v1, v0, Leh/s0$c$a;->h:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Leh/s0$c$c;->k(Leh/s0$c$c;)Lio/grpc/t0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/t0;->b()V

    :cond_0
    return-void
.end method
