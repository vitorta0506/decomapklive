.class public final Lcom/google/android/gms/internal/recaptcha/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/recaptcha/mf;

.field public static final b:Lcom/google/android/gms/internal/recaptcha/mf;

.field public static final c:Lcom/google/android/gms/internal/recaptcha/mf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/mf;->v()Lcom/google/android/gms/internal/recaptcha/lf;

    move-result-object v0

    const-wide v1, -0x4979cb9e00L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/lf;->p(J)Lcom/google/android/gms/internal/recaptcha/lf;

    const v1, -0x3b9ac9ff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/lf;->o(I)Lcom/google/android/gms/internal/recaptcha/lf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/mf;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/cj;->a:Lcom/google/android/gms/internal/recaptcha/mf;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/mf;->v()Lcom/google/android/gms/internal/recaptcha/lf;

    move-result-object v0

    const-wide v1, 0x4979cb9e00L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/lf;->p(J)Lcom/google/android/gms/internal/recaptcha/lf;

    const v1, 0x3b9ac9ff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/lf;->o(I)Lcom/google/android/gms/internal/recaptcha/lf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/mf;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/cj;->b:Lcom/google/android/gms/internal/recaptcha/mf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/mf;->v()Lcom/google/android/gms/internal/recaptcha/lf;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/lf;->p(J)Lcom/google/android/gms/internal/recaptcha/lf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/lf;->o(I)Lcom/google/android/gms/internal/recaptcha/lf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/mf;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/cj;->c:Lcom/google/android/gms/internal/recaptcha/mf;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/recaptcha/mf;)Lcom/google/android/gms/internal/recaptcha/mf;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/mf;->u()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/mf;->t()I

    move-result v2

    const-wide v3, -0x4979cb9e00L

    cmp-long v5, v0, v3

    if-ltz v5, :cond_2

    const-wide v3, 0x4979cb9e00L

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    int-to-long v3, v2

    const-wide/32 v5, -0x3b9ac9ff

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    const-wide/32 v5, 0x3b9aca00

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    if-gez v2, :cond_1

    :cond_0
    if-gtz v5, :cond_2

    if-gtz v2, :cond_2

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    .line 4
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(J)Lcom/google/android/gms/internal/recaptcha/mf;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/cj;->c(JI)Lcom/google/android/gms/internal/recaptcha/mf;

    move-result-object p0

    return-object p0
.end method

.method static c(JI)Lcom/google/android/gms/internal/recaptcha/mf;
    .locals 8

    int-to-long v0, p2

    const-wide/32 v2, -0x3b9aca00

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    :cond_0
    div-long v6, v0, v4

    .line 1
    invoke-static {p0, p1, v6, v7}, Lcom/google/android/gms/internal/recaptcha/va;->a(JJ)J

    move-result-wide p0

    rem-long/2addr v0, v4

    long-to-int p2, v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v6, p0, v0

    if-lez v6, :cond_2

    if-gez p2, :cond_2

    int-to-long v6, p2

    add-long/2addr v6, v4

    long-to-int p2, v6

    const-wide/16 v4, -0x1

    add-long/2addr p0, v4

    :cond_2
    cmp-long v4, p0, v0

    if-gez v4, :cond_3

    if-lez p2, :cond_3

    int-to-long v0, p2

    add-long/2addr v0, v2

    long-to-int p2, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/mf;->v()Lcom/google/android/gms/internal/recaptcha/lf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/lf;->p(J)Lcom/google/android/gms/internal/recaptcha/lf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/recaptcha/lf;->o(I)Lcom/google/android/gms/internal/recaptcha/lf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/recaptcha/mf;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/cj;->a(Lcom/google/android/gms/internal/recaptcha/mf;)Lcom/google/android/gms/internal/recaptcha/mf;

    return-object p0
.end method
