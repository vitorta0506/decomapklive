.class public final Leh/b2;
.super Lio/grpc/o0;
.source "SourceFile"


# static fields
.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GRPC_XDS_EXPERIMENTAL_ENABLE_RING_HASH"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Leh/b2;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 1

    new-instance v0, Leh/a2;

    invoke-direct {v0, p1}, Leh/a2;-><init>(Lio/grpc/n0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "ring_hash_experimental"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Leh/b2;->b:Z

    return v0
.end method

.method public e(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    const-string v0, "minRingSize"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/internal/b1;->j(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "maxRingSize"

    .line 2
    invoke-static {p1, v1}, Lio/grpc/internal/b1;->j(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x400

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    const-wide/32 v1, 0x800000

    if-nez p1, :cond_1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Leh/a2$d;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Leh/a2$d;-><init>(JJ)V

    invoke-static {v1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    :goto_0
    sget-object p1, Lio/grpc/Status;->i:Lio/grpc/Status;

    const-string v0, "Invalid \'mingRingSize\'/\'maxRingSize\'"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
