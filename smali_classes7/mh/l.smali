.class public final Lmh/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmh/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lmh/l;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmh/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lmh/l;-><init>(JJ)V

    sput-object v0, Lmh/l;->c:Lmh/l;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lmh/l;->a:J

    .line 3
    iput-wide p3, p0, Lmh/l;->b:J

    return-void
.end method


# virtual methods
.method public a(Lmh/l;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lmh/l;->a:J

    iget-wide v2, p1, Lmh/l;->a:J

    const/4 v4, -0x1

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    .line 2
    iget-wide v0, p0, Lmh/l;->b:J

    iget-wide v2, p1, Lmh/l;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method public b([CI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lmh/l;->a:J

    invoke-static {v0, v1, p1, p2}, Lmh/f;->d(J[CI)V

    .line 2
    iget-wide v0, p0, Lmh/l;->b:J

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, v1, p1, p2}, Lmh/f;->d(J[CI)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lmh/l;->b([CI)V

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmh/l;

    invoke-virtual {p0, p1}, Lmh/l;->a(Lmh/l;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lmh/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lmh/l;

    .line 3
    iget-wide v3, p0, Lmh/l;->a:J

    iget-wide v5, p1, Lmh/l;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lmh/l;->b:J

    iget-wide v5, p1, Lmh/l;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lmh/l;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-wide v3, p0, Lmh/l;->b:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TraceId{traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmh/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
