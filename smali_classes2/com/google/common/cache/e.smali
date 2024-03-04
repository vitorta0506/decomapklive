.class public final Lcom/google/common/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 2
    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/o;->d(Z)V

    cmp-long v17, v3, v15

    if-ltz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    .line 3
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/o;->d(Z)V

    cmp-long v17, v5, v15

    if-ltz v17, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 4
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/o;->d(Z)V

    cmp-long v17, v7, v15

    if-ltz v17, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    .line 5
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/o;->d(Z)V

    cmp-long v17, v9, v15

    if-ltz v17, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    .line 6
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/o;->d(Z)V

    cmp-long v17, v11, v15

    if-ltz v17, :cond_5

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 7
    :goto_5
    invoke-static {v13}, Lcom/google/common/base/o;->d(Z)V

    .line 8
    iput-wide v1, v0, Lcom/google/common/cache/e;->a:J

    .line 9
    iput-wide v3, v0, Lcom/google/common/cache/e;->b:J

    .line 10
    iput-wide v5, v0, Lcom/google/common/cache/e;->c:J

    .line 11
    iput-wide v7, v0, Lcom/google/common/cache/e;->d:J

    .line 12
    iput-wide v9, v0, Lcom/google/common/cache/e;->e:J

    .line 13
    iput-wide v11, v0, Lcom/google/common/cache/e;->f:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/common/cache/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/cache/e;

    .line 3
    iget-wide v2, p0, Lcom/google/common/cache/e;->a:J

    iget-wide v4, p1, Lcom/google/common/cache/e;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/e;->b:J

    iget-wide v4, p1, Lcom/google/common/cache/e;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/e;->c:J

    iget-wide v4, p1, Lcom/google/common/cache/e;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/e;->d:J

    iget-wide v4, p1, Lcom/google/common/cache/e;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/e;->e:J

    iget-wide v4, p1, Lcom/google/common/cache/e;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/e;->f:J

    iget-wide v4, p1, Lcom/google/common/cache/e;->f:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/common/cache/e;->a:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/e;->a:J

    const-string v3, "hitCount"

    .line 2
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/e;->b:J

    const-string v3, "missCount"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/e;->c:J

    const-string v3, "loadSuccessCount"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/e;->d:J

    const-string v3, "loadExceptionCount"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/e;->e:J

    const-string v3, "totalLoadTime"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/e;->f:J

    const-string v3, "evictionCount"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
