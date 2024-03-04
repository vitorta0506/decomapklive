.class public Leh/m0;
.super Lio/grpc/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/m0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    return-void
.end method

.method static f(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    :try_start_0
    const-string v0, "cluster"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/internal/b1;->l(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Leh/m0$a;

    invoke-direct {v1, v0}, Leh/m0$a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse CDS LB config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 1

    new-instance v0, Leh/l0;

    invoke-direct {v0, p1}, Leh/l0;-><init>(Lio/grpc/n0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "cds_experimental"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    invoke-static {p1}, Leh/m0;->f(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
