.class Lhg/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Lio/grpc/n0$h;

.field final b:Lio/grpc/d1$c;

.field c:Lio/grpc/q;


# direct methods
.method constructor <init>(Lio/grpc/n0$h;Lio/grpc/d1$c;Lio/grpc/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "subchannel"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$h;

    iput-object p1, p0, Lhg/b$c;->a:Lio/grpc/n0$h;

    const-string p1, "shutdownTimer"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1$c;

    iput-object p1, p0, Lhg/b$c;->b:Lio/grpc/d1$c;

    const-string p1, "state"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/q;

    iput-object p1, p0, Lhg/b$c;->c:Lio/grpc/q;

    return-void
.end method
