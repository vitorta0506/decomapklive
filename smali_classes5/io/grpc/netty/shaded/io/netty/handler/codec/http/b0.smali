.class public abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;
.super Lpg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    }
.end annotation


# instance fields
.field private final l:I

.field private final m:Z

.field private final n:Z

.field protected final o:Z

.field private final p:Z

.field private final q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

.field private final r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

.field private s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

.field private t:J

.field private u:J

.field private volatile v:Z

.field private w:Ljava/lang/CharSequence;

.field private x:Ljava/lang/CharSequence;

.field private y:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

.field private z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(IIIZZ)V
    .locals 7

    const/16 v6, 0x80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;-><init>(IIIZZI)V

    return-void
.end method

.method protected constructor <init>(IIIZZI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;-><init>(IIIZZIZ)V

    return-void
.end method

.method protected constructor <init>(IIIZZIZ)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;-><init>(IIIZZIZZ)V

    return-void
.end method

.method protected constructor <init>(IIIZZIZZ)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lpg/a;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    .line 6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v0, "maxInitialLineLength"

    .line 7
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    const-string v0, "maxHeaderSize"

    .line 8
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    const-string v0, "maxChunkSize"

    .line 9
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    .line 10
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/a;

    invoke-direct {v0, p6}, Lio/grpc/netty/shaded/io/netty/util/internal/a;-><init>(I)V

    .line 11
    new-instance p6, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

    invoke-direct {p6, p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;Lio/grpc/netty/shaded/io/netty/util/internal/a;I)V

    iput-object p6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

    .line 12
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    invoke-direct {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    .line 13
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l:I

    .line 14
    iput-boolean p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->m:Z

    .line 15
    iput-boolean p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->o:Z

    .line 16
    iput-boolean p7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->p:Z

    .line 17
    iput-boolean p8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->n:Z

    return-void
.end method

.method static synthetic M(Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p0
.end method

.method static synthetic N(Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p1
.end method

.method private O()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    return-wide v0
.end method

.method private static R(Lio/grpc/netty/shaded/io/netty/util/internal/a;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static S(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->g0(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid separator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result p0

    return p0
.end method

.method private static T(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    .line 4
    :cond_0
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->f0(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid separator, only a single space or horizontal tab allowed, but received a \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result p0

    return p0
.end method

.method private static U(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->g0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result p0

    return p0
.end method

.method private static W(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/16 v0, 0x10

    .line 6
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private b0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-virtual {p1, v0}, Lkg/j;->l2(I)Lkg/j;

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;

    sget-object v0, Lkg/s0;->d:Lkg/j;

    invoke-direct {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;-><init>(Lkg/j;)V

    .line 4
    invoke-static {p2}, Lpg/e;->b(Ljava/lang/Throwable;)Lpg/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lpg/f;->e(Lpg/e;)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 6
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->y:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    return-object p1
.end method

.method private c0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-virtual {p1, v0}, Lkg/j;->l2(I)Lkg/j;

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->P()Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 5
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-static {p2}, Lpg/e;->b(Ljava/lang/Throwable;)Lpg/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lpg/f;->e(Lpg/e;)V

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    return-object p1
.end method

.method private static f0(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g0(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private i0(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    invoke-virtual {v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_6

    .line 5
    :cond_1
    invoke-virtual {v2, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v4

    .line 6
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2

    const/16 v8, 0x9

    if-ne v4, v8, :cond_3

    .line 7
    :cond_2
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    .line 10
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 11
    :cond_4
    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->m0(Lio/grpc/netty/shaded/io/netty/util/internal/a;)V

    .line 12
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    invoke-virtual {v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object v2

    if-nez v2, :cond_5

    return-object v3

    .line 13
    :cond_5
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 14
    :cond_6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    .line 15
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 16
    :cond_7
    iput-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    .line 17
    iput-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    .line 18
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/w;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

    iget v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    iget v3, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->c:I

    invoke-direct {p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/w;-><init>(II)V

    .line 19
    invoke-interface {v0, p1}, Lpg/f;->e(Lpg/e;)V

    .line 20
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->H(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 22
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v4

    const/4 v6, 0x1

    if-lt v4, v6, :cond_9

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 24
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    .line 25
    :cond_9
    :goto_1
    iget-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->p:Z

    invoke-static {v2, v6, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->j(Ljava/util/List;ZZ)J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-eqz v8, :cond_a

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 27
    :cond_a
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 28
    invoke-static {v0, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Z)V

    .line 29
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p1

    .line 30
    :cond_b
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object p1

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    if-ne p1, v1, :cond_c

    .line 32
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V

    .line 33
    :cond_c
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p1

    .line 34
    :cond_d
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->O()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_e

    .line 35
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p1

    .line 36
    :cond_e
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p1
.end method

.method private j0(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->y:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->k3:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    return-object p1

    :cond_1
    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;

    sget-object v3, Lkg/s0;->d:Lkg/j;

    iget-boolean v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->o:Z

    invoke-direct {v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;-><init>(Lkg/j;Z)V

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->y:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    :cond_2
    move-object v3, v1

    .line 6
    :cond_3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v4

    if-eqz v3, :cond_5

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_5

    .line 8
    :cond_4
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->H(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 11
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->m0(Lio/grpc/netty/shaded/io/netty/util/internal/a;)V

    .line 15
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    .line 16
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v3, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 17
    invoke-virtual {v3, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->q0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 18
    invoke-virtual {v3, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 19
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 20
    :cond_6
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    .line 21
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    .line 22
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    .line 23
    :cond_7
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 24
    :cond_8
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->y:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    return-object v2
.end method

.method private l0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 3
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    .line 4
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    const-wide/high16 v2, -0x8000000000000000L

    .line 5
    iput-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    .line 6
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->e()V

    .line 7
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->q:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$b;->e()V

    .line 8
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->y:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->e0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->h0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->v:Z

    .line 14
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-void
.end method

.method private m0(Lio/grpc/netty/shaded/io/netty/util/internal/a;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->T(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v1

    move v2, v1

    :goto_0
    const/16 v3, 0x3a

    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v4

    if-eq v4, v3, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->e0()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->f0(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v0, :cond_5

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    .line 5
    invoke-virtual {p1, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->d(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_3
    :goto_3
    invoke-virtual {p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->i(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->w:Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->T(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v1

    if-ne v1, v0, :cond_4

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    goto :goto_4

    .line 9
    :cond_4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->R(Lio/grpc/netty/shaded/io/netty/util/internal/a;)I

    move-result v0

    .line 10
    invoke-virtual {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->i(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x:Ljava/lang/CharSequence;

    :goto_4
    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No colon found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static n0(Lio/grpc/netty/shaded/io/netty/util/internal/a;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->S(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v1

    .line 2
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->U(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v2

    .line 3
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->S(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v3

    .line 4
    invoke-static {p0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->U(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v4

    .line 5
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->S(Lio/grpc/netty/shaded/io/netty/util/internal/a;I)I

    move-result v5

    .line 6
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->R(Lio/grpc/netty/shaded/io/netty/util/internal/a;)I

    move-result v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->i(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 8
    invoke-virtual {p0, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->i(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    if-ge v5, v6, :cond_0

    .line 9
    invoke-virtual {p0, v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->i(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 v0, 0x2

    aput-object p0, v7, v0

    return-object v7
.end method


# virtual methods
.method protected abstract P()Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;
.end method

.method protected abstract Q([Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/q;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$a;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->k0()V

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lpg/a;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    return-void
.end method

.method protected a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->u:J

    return-void
.end method

.method protected d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->a()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_2

    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->k0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s0:Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->a0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v0, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 p1, 0xcc

    if-eq v0, p1, :cond_3

    const/16 p1, 0x130

    if-eq v0, p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method protected abstract e0()Z
.end method

.method protected h0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->a()I

    move-result v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->a()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->F(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    .line 4
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    .line 5
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public k0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->v:Z

    return-void
.end method

.method protected x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->v:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    .line 3
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$a;->a:[I

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p1, v0

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p1

    if-lez p1, :cond_16

    .line 5
    invoke-virtual {p2, p1}, Lkg/j;->z1(I)Lkg/j;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 6
    :pswitch_1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p1

    invoke-virtual {p2, p1}, Lkg/j;->l2(I)Lkg/j;

    goto/16 :goto_4

    .line 7
    :pswitch_2
    :try_start_0
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->j0(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-direct {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->b0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :pswitch_3
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v3, p1

    .line 13
    iget-wide v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    long-to-int p1, v5

    .line 14
    :cond_3
    invoke-virtual {p2, p1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object p2

    .line 15
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    int-to-long v5, p1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    .line 16
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->o:Z

    invoke-direct {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;-><init>(Lkg/j;Z)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    goto :goto_0

    .line 18
    :cond_4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;-><init>(Lkg/j;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 19
    :pswitch_4
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_5

    .line 20
    invoke-virtual {p2, p1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object p1

    .line 21
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;

    invoke-direct {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;-><init>(Lkg/j;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    .line 22
    :pswitch_5
    :try_start_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 23
    :cond_6
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->W(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    .line 24
    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    if-nez p1, :cond_7

    .line 25
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-void

    .line 26
    :cond_7
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :pswitch_6
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    long-to-int p1, v3

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 28
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->n:Z

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    if-ge v0, p1, :cond_8

    return-void

    .line 29
    :cond_8
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 30
    :cond_9
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;

    invoke-virtual {p2, p1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d;-><init>(Lkg/j;)V

    .line 31
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    int-to-long v5, p1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    .line 32
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_a

    return-void

    .line 34
    :cond_a
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 35
    :pswitch_7
    invoke-virtual {p2}, Lkg/j;->K2()I

    move-result p1

    .line 36
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result p3

    :goto_1
    if-le p1, p3, :cond_c

    add-int/lit8 v0, p3, 0x1

    .line 37
    invoke-virtual {p2, p3}, Lkg/j;->u0(I)B

    move-result p3

    const/16 v1, 0xa

    if-ne p3, v1, :cond_b

    .line 38
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    move p3, v0

    goto :goto_2

    :cond_b
    move p3, v0

    goto :goto_1

    .line 39
    :cond_c
    :goto_2
    invoke-virtual {p2, p3}, Lkg/j;->R1(I)Lkg/j;

    return-void

    :catch_1
    move-exception p1

    .line 40
    invoke-direct {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->b0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 41
    :pswitch_8
    :try_start_2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;

    invoke-virtual {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$c;->d(Lkg/j;)Lio/grpc/netty/shaded/io/netty/util/internal/a;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 42
    :cond_d
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->n0(Lio/grpc/netty/shaded/io/netty/util/internal/a;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_e

    .line 44
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-void

    .line 45
    :cond_e
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->Q([Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 46
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 47
    :pswitch_9
    :try_start_3
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->i0(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 48
    :cond_f
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_15

    const/4 v3, 0x2

    if-eq p1, v3, :cond_13

    .line 50
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->O()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_12

    const-wide/16 v1, -0x1

    cmp-long p1, v3, v1

    if-nez p1, :cond_10

    .line 51
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->e0()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_3

    .line 52
    :cond_10
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    if-ne v0, p1, :cond_11

    .line 54
    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->t:J

    :cond_11
    return-void

    .line 55
    :cond_12
    :goto_3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->k3:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    return-void

    .line 58
    :cond_13
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->m:Z

    if-eqz p1, :cond_14

    .line 59
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 60
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Chunked messages not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_15
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->k3:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 64
    invoke-direct {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->c0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_3
    move-exception p1

    .line 65
    invoke-direct {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->c0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lpg/a;->y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    .line 2
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->v:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    .line 4
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->s:Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    if-eqz p1, :cond_7

    .line 5
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result p1

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->k3:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    return-void

    .line 9
    :cond_1
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->z:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    if-ne p2, v0, :cond_2

    .line 10
    sget-object p1, Lkg/s0;->d:Lkg/j;

    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/PrematureChannelClosureException;

    const-string v0, "Connection closed before received headers"

    invoke-direct {p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->c0(Lkg/j;Ljava/lang/Exception;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->e0()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_5

    if-eqz p1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->O()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 14
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->k3:Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->l0()V

    :cond_7
    return-void
.end method
