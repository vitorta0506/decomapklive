.class public abstract Lmi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi/b$a;
    }
.end annotation


# static fields
.field protected static final h:Lorg/apache/commons/codec/CodecPolicy;

.field static final i:[B


# instance fields
.field protected final a:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final b:B

.field private final c:I

.field private final d:I

.field protected final e:I

.field private final f:I

.field private final g:Lorg/apache/commons/codec/CodecPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/codec/CodecPolicy;->LENIENT:Lorg/apache/commons/codec/CodecPolicy;

    sput-object v0, Lmi/b;->h:Lorg/apache/commons/codec/CodecPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lmi/b;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method protected constructor <init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    .line 2
    iput-byte v0, p0, Lmi/b;->a:B

    .line 3
    iput p1, p0, Lmi/b;->c:I

    .line 4
    iput p2, p0, Lmi/b;->d:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lmi/b;->e:I

    .line 6
    iput p4, p0, Lmi/b;->f:I

    .line 7
    iput-byte p5, p0, Lmi/b;->b:B

    const-string p1, "codecPolicy"

    .line 8
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lmi/b;->g:Lorg/apache/commons/codec/CodecPolicy;

    return-void
.end method

.method private static b(II)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p0, v0

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static d(I)I
    .locals 6

    if-ltz p0, :cond_1

    const v0, 0x7ffffff7

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7ffffff7

    :goto_0
    return p0

    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static m(Lmi/b$a;I)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lmi/b$a;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v0, p1}, Lmi/b;->b(II)I

    move-result v1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    const v1, 0x7ffffff7

    .line 3
    invoke-static {v0, v1}, Lmi/b;->b(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-static {p1}, Lmi/b;->d(I)I

    move-result v0

    .line 5
    :cond_1
    new-array p1, v0, [B

    .line 6
    iget-object v0, p0, Lmi/b$a;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object p1, p0, Lmi/b$a;->c:[B

    return-object p1
.end method


# virtual methods
.method a(Lmi/b$a;)I
    .locals 1

    iget-object v0, p1, Lmi/b$a;->c:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lmi/b$a;->d:I

    iget p1, p1, Lmi/b$a;->e:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 2
    iget-byte v4, p0, Lmi/b;->b:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lmi/b;->k(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method abstract e([BIILmi/b$a;)V
.end method

.method public f([B)[B
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmi/b;->g([BII)[B

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public g([BII)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lmi/b$a;

    invoke-direct {v0}, Lmi/b$a;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lmi/b;->e([BIILmi/b$a;)V

    const/4 p3, -0x1

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lmi/b;->e([BIILmi/b$a;)V

    .line 5
    iget p1, v0, Lmi/b$a;->d:I

    iget p2, v0, Lmi/b$a;->e:I

    sub-int/2addr p1, p2

    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p2, p3, p1, v0}, Lmi/b;->l([BIILmi/b$a;)I

    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected h(ILmi/b$a;)[B
    .locals 3

    .line 1
    iget-object v0, p2, Lmi/b$a;->c:[B

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmi/b;->i()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p2, Lmi/b$a;->c:[B

    const/4 p1, 0x0

    .line 3
    iput p1, p2, Lmi/b$a;->d:I

    .line 4
    iput p1, p2, Lmi/b$a;->e:I

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p2, Lmi/b$a;->d:I

    add-int v2, v1, p1

    array-length v0, v0

    sub-int/2addr v2, v0

    if-lez v2, :cond_1

    add-int/2addr v1, p1

    .line 6
    invoke-static {p2, v1}, Lmi/b;->m(Lmi/b$a;I)[B

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p2, Lmi/b$a;->c:[B

    return-object p1
.end method

.method protected i()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public j([B)J
    .locals 6

    .line 1
    array-length p1, p1

    iget v0, p0, Lmi/b;->c:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lmi/b;->d:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 2
    iget p1, p0, Lmi/b;->e:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    .line 3
    div-long/2addr v2, v4

    iget p1, p0, Lmi/b;->f:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected abstract k(B)Z
.end method

.method l([BIILmi/b$a;)I
    .locals 2

    .line 1
    iget-object v0, p4, Lmi/b$a;->c:[B

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p4}, Lmi/b;->a(Lmi/b$a;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3
    iget-object v0, p4, Lmi/b$a;->c:[B

    iget v1, p4, Lmi/b$a;->e:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p4, Lmi/b$a;->e:I

    add-int/2addr p1, p3

    iput p1, p4, Lmi/b$a;->e:I

    .line 5
    iget p2, p4, Lmi/b$a;->d:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p4, Lmi/b$a;->c:[B

    :cond_0
    return p3

    .line 7
    :cond_1
    iget-boolean p1, p4, Lmi/b$a;->f:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
