.class final Lkg/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[J

.field f:Lkg/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Lkg/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Z

.field i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkg/a0;->a:Lkg/w;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lkg/a0;->b:I

    .line 4
    iput v1, p0, Lkg/a0;->c:I

    .line 5
    iput v1, p0, Lkg/a0;->i:I

    .line 6
    iput v1, p0, Lkg/a0;->d:I

    .line 7
    iput-object v0, p0, Lkg/a0;->e:[J

    return-void
.end method

.method constructor <init>(Lkg/a0;Lkg/w;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/a0<",
            "TT;>;",
            "Lkg/w<",
            "TT;>;IIII)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lkg/a0;->a:Lkg/w;

    .line 10
    iput p3, p0, Lkg/a0;->b:I

    .line 11
    iput p4, p0, Lkg/a0;->c:I

    .line 12
    iput p5, p0, Lkg/a0;->d:I

    .line 13
    iput p6, p0, Lkg/a0;->i:I

    ushr-int/lit8 p2, p5, 0xa

    .line 14
    new-array p2, p2, [J

    iput-object p2, p0, Lkg/a0;->e:[J

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lkg/a0;->h:Z

    if-eqz p6, :cond_1

    .line 16
    div-int/2addr p5, p6

    iput p5, p0, Lkg/a0;->m:I

    iput p5, p0, Lkg/a0;->j:I

    const/4 p3, 0x0

    .line 17
    iput p3, p0, Lkg/a0;->l:I

    ushr-int/lit8 p4, p5, 0x6

    .line 18
    iput p4, p0, Lkg/a0;->k:I

    and-int/lit8 p5, p5, 0x3f

    if-eqz p5, :cond_0

    add-int/2addr p4, p2

    .line 19
    iput p4, p0, Lkg/a0;->k:I

    .line 20
    :cond_0
    :goto_0
    iget p2, p0, Lkg/a0;->k:I

    if-ge p3, p2, :cond_1

    .line 21
    iget-object p2, p0, Lkg/a0;->e:[J

    const-wide/16 p4, 0x0

    aput-wide p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0, p1}, Lkg/a0;->a(Lkg/a0;)V

    return-void
.end method

.method private a(Lkg/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkg/a0;->f:Lkg/a0;

    .line 2
    iget-object v0, p1, Lkg/a0;->g:Lkg/a0;

    iput-object v0, p0, Lkg/a0;->g:Lkg/a0;

    .line 3
    iput-object p0, v0, Lkg/a0;->f:Lkg/a0;

    .line 4
    iput-object p0, p1, Lkg/a0;->g:Lkg/a0;

    return-void
.end method

.method private d()I
    .locals 10

    .line 1
    iget-object v0, p0, Lkg/a0;->e:[J

    .line 2
    iget v1, p0, Lkg/a0;->k:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    aget-wide v3, v0, v2

    not-long v5, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 4
    invoke-direct {p0, v2, v3, v4}, Lkg/a0;->e(IJ)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private e(IJ)I
    .locals 7

    iget v0, p0, Lkg/a0;->j:I

    shl-int/lit8 p1, p1, 0x6

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x1

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    or-int/2addr p1, v1

    if-ge p1, v0, :cond_1

    return p1

    :cond_0
    const/4 v2, 0x1

    ushr-long/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private g()I
    .locals 2

    .line 1
    iget v0, p0, Lkg/a0;->l:I

    if-ltz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lkg/a0;->l:I

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lkg/a0;->d()I

    move-result v0

    return v0
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/a0;->f:Lkg/a0;

    iget-object v1, p0, Lkg/a0;->g:Lkg/a0;

    iput-object v1, v0, Lkg/a0;->g:Lkg/a0;

    .line 2
    iget-object v1, p0, Lkg/a0;->g:Lkg/a0;

    iput-object v0, v1, Lkg/a0;->f:Lkg/a0;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lkg/a0;->g:Lkg/a0;

    .line 4
    iput-object v0, p0, Lkg/a0;->f:Lkg/a0;

    return-void
.end method

.method private i(I)V
    .locals 0

    iput p1, p0, Lkg/a0;->l:I

    return-void
.end method

.method private j(I)J
    .locals 5

    .line 1
    iget v0, p0, Lkg/a0;->d:I

    iget v1, p0, Lkg/a0;->b:I

    shr-int/2addr v0, v1

    .line 2
    iget v1, p0, Lkg/a0;->c:I

    int-to-long v1, v1

    const/16 v3, 0x31

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const/16 v0, 0x22

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method b()J
    .locals 8

    .line 1
    iget v0, p0, Lkg/a0;->m:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lkg/a0;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lkg/a0;->g()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x6

    and-int/lit8 v2, v0, 0x3f

    .line 3
    iget-object v3, p0, Lkg/a0;->e:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 4
    iget v1, p0, Lkg/a0;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkg/a0;->m:I

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0}, Lkg/a0;->h()V

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lkg/a0;->j(I)J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/a0;->a:Lkg/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkg/w;->j()V

    :cond_0
    return-void
.end method

.method f(Lkg/a0;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/a0<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkg/a0;->i:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 v2, p2, 0x3f

    .line 2
    iget-object v3, p0, Lkg/a0;->e:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 3
    invoke-direct {p0, p2}, Lkg/a0;->i(I)V

    .line 4
    iget p2, p0, Lkg/a0;->m:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lkg/a0;->m:I

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lkg/a0;->a(Lkg/a0;)V

    .line 6
    iget p1, p0, Lkg/a0;->j:I

    if-le p1, v1, :cond_1

    return v1

    .line 7
    :cond_1
    iget p1, p0, Lkg/a0;->m:I

    iget p2, p0, Lkg/a0;->j:I

    if-eq p1, p2, :cond_2

    return v1

    .line 8
    :cond_2
    iget-object p1, p0, Lkg/a0;->f:Lkg/a0;

    iget-object p2, p0, Lkg/a0;->g:Lkg/a0;

    if-ne p1, p2, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lkg/a0;->h:Z

    .line 10
    invoke-direct {p0}, Lkg/a0;->h()V

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lkg/a0;->a:Lkg/w;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, v0, Lkg/w;->a:Lkg/v;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v4, p0, Lkg/a0;->h:Z

    if-nez v4, :cond_1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lkg/a0;->j:I

    .line 5
    iget v3, p0, Lkg/a0;->m:I

    .line 6
    iget v4, p0, Lkg/a0;->i:I

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    move v3, v1

    move v1, v4

    :goto_1
    if-nez v2, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkg/a0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": not in use)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lkg/a0;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offset: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkg/a0;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkg/a0;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", elemSize: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
