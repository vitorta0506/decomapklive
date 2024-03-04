.class final Lhg/h;
.super Lio/grpc/internal/c0;
.source "SourceFile"


# static fields
.field private static final C:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lhg/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lhg/h;->C:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/t0$b;Lio/grpc/internal/f2$d;Lcom/google/common/base/u;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/t0$b;",
            "Lio/grpc/internal/f2$d<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/common/base/u;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lio/grpc/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/t0$b;Lio/grpc/internal/f2$d;Lcom/google/common/base/u;Z)V

    return-void
.end method

.method private E()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/c0;->v()Lio/grpc/internal/c0$f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_grpclb._tcp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhg/h;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/grpc/internal/c0$f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v2

    .line 4
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/internal/c0$h;

    .line 7
    :try_start_1
    iget-object v6, v5, Lio/grpc/internal/c0$h;->a:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lio/grpc/internal/c0;->c:Lio/grpc/internal/c0$b;

    iget-object v8, v5, Lio/grpc/internal/c0$h;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Lio/grpc/internal/c0$b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 9
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 11
    new-instance v10, Ljava/net/InetSocketAddress;

    iget v11, v5, Lio/grpc/internal/c0$h;->b:I

    invoke-direct {v10, v9, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_2
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v7

    sget-object v9, Lhg/e;->d:Lio/grpc/a$c;

    .line 13
    invoke-virtual {v7, v9, v6}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v6

    .line 15
    new-instance v7, Lio/grpc/x;

    .line 16
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    .line 17
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 18
    sget-object v7, Lhg/h;->C:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find address for SRV record "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v2, :cond_1

    .line 19
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v4, v2

    move-object v2, v6

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 20
    sget-object v0, Lhg/h;->C:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "SRV lookup failure"

    invoke-virtual {v0, v2, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    .line 21
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    sget-object v0, Lhg/h;->C:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "SRV-provided hostname lookup failure"

    invoke-virtual {v0, v1, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_5
    :goto_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected o(Z)Lio/grpc/internal/c0$c;
    .locals 3

    .line 1
    invoke-direct {p0}, Lhg/h;->E()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Lio/grpc/internal/c0;->o(Z)Lio/grpc/internal/c0$c;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Lhg/e;->c:Lio/grpc/a$c;

    .line 5
    invoke-virtual {v1, v2, p1}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object p1

    iput-object p1, v0, Lio/grpc/internal/c0$c;->d:Lio/grpc/a;

    :cond_0
    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/internal/c0;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
