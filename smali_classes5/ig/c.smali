.class Lig/c;
.super Lig/o0$b;
.source "SourceFile"


# instance fields
.field private final c:Lig/z$c;

.field private final d:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lig/z$c;Lio/grpc/Status;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lig/o0$b;-><init>()V

    const-string v0, "stream"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/z$c;

    iput-object p1, p0, Lig/c;->c:Lig/z$c;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lio/grpc/Status;->p()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Should not cancel with OK status"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 5
    iput-object p2, p0, Lig/c;->d:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method d()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lig/c;->d:Lio/grpc/Status;

    return-object v0
.end method

.method f()Lig/z$c;
    .locals 1

    iget-object v0, p0, Lig/c;->c:Lig/z$c;

    return-object v0
.end method
