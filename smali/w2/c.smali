.class public final Lw2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/c$a;
    }
.end annotation


# static fields
.field public static final g:Lw2/c;

.field private static final h:Lw2/c$a;

.field public static final i:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lw2/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:I

.field private final f:[Lw2/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Lw2/c;

    const/4 v9, 0x0

    new-array v2, v9, [Lw2/c$a;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lw2/c;-><init>(Ljava/lang/Object;[Lw2/c$a;JJI)V

    sput-object v8, Lw2/c;->g:Lw2/c;

    .line 2
    new-instance v0, Lw2/c$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lw2/c$a;-><init>(J)V

    invoke-virtual {v0, v9}, Lw2/c$a;->j(I)Lw2/c$a;

    move-result-object v0

    sput-object v0, Lw2/c;->h:Lw2/c$a;

    .line 3
    sget-object v0, Lw2/a;->a:Lw2/a;

    sput-object v0, Lw2/c;->i:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lw2/c$a;JJI)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw2/c;->a:Ljava/lang/Object;

    .line 3
    iput-wide p3, p0, Lw2/c;->c:J

    .line 4
    iput-wide p5, p0, Lw2/c;->d:J

    .line 5
    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lw2/c;->b:I

    .line 6
    iput-object p2, p0, Lw2/c;->f:[Lw2/c$a;

    .line 7
    iput p7, p0, Lw2/c;->e:I

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lw2/c;
    .locals 0

    invoke-static {p0}, Lw2/c;->b(Landroid/os/Bundle;)Lw2/c;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lw2/c;
    .locals 11

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lw2/c;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lw2/c$a;

    move-object v5, v0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lw2/c$a;

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4
    sget-object v3, Lw2/c$a;->h:Lcom/google/android/exoplayer2/h$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v3

    check-cast v3, Lw2/c$a;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_1
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lw2/c;->g(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Lw2/c;->g(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Lw2/c;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 8
    new-instance p0, Lw2/c;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lw2/c;-><init>(Ljava/lang/Object;[Lw2/c$a;JJI)V

    return-object p0
.end method

.method private f(JJI)Z
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p5}, Lw2/c;->c(I)Lw2/c$a;

    move-result-object p5

    iget-wide v3, p5, Lw2/c$a;->a:J

    const/4 p5, 0x1

    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v0

    if-eqz v3, :cond_1

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    cmp-long p3, p1, v3

    if-gez p3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private static g(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(I)Lw2/c$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lw2/c;->e:I

    if-ge p1, v0, :cond_0

    .line 2
    sget-object p1, Lw2/c;->h:Lw2/c$a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lw2/c;->f:[Lw2/c$a;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    :goto_0
    return-object p1
.end method

.method public d(JJ)I
    .locals 6

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_4

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_0

    cmp-long v3, p1, p3

    if-ltz v3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget p3, p0, Lw2/c;->e:I

    .line 2
    :goto_0
    iget p4, p0, Lw2/c;->b:I

    if-ge p3, p4, :cond_3

    .line 3
    invoke-virtual {p0, p3}, Lw2/c;->c(I)Lw2/c$a;

    move-result-object p4

    iget-wide v3, p4, Lw2/c$a;->a:J

    cmp-long p4, v3, v1

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lw2/c;->c(I)Lw2/c$a;

    move-result-object p4

    iget-wide v3, p4, Lw2/c$a;->a:J

    cmp-long p4, v3, p1

    if-lez p4, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p3}, Lw2/c;->c(I)Lw2/c$a;

    move-result-object p4

    invoke-virtual {p4}, Lw2/c$a;->i()Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p0, Lw2/c;->b:I

    if-ge p3, p1, :cond_4

    move v0, p3

    :cond_4
    :goto_1
    return v0
.end method

.method public e(JJ)I
    .locals 7

    .line 1
    iget v0, p0, Lw2/c;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    .line 2
    invoke-direct/range {v1 .. v6}, Lw2/c;->f(JJI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lw2/c;->c(I)Lw2/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lw2/c$a;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lw2/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lw2/c;

    .line 3
    iget-object v2, p0, Lw2/c;->a:Ljava/lang/Object;

    iget-object v3, p1, Lw2/c;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lw2/c;->b:I

    iget v3, p1, Lw2/c;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lw2/c;->c:J

    iget-wide v4, p1, Lw2/c;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lw2/c;->d:J

    iget-wide v4, p1, Lw2/c;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lw2/c;->e:I

    iget v3, p1, Lw2/c;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lw2/c;->f:[Lw2/c$a;

    iget-object p1, p1, Lw2/c;->f:[Lw2/c$a;

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lw2/c;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lw2/c;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lw2/c;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lw2/c;->d:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lw2/c;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lw2/c;->f:[Lw2/c$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lw2/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-wide v1, p0, Lw2/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lw2/c;->f:[Lw2/c$a;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_8

    const-string v3, "adGroup(timeUs="

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v3, p0, Lw2/c;->f:[Lw2/c$a;

    aget-object v3, v3, v2

    iget-wide v5, v3, Lw2/c$a;->a:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v5, p0, Lw2/c;->f:[Lw2/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lw2/c$a;->d:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_6

    const-string v5, "ad(state="

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v5, p0, Lw2/c;->f:[Lw2/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lw2/c$a;->d:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    const/16 v5, 0x3f

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x21

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v5, 0x50

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x53

    .line 17
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v5, 0x52

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x5f

    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, ", durationUs="

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v5, p0, Lw2/c;->f:[Lw2/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lw2/c$a;->e:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    iget-object v5, p0, Lw2/c;->f:[Lw2/c$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lw2/c$a;->d:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_5

    .line 24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v3, p0, Lw2/c;->f:[Lw2/c$a;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_7

    .line 27
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
