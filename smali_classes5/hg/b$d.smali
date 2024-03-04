.class final Lhg/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/grpc/n0$h;

.field final synthetic b:Lhg/b;


# direct methods
.method private constructor <init>(Lhg/b;Lio/grpc/n0$h;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lhg/b$d;->b:Lhg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "subchannel"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$h;

    iput-object p1, p0, Lhg/b$d;->a:Lio/grpc/n0$h;

    return-void
.end method

.method synthetic constructor <init>(Lhg/b;Lio/grpc/n0$h;Lhg/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lhg/b$d;-><init>(Lhg/b;Lio/grpc/n0$h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/b$d;->b:Lhg/b;

    invoke-static {v0}, Lhg/b;->f(Lhg/b;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lhg/b$d;->a:Lio/grpc/n0$h;

    invoke-virtual {v1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/b$c;

    .line 2
    iget-object v0, v0, Lhg/b$c;->a:Lio/grpc/n0$h;

    iget-object v1, p0, Lhg/b$d;->a:Lio/grpc/n0$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Inconsistent state"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lhg/b$d;->a:Lio/grpc/n0$h;

    invoke-virtual {v0}, Lio/grpc/n0$h;->h()V

    return-void
.end method
