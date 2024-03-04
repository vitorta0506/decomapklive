.class Lhg/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private final a:Lio/grpc/Status;

.field final synthetic b:Lhg/i;


# direct methods
.method private constructor <init>(Lhg/i;Lio/grpc/Status;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lhg/i$h;->b:Lhg/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lhg/i$h;->a:Lio/grpc/Status;

    return-void
.end method

.method synthetic constructor <init>(Lhg/i;Lio/grpc/Status;Lhg/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lhg/i$h;-><init>(Lhg/i;Lio/grpc/Status;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/i$h;->b:Lhg/i;

    invoke-static {v0}, Lhg/i;->j(Lhg/i;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "already in fallback"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lhg/i$h;->b:Lhg/i;

    iget-object v1, p0, Lhg/i$h;->a:Lio/grpc/Status;

    invoke-static {v0, v1}, Lhg/i;->t(Lhg/i;Lio/grpc/Status;)Lio/grpc/Status;

    .line 3
    iget-object v0, p0, Lhg/i$h;->b:Lhg/i;

    invoke-static {v0}, Lhg/i;->u(Lhg/i;)V

    .line 4
    iget-object v0, p0, Lhg/i$h;->b:Lhg/i;

    invoke-static {v0}, Lhg/i;->v(Lhg/i;)V

    return-void
.end method
