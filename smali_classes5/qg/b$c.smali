.class final Lqg/b$c;
.super Lug/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/h<",
        "Lio/grpc/netty/shaded/io/netty/channel/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic n:Lqg/b;


# direct methods
.method private constructor <init>(Lqg/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqg/b$c;->n:Lqg/b;

    invoke-direct {p0}, Lug/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqg/b;Lqg/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lqg/b$c;-><init>(Lqg/b;)V

    return-void
.end method


# virtual methods
.method protected v()Lug/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lqg/b$c;->n:Lqg/b;

    invoke-static {v0}, Lqg/b;->v(Lqg/b;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lqg/b$c;->n:Lqg/b;

    invoke-static {v0}, Lqg/b;->v(Lqg/b;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
