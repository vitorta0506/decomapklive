.class public final Lv6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv6/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Duration;

.field public static final b:Lcom/google/protobuf/Duration;

.field public static final c:Lcom/google/protobuf/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/Duration;->newBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v0

    const-wide v1, -0x4979cb9e00L

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/Duration$b;->k0(J)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    const v1, -0x3b9ac9ff

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Duration$b;->j0(I)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$b;->X()Lcom/google/protobuf/Duration;

    move-result-object v0

    sput-object v0, Lv6/a;->a:Lcom/google/protobuf/Duration;

    .line 2
    invoke-static {}, Lcom/google/protobuf/Duration;->newBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v0

    const-wide v1, 0x4979cb9e00L

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/Duration$b;->k0(J)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    const v1, 0x3b9ac9ff

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Duration$b;->j0(I)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$b;->X()Lcom/google/protobuf/Duration;

    move-result-object v0

    sput-object v0, Lv6/a;->b:Lcom/google/protobuf/Duration;

    .line 3
    invoke-static {}, Lcom/google/protobuf/Duration;->newBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/Duration$b;->k0(J)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Duration$b;->j0(I)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$b;->X()Lcom/google/protobuf/Duration;

    move-result-object v0

    sput-object v0, Lv6/a;->c:Lcom/google/protobuf/Duration;

    return-void
.end method

.method public static a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getNanos()I

    move-result v2

    .line 3
    invoke-static {v0, v1, v2}, Lv6/a;->e(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    .line 6
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I
    .locals 1

    sget-object v0, Lv6/a$a;->a:Lv6/a$a;

    invoke-virtual {v0, p0, p1}, Lv6/a$a;->a(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I

    move-result p0

    return p0
.end method

.method public static c(J)Lcom/google/protobuf/Duration;
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    rem-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    long-to-int p1, p0

    invoke-static {v2, v3, p1}, Lv6/a;->f(JI)Lcom/google/protobuf/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static d(J)Lcom/google/protobuf/Duration;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    rem-long/2addr p0, v0

    long-to-int p1, p0

    invoke-static {v2, v3, p1}, Lv6/a;->f(JI)Lcom/google/protobuf/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static e(JI)Z
    .locals 6

    const/4 v0, 0x0

    const-wide v1, -0x4979cb9e00L

    cmp-long v3, p0, v1

    if-ltz v3, :cond_4

    const-wide v1, 0x4979cb9e00L

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v1, p2

    const-wide/32 v3, -0x3b9ac9ff

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_2

    if-gez p2, :cond_3

    :cond_2
    if-gtz v3, :cond_4

    if-lez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method static f(JI)Lcom/google/protobuf/Duration;
    .locals 8

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    const-wide/32 v4, -0x3b9aca00

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1
    :cond_0
    div-long v4, v0, v2

    invoke-static {p0, p1, v4, v5}, Lcom/google/common/math/e;->a(JJ)J

    move-result-wide p0

    .line 2
    rem-long/2addr v0, v2

    long-to-int p2, v0

    :cond_1
    const-wide/16 v0, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-lez v6, :cond_2

    if-gez p2, :cond_2

    int-to-long v6, p2

    add-long/2addr v6, v2

    long-to-int p2, v6

    sub-long/2addr p0, v0

    :cond_2
    cmp-long v6, p0, v4

    if-gez v6, :cond_3

    if-lez p2, :cond_3

    int-to-long v4, p2

    sub-long/2addr v4, v2

    long-to-int p2, v4

    add-long/2addr p0, v0

    .line 3
    :cond_3
    invoke-static {}, Lcom/google/protobuf/Duration;->newBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/Duration$b;->k0(J)Lcom/google/protobuf/Duration$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/Duration$b;->j0(I)Lcom/google/protobuf/Duration$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Duration$b;->X()Lcom/google/protobuf/Duration;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lv6/a;->a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/protobuf/Duration;)J
    .locals 6

    .line 1
    invoke-static {p0}, Lv6/a;->a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/e;->b(JJ)J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getNanos()I

    move-result p0

    int-to-long v2, p0

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/e;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Lcom/google/protobuf/Duration;)J
    .locals 4

    .line 1
    invoke-static {p0}, Lv6/a;->a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/e;->b(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getNanos()I

    move-result p0

    int-to-long v2, p0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/e;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Lcom/google/protobuf/Duration;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lv6/a;->a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Duration;->getNanos()I

    move-result p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    if-gez p0, :cond_1

    :cond_0
    const-string v3, "-"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v0, v0

    neg-int p0, p0

    .line 6
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const-string v0, "."

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p0}, Lv6/d;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "s"

    .line 9
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
