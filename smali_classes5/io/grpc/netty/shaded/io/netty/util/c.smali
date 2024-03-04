.class public final Lio/grpc/netty/shaded/io/netty/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lio/grpc/netty/shaded/io/netty/util/c;

.field public static final g:Lio/grpc/netty/shaded/io/netty/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lio/grpc/netty/shaded/io/netty/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/c;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/c$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/c;->g:Lio/grpc/netty/shaded/io/netty/util/l;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/c$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/c;->h:Lio/grpc/netty/shaded/io/netty/util/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j(I)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 15
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/c;->e(C)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    .line 17
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    return-void

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") <= start + length("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") <= value.length("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    add-int p4, p2, p3

    .line 4
    invoke-static {p1, p2, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    goto :goto_0

    .line 6
    :cond_0
    array-length p4, p1

    invoke-static {p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result p4

    if-nez p4, :cond_1

    .line 7
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    .line 8
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    .line 9
    :goto_0
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    return-void

    .line 10
    :cond_1
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: 0 <= start("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") <= start + length("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") <= value.length("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([BIIZ)V

    return-void
.end method

.method private static L(B)B
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->x(B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-byte p0, p0

    :cond_0
    return p0
.end method

.method public static M(C)C
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->y(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method public static U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->T()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, 0x20

    if-gt v0, v1, :cond_2

    .line 6
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    if-lt v3, v0, :cond_3

    .line 7
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v2, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    if-ne v3, v1, :cond_4

    return-object p0

    .line 8
    :cond_4
    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static c(B)C
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    return p0
.end method

.method public static e(C)B
    .locals 1

    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    const/16 p0, 0x3f

    :cond_0
    int-to-byte p0, p0

    return p0
.end method

.method private static f(C)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method public static g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iput-object p0, v0, Lio/grpc/netty/shaded/io/netty/util/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    instance-of v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v2, :cond_1

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->i(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    instance-of v2, p1, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v2, :cond_2

    .line 4
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/util/c;->i(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 5
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 7
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    instance-of v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v2, :cond_1

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    instance-of v2, p1, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v2, :cond_2

    .line 4
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 5
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 7
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/util/c;->p(CC)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static o(BB)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->L(B)B

    move-result p0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->L(B)B

    move-result p1

    if-ne p0, p1, :cond_0

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

.method private static p(CC)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->M(C)C

    move-result p0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->M(C)C

    move-result p1

    if-ne p0, p1, :cond_0

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

.method private r(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    add-int v1, v0, p1

    add-int/2addr v1, p2

    add-int/2addr v0, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte p1, p1, v0

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/g;->a(B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static s(Ljava/lang/CharSequence;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->U(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static u(Ljava/lang/CharSequence;CI)I
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/c;->t(CI)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, -0x1

    if-nez p0, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    if-ge p2, v1, :cond_5

    .line 6
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_4

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static x(B)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A(ILjava/lang/CharSequence;II)Z
    .locals 4

    const-string v0, "string"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-ltz p3, :cond_5

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-ge v1, p4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v1

    if-ltz p1, :cond_5

    sub-int/2addr v1, p1

    if-ge v1, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-gtz p4, :cond_2

    return v1

    :cond_2
    add-int/2addr p4, p3

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v2

    add-int/2addr p1, v2

    :goto_0
    if-ge p3, p4, :cond_4

    .line 5
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v2, v2, p1

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/c;->c(B)C

    move-result v2

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public B(II)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->C(IIZ)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    return-object p1
.end method

.method public C(IIZ)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 3

    sub-int v0, p2, p1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v1

    if-ne p2, v1, :cond_0

    return-object p0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/c;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p1

    .line 4
    :cond_1
    new-instance p2, Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    add-int/2addr p1, v2

    invoke-direct {p2, v1, p1, v0, p3}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([BIIZ)V

    return-object p2

    .line 5
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: 0 <= start("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= end ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= length("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public F()[B
    .locals 2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->I(II)[B

    move-result-object v0

    return-object v0
.end method

.method public I(II)[B
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public N(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->Q(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Q(II)Ljava/lang/String;
    .locals 4

    sub-int/2addr p2, p1

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    const/4 v2, 0x0

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    add-int/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= srcIdx + length("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= srcLen("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, 0x20

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v3, v3, v0

    if-gt v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_1
    if-lt v3, v0, :cond_1

    .line 3
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v4, v4, v3

    if-gt v4, v2, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    if-ne v3, v1, :cond_2

    return-object p0

    .line 4
    :cond_2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([BIIZ)V

    return-object v1
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    return v0
.end method

.method public charAt(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->d(I)B

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->c(B)C

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->h(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public d(I)B
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    if-ge p1, v0, :cond_1

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    return p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in the range [0,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v2

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v3

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v4

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result p1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v5

    invoke-static {v2, v3, v4, p1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->w([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public h(Ljava/lang/CharSequence;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v4

    :goto_0
    if-ge v0, v3, :cond_2

    .line 5
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v5, v5, v4

    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/c;->c(B)C

    move-result v5

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v2

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V([BII)I

    move-result v0

    .line 3
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->d:I

    :cond_0
    return v0
.end method

.method public i(Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    instance-of v2, p1, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v4, v4, v2

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->c(B)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public k(Ljava/lang/CharSequence;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    instance-of v2, p1, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v2, :cond_4

    .line 3
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v2

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v3

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v4

    add-int/2addr v4, v2

    :goto_0
    if-ge v2, v4, :cond_3

    .line 5
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v5, v5, v2

    iget-object v6, p1, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v6, v6, v3

    invoke-static {v5, v6}, Lio/grpc/netty/shaded/io/netty/util/c;->o(BB)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 6
    :cond_4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 7
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/c;->c(B)C

    move-result v5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lio/grpc/netty/shaded/io/netty/util/c;->p(CC)Z

    move-result v5

    if-nez v5, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    return v0
.end method

.method public m(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->A(ILjava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public q(Lio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->r(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/c;->B(II)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    return-object p1
.end method

.method public t(CI)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->f(C)B

    move-result p1

    .line 2
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    add-int/2addr v2, v1

    add-int/2addr p2, v1

    :goto_0
    if-ge p2, v2, :cond_3

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    aget-byte v1, v1, p2

    if-ne v1, p1, :cond_2

    .line 4
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    sub-int/2addr p2, p1

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->N(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public v()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;->c:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/c;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
