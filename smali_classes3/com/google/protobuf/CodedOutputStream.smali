.class public abstract Lcom/google/protobuf/CodedOutputStream;
.super Lcom/google/protobuf/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedOutputStream$d;,
        Lcom/google/protobuf/CodedOutputStream$b;,
        Lcom/google/protobuf/CodedOutputStream$c;,
        Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Z


# instance fields
.field a:Lcom/google/protobuf/r;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/CodedOutputStream;->c:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/protobuf/m3;->J()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/CodedOutputStream;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedOutputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method public static A(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->b0(J)I

    move-result p0

    return p0
.end method

.method public static B(ILcom/google/protobuf/x0;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->C(ILcom/google/protobuf/x0;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static C(ILcom/google/protobuf/x0;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->D(Lcom/google/protobuf/x0;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static D(Lcom/google/protobuf/x0;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/x0;->c()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p0

    return p0
.end method

.method static E(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static F(ILcom/google/protobuf/o1;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static G(ILcom/google/protobuf/o1;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->I(Lcom/google/protobuf/o1;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static H(ILcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->J(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static I(Lcom/google/protobuf/o1;)I
    .locals 0

    invoke-interface {p0}, Lcom/google/protobuf/o1;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p0

    return p0
.end method

.method static J(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I
    .locals 0

    check-cast p0, Lcom/google/protobuf/b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->getSerializedSize(Lcom/google/protobuf/n2;)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p0

    return p0
.end method

.method static K(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static L(ILcom/google/protobuf/ByteString;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static M(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0
.end method

.method public static N(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->O(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static O(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static P(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->Q(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Q(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static R(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->S(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static S(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->c0(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0
.end method

.method public static T(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->U(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static U(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->d0(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->b0(J)I

    move-result p0

    return p0
.end method

.method public static V(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->W(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static W(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/n3;->j(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/n3$d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/protobuf/u0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p0

    return p0
.end method

.method public static X(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0
.end method

.method public static Y(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Z(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static a0(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->b0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b0(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/CodedOutputStream;->d:Z

    return v0
.end method

.method public static c0(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d0(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static e(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->f(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static g([B)I
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p0

    return p0
.end method

.method public static h(ILcom/google/protobuf/ByteString;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h0(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->i0(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/google/protobuf/ByteString;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p0

    return p0
.end method

.method public static i0(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/google/protobuf/CodedOutputStream$d;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/CodedOutputStream$d;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static j(ID)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->k(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j0([B)Lcom/google/protobuf/CodedOutputStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->k0([BII)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static k(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static k0([BII)Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/google/protobuf/CodedOutputStream$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$c;-><init>([BII)V

    return-object v0
.end method

.method public static l(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static m(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result p0

    return p0
.end method

.method public static n(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static p(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->q(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static q(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static r(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->s(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static s(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static t(ILcom/google/protobuf/o1;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->v(Lcom/google/protobuf/o1;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static u(ILcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->w(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static v(Lcom/google/protobuf/o1;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/o1;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method static w(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p0, Lcom/google/protobuf/b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->getSerializedSize(Lcom/google/protobuf/n2;)I

    move-result p0

    return p0
.end method

.method public static x(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static y(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static z(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->A(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract A0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final B0(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->x0(II)V

    return-void
.end method

.method public final C0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->y0(I)V

    return-void
.end method

.method public final D0(ILcom/google/protobuf/o1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->b1(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->F0(Lcom/google/protobuf/o1;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->b1(II)V

    return-void
.end method

.method final E0(ILcom/google/protobuf/o1;Lcom/google/protobuf/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->b1(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->G0(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->b1(II)V

    return-void
.end method

.method public final F0(Lcom/google/protobuf/o1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/protobuf/o1;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method final G0(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->a:Lcom/google/protobuf/r;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/n2;->d(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public abstract H0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final J0(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    return-void
.end method

.method public final K0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->f1(J)V

    return-void
.end method

.method public abstract L0(ILcom/google/protobuf/o1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract M0(ILcom/google/protobuf/o1;Lcom/google/protobuf/n2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract N0(Lcom/google/protobuf/o1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract O0(ILcom/google/protobuf/o1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract P0(ILcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Q0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    return-void
.end method

.method public final R0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->x0(II)V

    return-void
.end method

.method public final S0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->y0(I)V

    return-void
.end method

.method public final T0(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->z0(IJ)V

    return-void
.end method

.method public final U0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->A0(J)V

    return-void
.end method

.method public final V0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/CodedOutputStream;->c0(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    return-void
.end method

.method public final W0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->c0(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    return-void
.end method

.method public final X0(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/protobuf/CodedOutputStream;->d0(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    return-void
.end method

.method public final Y0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->d0(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->f1(J)V

    return-void
.end method

.method public abstract Z0(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a1(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b1(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c1(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream;->l0()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract d1(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e1(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final f0(Ljava/lang/String;Lcom/google/protobuf/n3$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/CodedOutputStream;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/protobuf/u0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    const/4 p2, 0x0

    .line 4
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->b([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    throw p1

    :catch_1
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract f1(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method g0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/CodedOutputStream;->b:Z

    return v0
.end method

.method public abstract l0()I
.end method

.method public abstract m0(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n0(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final o0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->m0(B)V

    return-void
.end method

.method public final p0([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->q0([BII)V

    return-void
.end method

.method abstract q0([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r0(ILcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s0(Lcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final t0(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->z0(IJ)V

    return-void
.end method

.method public final u0(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->A0(J)V

    return-void
.end method

.method public final v0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    return-void
.end method

.method public final w0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->I0(I)V

    return-void
.end method

.method public abstract x0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z0(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
