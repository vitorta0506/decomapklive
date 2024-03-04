.class public Lkg/o;
.super Lkg/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/o$e;,
        Lkg/o$d;,
        Lkg/o$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/e;",
        "Ljava/lang/Iterable<",
        "Lkg/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final u:Ljava/nio/ByteBuffer;

.field private static final v:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lkg/j;",
            ">;"
        }
    .end annotation
.end field

.field static final w:Lkg/o$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/o$c<",
            "[B>;"
        }
    .end annotation
.end field

.field static final x:Lkg/o$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/o$c<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final n:Lkg/k;

.field private final o:Z

.field private final p:I

.field private q:I

.field private r:[Lkg/o$d;

.field private s:Z

.field private t:Lkg/o$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lkg/o;

    .line 2
    sget-object v0, Lkg/s0;->d:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q1()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lkg/o;->u:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lkg/o;->v:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lkg/o$a;

    invoke-direct {v0}, Lkg/o$a;-><init>()V

    sput-object v0, Lkg/o;->w:Lkg/o$c;

    .line 5
    new-instance v0, Lkg/o$b;

    invoke-direct {v0}, Lkg/o$b;-><init>()V

    sput-object v0, Lkg/o;->x:Lkg/o$c;

    return-void
.end method

.method constructor <init>(Lkg/k;)V
    .locals 1

    const v0, 0x7fffffff

    .line 8
    invoke-direct {p0, v0}, Lkg/e;-><init>(I)V

    .line 9
    iput-object p1, p0, Lkg/o;->n:Lkg/k;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lkg/o;->o:Z

    .line 11
    iput p1, p0, Lkg/o;->p:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lkg/o;->r:[Lkg/o$d;

    return-void
.end method

.method public constructor <init>(Lkg/k;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lkg/o;-><init>(Lkg/k;ZII)V

    return-void
.end method

.method private constructor <init>(Lkg/k;ZII)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Lkg/e;-><init>(I)V

    const-string v0, "alloc"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/k;

    iput-object p1, p0, Lkg/o;->n:Lkg/k;

    const/4 p1, 0x1

    if-lt p3, p1, :cond_0

    .line 3
    iput-boolean p2, p0, Lkg/o;->o:Z

    .line 4
    iput p3, p0, Lkg/o;->p:I

    .line 5
    invoke-static {p4, p3}, Lkg/o;->i4(II)[Lkg/o$d;

    move-result-object p1

    iput-object p1, p0, Lkg/o;->r:[Lkg/o$d;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "maxNumComponents: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: >= 1)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic F3(Lkg/o;)[Lkg/o$d;
    .locals 0

    iget-object p0, p0, Lkg/o;->r:[Lkg/o$d;

    return-object p0
.end method

.method private G3(ILkg/o$d;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lkg/o;->G4(II)V

    .line 2
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aput-object p2, v0, p1

    return-void
.end method

.method private G4(II)V
    .locals 5

    .line 1
    iget v0, p0, Lkg/o;->q:I

    add-int v1, v0, p2

    .line 2
    iget-object v2, p0, Lkg/o;->r:[Lkg/o$d;

    array-length v3, v2

    if-le v1, v3, :cond_3

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    .line 3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lkg/o;->r:[Lkg/o$d;

    const-class p2, [Lkg/o$d;

    invoke-static {p1, v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkg/o$d;

    goto :goto_0

    .line 5
    :cond_0
    new-array v2, v2, [Lkg/o$d;

    if-lez p1, :cond_1

    .line 6
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-ge p1, v0, :cond_2

    .line 7
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {v3, p1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object p1, v2

    .line 8
    :goto_0
    iput-object p1, p0, Lkg/o;->r:[Lkg/o$d;

    goto :goto_1

    :cond_3
    if-ge p1, v0, :cond_4

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 9
    invoke-static {v2, p1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_4
    :goto_1
    iput v1, p0, Lkg/o;->q:I

    return-void
.end method

.method private I4(I)I
    .locals 6

    .line 1
    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    iget v3, v3, Lkg/o$d;->f:I

    if-lez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    .line 3
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v0, v0, v1

    iget v0, v0, Lkg/o$d;->f:I

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    if-gt v1, v0, :cond_7

    add-int v2, v1, v0

    ushr-int/2addr v2, v3

    .line 4
    iget-object v4, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v4, v4, v2

    .line 5
    iget v5, v4, Lkg/o$d;->f:I

    if-lt p1, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_2

    .line 6
    :cond_5
    iget v0, v4, Lkg/o$d;->e:I

    if-ge p1, v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_2

    :cond_6
    return v2

    .line 7
    :cond_7
    new-instance p1, Ljava/lang/Error;

    const-string v0, "should not reach here"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private J3(ZILkg/j;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lkg/o;->N3(I)V

    .line 2
    invoke-static {p3}, Lkg/o;->W3(Lkg/j;)Lkg/j;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lkg/o;->j4(Lkg/j;I)Lkg/o$d;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lkg/o$d;->f()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Lkg/o;->F()I

    move-result v4

    invoke-static {v4, v3}, Lkg/o;->O3(II)V

    .line 5
    invoke-direct {p0, p2, v2}, Lkg/o;->G3(ILkg/o$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v3, :cond_0

    .line 6
    :try_start_1
    iget v0, p0, Lkg/o;->q:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 7
    invoke-direct {p0, p2}, Lkg/o;->L4(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    .line 8
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    add-int/lit8 v4, p2, -0x1

    aget-object v0, v0, v4

    iget v0, v0, Lkg/o$d;->f:I

    invoke-virtual {v2, v0}, Lkg/o$d;->g(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 9
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v3

    iput p1, p0, Lkg/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return p2

    :catchall_1
    move-exception p1

    :goto_1
    if-nez v0, :cond_3

    .line 10
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 11
    :cond_3
    throw p1
.end method

.method private L3(I)Lkg/j;
    .locals 1

    iget-boolean v0, p0, Lkg/o;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkg/o;->P()Lkg/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkg/o;->P()Lkg/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lkg/k;->b(I)Lkg/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private L4(I)V
    .locals 3

    .line 1
    iget v0, p0, Lkg/o;->q:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 2
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lkg/o$d;->f:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 3
    iget-object v2, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v2, v2, p1

    .line 4
    invoke-virtual {v2, v1}, Lkg/o$d;->g(I)V

    .line 5
    iget v1, v2, Lkg/o$d;->f:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private N3(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Lkg/o;->q:I

    if-gt p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget v2, p0, Lkg/o;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "cIndex: %d (expected: >= 0 && <= numComponents(%d))"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static O3(II)V
    .locals 3

    add-int v0, p0, p1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t increase by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as capacity("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") would overflow "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7fffffff

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Q3()V
    .locals 2

    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkg/o;->r4(II)V

    return-void
.end method

.method private R3(II)V
    .locals 5

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    add-int v0, p1, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v2, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v2, v2, p1

    iget v2, v2, Lkg/o$d;->e:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lkg/o$d;->f:I

    sub-int/2addr v3, v2

    .line 3
    invoke-direct {p0, v3}, Lkg/o;->L3(I)Lkg/j;

    move-result-object v2

    move v3, p1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 4
    iget-object v4, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lkg/o$d;->j(Lkg/j;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lkg/o;->t:Lkg/o$d;

    add-int/lit8 v3, p1, 0x1

    .line 6
    invoke-direct {p0, v3, v0}, Lkg/o;->r4(II)V

    .line 7
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    invoke-direct {p0, v2, v1}, Lkg/o;->j4(Lkg/j;I)Lkg/o$d;

    move-result-object v1

    aput-object v1, v0, p1

    if-nez p1, :cond_3

    .line 8
    iget v0, p0, Lkg/o;->q:I

    if-eq p2, v0, :cond_4

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Lkg/o;->L4(I)V

    :cond_4
    return-void
.end method

.method private S3()V
    .locals 2

    .line 1
    iget v0, p0, Lkg/o;->q:I

    .line 2
    iget v1, p0, Lkg/o;->p:I

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1, v0}, Lkg/o;->R3(II)V

    :cond_0
    return-void
.end method

.method private T3(IIILkg/j;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 1
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v1, v1, p3

    .line 2
    iget v2, v1, Lkg/o$d;->f:I

    sub-int/2addr v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3
    iget-object v3, v1, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, p4, v0, v2}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    add-int/2addr p1, v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p4}, Lkg/j;->F()I

    move-result p1

    invoke-virtual {p4, p1}, Lkg/j;->L2(I)Lkg/j;

    return-void
.end method

.method private static W3(Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    sget-boolean v0, Lkg/a;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkg/j;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private Y3(I)Lkg/o$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o;->t:Lkg/o$d;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Lkg/o$d;->e:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lkg/o$d;->f:I

    if-ge p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lkg/a;->p3()V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 5
    invoke-direct {p0, p1}, Lkg/o;->a4(I)Lkg/o$d;

    move-result-object p1

    return-object p1
.end method

.method private Z3(I)Lkg/o$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o;->t:Lkg/o$d;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Lkg/o$d;->e:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lkg/o$d;->f:I

    if-ge p1, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->a4(I)Lkg/o$d;

    move-result-object p1

    return-object p1
.end method

.method private a4(I)Lkg/o$d;
    .locals 5

    .line 1
    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 2
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 3
    iget v4, v3, Lkg/o$d;->f:I

    if-lt p1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v3, Lkg/o$d;->e:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    .line 5
    :cond_1
    iput-object v3, p0, Lkg/o;->t:Lkg/o$d;

    return-object v3

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No component found for offset. Composite buffer layout might be outdated, e.g. from a discardReadBytes call."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/Error;

    const-string v0, "should not reach here"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static i4(II)[Lkg/o$d;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [Lkg/o$d;

    return-object p0
.end method

.method private j4(Lkg/j;I)Lkg/o$d;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v6

    move-object v0, p1

    .line 3
    :goto_0
    instance-of v1, v0, Lkg/f1;

    if-nez v1, :cond_6

    instance-of v1, v0, Lkg/r0;

    if-eqz v1, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    instance-of v1, v0, Lkg/f;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, v0

    check-cast v1, Lkg/f;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lkg/f;->J3(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 6
    invoke-virtual {v0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    :goto_1
    move v4, v1

    goto :goto_2

    .line 7
    :cond_1
    instance-of v1, v0, Lkg/i0;

    if-eqz v1, :cond_2

    .line 8
    move-object v1, v0

    check-cast v1, Lkg/i0;

    iget v1, v1, Lkg/i0;->q:I

    add-int/2addr v1, v2

    .line 9
    invoke-virtual {v0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    instance-of v1, v0, Lkg/q;

    if-nez v1, :cond_3

    instance-of v1, v0, Lkg/g0;

    if-eqz v1, :cond_4

    .line 11
    :cond_3
    invoke-virtual {v0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    :cond_4
    move v4, v2

    .line 12
    :goto_2
    invoke-virtual {p1}, Lkg/j;->F()I

    move-result v1

    if-ne v1, v6, :cond_5

    move-object v7, p1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    move-object v7, v1

    .line 13
    :goto_3
    new-instance v8, Lkg/o$d;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    .line 14
    invoke-virtual {v0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v3

    move-object v0, v8

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lkg/o$d;-><init>(Lkg/j;ILkg/j;IIILkg/j;)V

    return-object v8

    .line 15
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    goto :goto_0
.end method

.method private q4(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lkg/o;->r4(II)V

    return-void
.end method

.method private r4(II)V
    .locals 3

    if-lt p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lkg/o;->q:I

    if-ge p2, v0, :cond_1

    .line 2
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    sub-int v2, v0, p2

    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    sub-int p2, v0, p2

    add-int/2addr p2, p1

    move p1, p2

    :goto_0
    if-ge p1, v0, :cond_2

    .line 3
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iput p2, p0, Lkg/o;->q:I

    return-void
.end method


# virtual methods
.method public bridge synthetic A0(ILkg/j;II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/o;->d4(ILkg/j;II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic A1(Ljava/io/OutputStream;I)Lkg/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkg/o;->l4(Ljava/io/OutputStream;I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic A2([B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->R4([B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public A4(II)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/a;->d2(II)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->m4(Ljava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic B2([BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/o;->S4([BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public B4(II)Lkg/o;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/o;->V2(II)V

    return-object p0
.end method

.method public bridge synthetic C0(I[B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->e4(I[B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C1([B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->n4([B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->T4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected C3()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lkg/o;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkg/o;->s:Z

    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lkg/o;->q:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lkg/o$d;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public C4(IJ)Lkg/o;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkg/o;->X2(IJ)V

    return-object p0
.end method

.method public bridge synthetic D1([BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/o;->o4([BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public D4(II)Lkg/o;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/o;->Y2(II)V

    return-object p0
.end method

.method public bridge synthetic E0(I[BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/o;->f4(I[BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->U4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public E4(II)Lkg/o;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/o;->Z2(II)V

    return-object p0
.end method

.method public F()I
    .locals 2

    .line 1
    iget v0, p0, Lkg/o;->q:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    iget v0, v0, Lkg/o$d;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F4(II)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/a;->k2(II)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic G2(J)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->V4(J)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic H2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->W4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public H3(ZILkg/j;)Lkg/o;
    .locals 1

    const-string v0, "buffer"

    .line 1
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lkg/o;->J3(ZILkg/j;)I

    .line 3
    invoke-direct {p0}, Lkg/o;->S3()V

    return-object p0
.end method

.method public H4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->l2(I)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic I(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->M3(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->X4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public I3(ZLkg/j;)Lkg/o;
    .locals 1

    iget v0, p0, Lkg/o;->q:I

    invoke-virtual {p0, p1, v0, p2}, Lkg/o;->H3(ZILkg/j;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->Y4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public J4()Lkg/o;
    .locals 0

    return-object p0
.end method

.method public K3(ZLkg/j;)Lkg/o;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "buffer"

    .line 1
    invoke-static {v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p2 .. p2}, Lkg/j;->Q1()I

    move-result v3

    .line 3
    invoke-virtual/range {p2 .. p2}, Lkg/j;->K2()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4
    invoke-interface/range {p2 .. p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object v1

    .line 5
    :cond_0
    instance-of v5, v0, Lkg/o;

    if-nez v5, :cond_1

    .line 6
    iget v3, v1, Lkg/o;->q:I

    invoke-direct {v1, v2, v3, v0}, Lkg/o;->J3(ZILkg/j;)I

    .line 7
    invoke-direct/range {p0 .. p0}, Lkg/o;->S3()V

    return-object v1

    .line 8
    :cond_1
    instance-of v5, v0, Lkg/g1;

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual/range {p2 .. p2}, Lkg/j;->s2()Lkg/j;

    move-result-object v5

    check-cast v5, Lkg/o;

    goto :goto_0

    .line 10
    :cond_2
    move-object v5, v0

    check-cast v5, Lkg/o;

    :goto_0
    sub-int v6, v4, v3

    .line 11
    invoke-virtual {v5, v3, v6}, Lkg/a;->f3(II)V

    .line 12
    iget-object v7, v5, Lkg/o;->r:[Lkg/o$d;

    .line 13
    iget v8, v1, Lkg/o;->q:I

    .line 14
    iget v9, v1, Lkg/a;->b:I

    .line 15
    :try_start_0
    invoke-direct {v5, v3}, Lkg/o;->I4(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lkg/o;->F()I

    move-result v10

    move/from16 v18, v10

    .line 16
    :goto_1
    aget-object v10, v7, v5

    .line 17
    iget v11, v10, Lkg/o$d;->e:I

    .line 18
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 19
    iget v12, v10, Lkg/o$d;->f:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int v19, v15, v11

    if-lez v19, :cond_3

    .line 20
    iget v14, v1, Lkg/o;->q:I

    new-instance v13, Lkg/o$d;

    iget-object v12, v10, Lkg/o$d;->a:Lkg/j;

    .line 21
    invoke-virtual {v12}, Lkg/j;->T1()Lkg/j;

    move-result-object v12

    invoke-virtual {v10, v11}, Lkg/o$d;->i(I)I

    move-result v16

    iget-object v0, v10, Lkg/o$d;->b:Lkg/j;

    .line 22
    invoke-virtual {v10, v11}, Lkg/o$d;->d(I)I

    move-result v17

    const/16 v20, 0x0

    move-object v10, v13

    move-object v11, v12

    move/from16 v12, v16

    move/from16 v21, v3

    move-object v3, v13

    move-object v13, v0

    move v0, v14

    move/from16 v14, v17

    move-object/from16 v22, v7

    move v7, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v10 .. v17}, Lkg/o$d;-><init>(Lkg/j;ILkg/j;IIILkg/j;)V

    .line 23
    invoke-direct {v1, v0, v3}, Lkg/o;->G3(ILkg/o$d;)V

    goto :goto_2

    :cond_3
    move/from16 v21, v3

    move-object/from16 v22, v7

    move v7, v15

    :goto_2
    if-ne v4, v7, :cond_5

    if-eqz v2, :cond_4

    add-int/2addr v6, v9

    .line 24
    iput v6, v1, Lkg/a;->b:I

    .line 25
    :cond_4
    invoke-direct/range {p0 .. p0}, Lkg/o;->S3()V

    .line 26
    invoke-interface/range {p2 .. p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_5
    add-int v18, v18, v19

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    move/from16 v3, v21

    move-object/from16 v7, v22

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 27
    iput v9, v1, Lkg/a;->b:I

    .line 28
    :cond_6
    iget v2, v1, Lkg/o;->q:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-lt v2, v8, :cond_7

    .line 29
    iget-object v3, v1, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lkg/o$d;->c()V

    .line 30
    invoke-direct {v1, v2}, Lkg/o;->q4(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 31
    :cond_7
    throw v0
.end method

.method public K4(Ljava/lang/Object;)Lkg/o;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic L()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->P3()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->Z4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected M2(I)B
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->u0(I)B

    move-result p1

    return p1
.end method

.method public M3(I)Lkg/o;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->i3(I)V

    .line 2
    iget v0, p0, Lkg/o;->q:I

    invoke-virtual {p0}, Lkg/o;->F()I

    move-result v1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    sub-int/2addr p1, v1

    .line 3
    invoke-direct {p0, p1}, Lkg/o;->L3(I)Lkg/j;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lkg/j;->d2(II)Lkg/j;

    move-result-object p1

    .line 4
    invoke-direct {p0, v2, v0, p1}, Lkg/o;->J3(ZILkg/j;)I

    .line 5
    iget p1, p0, Lkg/o;->q:I

    iget v0, p0, Lkg/o;->p:I

    if-lt p1, v0, :cond_4

    .line 6
    invoke-direct {p0}, Lkg/o;->S3()V

    goto :goto_2

    :cond_0
    if-ge p1, v1, :cond_4

    const/4 v3, 0x0

    .line 7
    iput-object v3, p0, Lkg/o;->t:Lkg/o$d;

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v1, p1

    :goto_0
    if-ltz v3, :cond_2

    .line 8
    iget-object v4, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v4, v4, v3

    .line 9
    invoke-virtual {v4}, Lkg/o$d;->f()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 10
    iget v5, v4, Lkg/o$d;->f:I

    sub-int/2addr v5, v1

    iput v5, v4, Lkg/o$d;->f:I

    .line 11
    invoke-static {v4}, Lkg/o$d;->a(Lkg/o$d;)Lkg/j;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v4}, Lkg/o$d;->f()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v1

    invoke-static {v4, v1}, Lkg/o$d;->b(Lkg/o$d;Lkg/j;)Lkg/j;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v4}, Lkg/o$d;->c()V

    sub-int/2addr v1, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 14
    invoke-direct {p0, v3, v0}, Lkg/o;->r4(II)V

    .line 15
    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 16
    invoke-virtual {p0, p1, p1}, Lkg/a;->y3(II)V

    goto :goto_2

    .line 17
    :cond_3
    iget v0, p0, Lkg/a;->b:I

    if-le v0, p1, :cond_4

    .line 18
    iput p1, p0, Lkg/a;->b:I

    :cond_4
    :goto_2
    return-object p0
.end method

.method public M4(I)Lkg/o;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v0, p0, Lkg/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v0, p1}, Lkg/o;->U2(II)V

    return-object p0
.end method

.method protected N2(I)I
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->getInt(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->R2(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkg/o;->R2(I)S

    move-result p1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->R2(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkg/o;->R2(I)S

    move-result p1

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public N4(Ljava/nio/ByteBuffer;)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->w2(Ljava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method protected O2(I)I
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->F0(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->S2(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkg/o;->S2(I)S

    move-result p1

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->S2(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkg/o;->S2(I)S

    move-result p1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method public O4(Lkg/j;)Lkg/o;
    .locals 1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-super {p0, p1, v0}, Lkg/a;->y2(Lkg/j;I)Lkg/j;

    return-object p0
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/o;->n:Lkg/k;

    return-object v0
.end method

.method protected P2(I)J
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->N2(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lkg/o;->N2(I)I

    move-result p1

    int-to-long v5, p1

    and-long v2, v5, v3

    or-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->N2(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lkg/o;->N2(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public P3()Lkg/o;
    .locals 0

    invoke-super {p0}, Lkg/a;->L()Lkg/j;

    return-object p0
.end method

.method public P4(Lkg/j;I)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/a;->y2(Lkg/j;I)Lkg/j;

    return-object p0
.end method

.method public Q(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-direct {p0, p2}, Lkg/o;->L3(I)Lkg/j;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lkg/o;->T3(IIILkg/j;)V

    :cond_0
    return-object v0
.end method

.method protected Q2(I)J
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->G0(I)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->O2(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lkg/o;->O2(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->O2(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lkg/o;->O2(I)I

    move-result p1

    int-to-long v5, p1

    and-long v2, v5, v3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public Q4(Lkg/j;II)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lkg/a;->z2(Lkg/j;II)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic R1(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->p4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected R2(I)S
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->P0(I)S

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public R4([B)Lkg/o;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Lkg/a;->B2([BII)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic S1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->s4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method protected S2(I)S
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->Q0(I)S

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public S4([BII)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lkg/a;->B2([BII)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic T1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->t4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method protected T2(I)I
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->X0(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lkg/o;->R2(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lkg/o;->R2(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkg/o;->M2(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public T4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->I2(I)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic U1(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->u4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected U2(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->X1(II)Lkg/j;

    return-void
.end method

.method public U3()Lkg/o;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lkg/o;->F()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 5
    iget v1, p0, Lkg/o;->q:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 6
    iget-object v5, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lkg/o$d;->c()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v2, p0, Lkg/o;->t:Lkg/o$d;

    .line 8
    invoke-direct {p0}, Lkg/o;->Q3()V

    .line 9
    invoke-virtual {p0, v3, v3}, Lkg/o;->A4(II)Lkg/o;

    .line 10
    invoke-virtual {p0, v0}, Lkg/a;->b3(I)V

    return-object p0

    .line 11
    :cond_2
    iget v4, p0, Lkg/o;->q:I

    move-object v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 12
    iget-object v6, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v6, v6, v5

    .line 13
    iget v7, v6, Lkg/o$d;->f:I

    if-le v7, v0, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v6}, Lkg/o$d;->c()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v5, :cond_5

    return-object p0

    .line 15
    :cond_5
    iget-object v4, p0, Lkg/o;->t:Lkg/o$d;

    if-eqz v4, :cond_6

    .line 16
    iget v4, v4, Lkg/o$d;->f:I

    if-gt v4, v0, :cond_6

    .line 17
    iput-object v2, p0, Lkg/o;->t:Lkg/o$d;

    .line 18
    :cond_6
    invoke-direct {p0, v3, v5}, Lkg/o;->r4(II)V

    .line 19
    iget v2, v6, Lkg/o$d;->e:I

    .line 20
    invoke-direct {p0, v3}, Lkg/o;->L4(I)V

    sub-int/2addr v0, v2

    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {p0, v0, v1}, Lkg/o;->A4(II)Lkg/o;

    .line 22
    invoke-virtual {p0, v2}, Lkg/a;->b3(I)V

    return-object p0
.end method

.method public U4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->E2(I)Lkg/j;

    return-object p0
.end method

.method protected V2(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->e2(II)Lkg/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lkg/o;->Z2(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-short p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lkg/o;->Z2(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/o;->Z2(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lkg/o;->Z2(II)V

    :goto_0
    return-void
.end method

.method public V3()Lkg/o;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->U3()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public V4(J)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/a;->G2(J)Lkg/j;

    return-object p0
.end method

.method protected W2(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->f2(II)Lkg/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    int-to-short v0, p2

    .line 5
    invoke-virtual {p0, p1, v0}, Lkg/o;->a3(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lkg/o;->a3(II)V

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/o;->a3(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-short p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lkg/o;->a3(II)V

    :goto_0
    return-void
.end method

.method public W4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->H2(I)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic X1(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->v4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected X2(IJ)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2, p3}, Lkg/j;->g2(IJ)Lkg/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    ushr-long v0, p2, v2

    long-to-int v1, v0

    .line 5
    invoke-virtual {p0, p1, v1}, Lkg/o;->V2(II)V

    add-int/lit8 p1, p1, 0x4

    long-to-int p3, p2

    .line 6
    invoke-virtual {p0, p1, p3}, Lkg/o;->V2(II)V

    goto :goto_0

    :cond_1
    long-to-int v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/o;->V2(II)V

    add-int/lit8 p1, p1, 0x4

    ushr-long/2addr p2, v2

    long-to-int p3, p2

    .line 8
    invoke-virtual {p0, p1, p3}, Lkg/o;->V2(II)V

    :goto_0
    return-void
.end method

.method public X3(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->n0(I)Lkg/j;

    return-object p0
.end method

.method public X4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->I2(I)Lkg/j;

    return-object p0
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lkg/a;->f3(II)V

    if-nez p3, :cond_0

    .line 2
    sget-object p1, Lkg/o;->u:Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v0

    const/4 v1, 0x0

    .line 4
    :cond_1
    iget-object v2, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v2, v2, v0

    .line 5
    iget v3, v2, Lkg/o$d;->f:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, v2, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v2, p1}, Lkg/o$d;->d(I)I

    move-result v2

    invoke-virtual {v4, v2, p2, v3}, Lkg/j;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-gez v2, :cond_4

    if-nez v1, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-gtz p3, :cond_1

    :cond_6
    :goto_2
    return v1
.end method

.method protected Y2(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->h2(II)Lkg/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lkg/o;->Z2(II)V

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lkg/o;->U2(II)V

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/o;->Z2(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lkg/o;->U2(II)V

    :goto_0
    return-void
.end method

.method public Y4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->J2(I)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->w4(ILjava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected Z2(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->i2(II)Lkg/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lkg/o;->U2(II)V

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lkg/o;->U2(II)V

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/o;->U2(II)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lkg/o;->U2(II)V

    :goto_0
    return-void
.end method

.method public Z4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->L2(I)Lkg/j;

    return-object p0
.end method

.method public a1()Z
    .locals 3

    .line 1
    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v0, v0, v2

    iget-object v0, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->a1()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public bridge synthetic a2(ILkg/j;II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/o;->x4(ILkg/j;II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected a3(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Z3(I)Lkg/o$d;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    .line 2
    iget v2, v0, Lkg/o$d;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->j2(II)Lkg/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    int-to-byte v0, p2

    .line 5
    invoke-virtual {p0, p1, v0}, Lkg/o;->U2(II)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lkg/o;->U2(II)V

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/o;->U2(II)V

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lkg/o;->U2(II)V

    :goto_0
    return-void
.end method

.method public b1()Z
    .locals 3

    .line 1
    iget v0, p0, Lkg/o;->q:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v0, v0, v2

    iget-object v0, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v0

    return v0

    .line 3
    :cond_1
    sget-object v0, Lkg/s0;->d:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b2(I[BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/o;->z4(I[BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public b4(ILjava/io/OutputStream;I)Lkg/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lkg/a;->f3(II)V

    if-nez p3, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v0

    :goto_0
    if-lez p3, :cond_1

    .line 3
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v1, v1, v0

    .line 4
    iget v2, v1, Lkg/o$d;->f:I

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v1, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, v2}, Lkg/j;->w0(ILjava/io/OutputStream;I)Lkg/j;

    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic c0()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->V3()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public c4(ILjava/nio/ByteBuffer;)Lkg/o;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lkg/a;->f3(II)V

    if-nez v1, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v2

    :goto_0
    if-lez v1, :cond_1

    .line 5
    :try_start_0
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    .line 6
    iget v4, v3, Lkg/o$d;->f:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v5, v3, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v3, p1}, Lkg/o$d;->d(I)I

    move-result v3

    invoke-virtual {v5, v3, p2}, Lkg/j;->y0(ILjava/nio/ByteBuffer;)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v4

    sub-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    throw p1

    .line 11
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public bridge synthetic d2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->A4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public d4(ILkg/j;II)Lkg/o;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    .line 3
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v1, v1, v0

    .line 4
    iget v2, v1, Lkg/o$d;->f:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v1, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lkg/o;->q:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lkg/o$d;->e(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4
    :cond_1
    sget-object p1, Lkg/o;->u:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public bridge synthetic e2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->B4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public e4(I[B)Lkg/o;
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkg/o;->f4(I[BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method f1()Z
    .locals 1

    iget-boolean v0, p0, Lkg/o;->s:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f4(I[BII)Lkg/o;
    .locals 4

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    .line 3
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v1, v1, v0

    .line 4
    iget v2, v1, Lkg/o$d;->f:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v1, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lkg/j;->E0(I[BII)Lkg/j;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic g2(IJ)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/o;->C4(IJ)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public g4(I)Lkg/j;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->N3(I)V

    .line 2
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lkg/o$d;->h()Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public h1()Z
    .locals 4

    .line 1
    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    iget-object v3, v3, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v3}, Lkg/j;->h1()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic h2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->D4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public h4()Lkg/o;
    .locals 0

    invoke-super {p0}, Lkg/a;->l1()Lkg/j;

    return-object p0
.end method

.method public bridge synthetic i2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->E4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkg/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget v0, p0, Lkg/o;->q:I

    if-nez v0, :cond_0

    sget-object v0, Lkg/o;->v:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    new-instance v0, Lkg/o$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkg/o$e;-><init>(Lkg/o;Lkg/o$a;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic k2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->F4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public k4()I
    .locals 1

    iget v0, p0, Lkg/o;->q:I

    return v0
.end method

.method public bridge synthetic l1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->h4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->H4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public l4(Ljava/io/OutputStream;I)Lkg/o;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lkg/a;->A1(Ljava/io/OutputStream;I)Lkg/j;

    return-object p0
.end method

.method public m4(Ljava/nio/ByteBuffer;)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->B1(Ljava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic n0(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->X3(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public n4([B)Lkg/o;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Lkg/a;->D1([BII)Lkg/j;

    return-object p0
.end method

.method public o4([BII)Lkg/o;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lkg/a;->D1([BII)Lkg/j;

    return-object p0
.end method

.method public p1()J
    .locals 5

    .line 1
    iget v0, p0, Lkg/o;->q:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->p1()J

    move-result-wide v1

    iget v0, v0, Lkg/o$d;->d:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5
    :cond_1
    sget-object v0, Lkg/s0;->d:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->p1()J

    move-result-wide v0

    return-wide v0
.end method

.method public p4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/a;->R1(I)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic q2()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->J4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    iget v0, p0, Lkg/o;->q:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v0, v0, v1

    .line 4
    iget-object v3, v0, Lkg/o$d;->b:Lkg/j;

    .line 5
    invoke-virtual {v3}, Lkg/j;->s1()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v3, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lkg/o;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 8
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 9
    aget-object p1, p1, v1

    return-object p1

    .line 10
    :cond_2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 11
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 12
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p2

    .line 14
    :cond_4
    sget-object p1, Lkg/o;->u:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public bridge synthetic r2(Ljava/lang/Object;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->K4(Ljava/lang/Object;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected r3(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    if-gt p2, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v1

    sub-int/2addr p2, p1

    :goto_0
    if-lez p2, :cond_4

    .line 2
    iget-object v2, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v2, v2, v1

    .line 3
    iget v3, v2, Lkg/o$d;->e:I

    iget v4, v2, Lkg/o$d;->f:I

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v3, v2, Lkg/o$d;->b:Lkg/j;

    .line 5
    invoke-virtual {v2, p1}, Lkg/o$d;->d(I)I

    move-result v4

    .line 6
    iget v5, v2, Lkg/o$d;->f:I

    sub-int/2addr v5, p1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 7
    instance-of v6, v3, Lkg/a;

    if-eqz v6, :cond_2

    check-cast v3, Lkg/a;

    add-int v6, v4, v5

    .line 8
    invoke-virtual {v3, v4, v6, p3}, Lkg/a;->r3(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result v3

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v3, v4, v5, p3}, Lkg/j;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result v3

    :goto_1
    if-eq v3, v0, :cond_3

    .line 10
    iget p1, v2, Lkg/o$d;->d:I

    sub-int/2addr v3, p1

    return v3

    :cond_3
    add-int/2addr p1, v5

    sub-int/2addr p2, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/o;->t4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public s1()I
    .locals 4

    .line 1
    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    iget-object v3, v3, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v3}, Lkg/j;->s1()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v0, v0, v2

    iget-object v0, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->s1()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public s2()Lkg/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s4()Lkg/o;
    .locals 0

    invoke-super {p0}, Lkg/a;->S1()Lkg/j;

    return-object p0
.end method

.method public t1()[Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/a;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/o;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public t4()Lkg/o;
    .locals 0

    invoke-super {p0}, Lkg/e;->T1()Lkg/j;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lkg/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", components="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkg/o;->q:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->K4(Ljava/lang/Object;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Y3(I)Lkg/o$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lkg/j;->u0(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    .line 2
    sget-object p2, Lkg/o;->u:Ljava/nio/ByteBuffer;

    aput-object p2, p1, v0

    return-object p1

    .line 3
    :cond_0
    iget v2, p0, Lkg/o;->q:I

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/grpc/netty/shaded/io/netty/util/internal/RecyclableArrayList;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v3

    :goto_0
    if-lez p2, :cond_3

    .line 5
    iget-object v4, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v4, v4, v3

    .line 6
    iget-object v5, v4, Lkg/o$d;->b:Lkg/j;

    .line 7
    iget v6, v4, Lkg/o$d;->f:I

    sub-int/2addr v6, p1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 8
    invoke-virtual {v5}, Lkg/j;->s1()I

    move-result v7

    if-eqz v7, :cond_2

    if-eq v7, v1, :cond_1

    .line 9
    invoke-virtual {v4, p1}, Lkg/o$d;->d(I)I

    move-result v4

    invoke-virtual {v5, v4, v6}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4, p1}, Lkg/o$d;->d(I)I

    move-result v4

    invoke-virtual {v5, v4, v6}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr p1, v6

    sub-int/2addr p2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_3
    new-array p1, v0, [Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/RecyclableArrayList;->recycle()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 14
    throw p1
.end method

.method public bridge synthetic u2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->M4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public u4(I)Lkg/o;
    .locals 0

    invoke-super {p0, p1}, Lkg/e;->U1(I)Lkg/j;

    return-object p0
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/o;->s1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lkg/o;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p3}, Lkg/o;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p2, p1

    return p2
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public v4(II)Lkg/o;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lkg/o;->Y3(I)Lkg/o$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/o$d;->d(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lkg/j;->X1(II)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lkg/o;->b4(ILjava/io/OutputStream;I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w2(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->N4(Ljava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w3(I[B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->y4(I[B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public w4(ILjava/nio/ByteBuffer;)Lkg/o;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lkg/a;->f3(II)V

    if-nez v1, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v2

    :goto_0
    if-lez v1, :cond_1

    .line 5
    :try_start_0
    iget-object v3, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v3, v3, v2

    .line 6
    iget v4, v3, Lkg/o$d;->f:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v5, v3, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v3, p1}, Lkg/o$d;->d(I)I

    move-result v3

    invoke-virtual {v5, v3, p2}, Lkg/j;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v4

    sub-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    throw p1

    .line 11
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public bridge synthetic x2(Lkg/j;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o;->O4(Lkg/j;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public x4(ILkg/j;II)Lkg/o;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    .line 3
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v1, v1, v0

    .line 4
    iget v2, v1, Lkg/o$d;->f:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v1, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public y()[B
    .locals 2

    .line 1
    iget v0, p0, Lkg/o;->q:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->y()[B

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->b:[B

    return-object v0
.end method

.method public bridge synthetic y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->c4(ILjava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y2(Lkg/j;I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/o;->P4(Lkg/j;I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public y4(I[B)Lkg/o;
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkg/o;->z4(I[BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public z()I
    .locals 3

    .line 1
    iget v0, p0, Lkg/o;->q:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v0, v0, v1

    .line 3
    iget-object v1, v0, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Lkg/o$d;->d(I)I

    move-result v0

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return v1
.end method

.method public bridge synthetic z2(Lkg/j;II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/o;->Q4(Lkg/j;II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public z4(I[BII)Lkg/o;
    .locals 4

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

    if-nez p4, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lkg/o;->I4(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    .line 3
    iget-object v1, p0, Lkg/o;->r:[Lkg/o$d;

    aget-object v1, v1, v0

    .line 4
    iget v2, v1, Lkg/o$d;->f:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v1, Lkg/o$d;->b:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lkg/j;->b2(I[BII)Lkg/j;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
