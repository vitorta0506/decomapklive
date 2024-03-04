.class final Leh/s0$c$d;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/grpc/n0$d;

.field final synthetic b:Leh/s0$c;


# direct methods
.method private constructor <init>(Leh/s0$c;Lio/grpc/n0$d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Leh/s0$c$d;->b:Leh/s0$c;

    invoke-direct {p0}, Ldh/b;-><init>()V

    const-string p1, "delegate"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Leh/s0$c$d;->a:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {p2}, Lio/grpc/n0$d;->i()V

    return-void
.end method

.method synthetic constructor <init>(Leh/s0$c;Lio/grpc/n0$d;Leh/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leh/s0$c$d;-><init>(Leh/s0$c;Lio/grpc/n0$d;)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/s0$c$d;->b:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->j(Leh/s0$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/s0$c$a;

    .line 2
    instance-of v2, v1, Leh/s0$c$c;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Leh/s0$c$c;

    invoke-virtual {v1}, Leh/s0$c$c;->o()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Leh/s0$c$d;->a:Lio/grpc/n0$d;

    return-object v0
.end method
