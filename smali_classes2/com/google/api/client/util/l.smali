.class public Lcom/google/api/client/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/l$a;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private final c:D

.field private final d:D

.field private final e:I

.field f:J

.field private final g:I

.field private final h:Lcom/google/api/client/util/u;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/util/l$a;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/google/api/client/util/l$a;->a:I

    iput v0, p0, Lcom/google/api/client/util/l;->b:I

    .line 3
    iget-wide v1, p1, Lcom/google/api/client/util/l$a;->b:D

    iput-wide v1, p0, Lcom/google/api/client/util/l;->c:D

    .line 4
    iget-wide v3, p1, Lcom/google/api/client/util/l$a;->c:D

    iput-wide v3, p0, Lcom/google/api/client/util/l;->d:D

    .line 5
    iget v5, p1, Lcom/google/api/client/util/l$a;->d:I

    iput v5, p0, Lcom/google/api/client/util/l;->e:I

    .line 6
    iget v6, p1, Lcom/google/api/client/util/l$a;->e:I

    iput v6, p0, Lcom/google/api/client/util/l;->g:I

    .line 7
    iget-object p1, p1, Lcom/google/api/client/util/l$a;->f:Lcom/google/api/client/util/u;

    iput-object p1, p0, Lcom/google/api/client/util/l;->h:Lcom/google/api/client/util/u;

    const/4 p1, 0x1

    const/4 v7, 0x0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 8
    :goto_0
    invoke-static {v8}, Lcom/google/api/client/util/z;->a(Z)V

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v8, v1

    if-gtz v12, :cond_1

    cmpg-double v8, v1, v10

    if-gez v8, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-static {v1}, Lcom/google/api/client/util/z;->a(Z)V

    cmpl-double v1, v3, v10

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 10
    :goto_2
    invoke-static {v1}, Lcom/google/api/client/util/z;->a(Z)V

    if-lt v5, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 11
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/util/z;->a(Z)V

    if-lez v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 12
    :goto_4
    invoke-static {p1}, Lcom/google/api/client/util/z;->a(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/google/api/client/util/l;->e()V

    return-void
.end method

.method static c(DDI)I
    .locals 4

    int-to-double v0, p4

    mul-double p0, p0, v0

    sub-double v2, v0, p0

    add-double/2addr v0, p0

    sub-double/2addr v0, v2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    mul-double p2, p2, v0

    add-double/2addr v2, p2

    double-to-int p0, v2

    return p0
.end method

.method private d()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/api/client/util/l;->a:I

    int-to-double v1, v0

    iget v3, p0, Lcom/google/api/client/util/l;->e:I

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/google/api/client/util/l;->d:D

    div-double/2addr v4, v6

    cmpl-double v8, v1, v4

    if-ltz v8, :cond_0

    .line 2
    iput v3, p0, Lcom/google/api/client/util/l;->a:I

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    mul-double v0, v0, v6

    double-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/google/api/client/util/l;->a:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/util/l;->b()J

    move-result-wide v0

    iget v2, p0, Lcom/google/api/client/util/l;->g:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/util/l;->c:D

    .line 3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/google/api/client/util/l;->a:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/l;->c(DDI)I

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/google/api/client/util/l;->d()V

    int-to-long v0, v0

    return-wide v0
.end method

.method public final b()J
    .locals 4

    iget-object v0, p0, Lcom/google/api/client/util/l;->h:Lcom/google/api/client/util/u;

    invoke-interface {v0}, Lcom/google/api/client/util/u;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/api/client/util/l;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/client/util/l;->b:I

    iput v0, p0, Lcom/google/api/client/util/l;->a:I

    .line 2
    iget-object v0, p0, Lcom/google/api/client/util/l;->h:Lcom/google/api/client/util/u;

    invoke-interface {v0}, Lcom/google/api/client/util/u;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/util/l;->f:J

    return-void
.end method
