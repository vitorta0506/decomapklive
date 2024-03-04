.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$Parser;,
        Lcom/google/protobuf/TextFormat$UnknownFieldParseException;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$c;,
        Lcom/google/protobuf/TextFormat$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/protobuf/TextFormat$Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/TextFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->a:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/protobuf/TextFormat$Parser;->a()Lcom/google/protobuf/TextFormat$Parser$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Parser$a;->a()Lcom/google/protobuf/TextFormat$Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->b:Lcom/google/protobuf/TextFormat$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$c;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->i(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static c(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method public static d(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/x2;->a(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/x2;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/x2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static h(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$c;
    .locals 3

    new-instance v0, Lcom/google/protobuf/TextFormat$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/TextFormat$c;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/TextFormat$a;)V

    return-object v0
.end method

.method static j(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->l(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static k(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->l(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static l(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number must be positive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0xa

    const-string v3, "0x"

    .line 3
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const-string v3, "0"

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_8

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    goto/16 :goto_3

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_7

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    goto/16 :goto_3

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    .line 11
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    .line 12
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    .line 13
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    .line 15
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    .line 16
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    .line 17
    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    .line 19
    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_10
    :goto_3
    return-wide v0

    .line 20
    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static m(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->l(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static n(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->l(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static o()Lcom/google/protobuf/TextFormat$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/TextFormat$b;->a()Lcom/google/protobuf/TextFormat$b;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_19

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_18

    add-int/lit8 v3, v3, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_17

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    .line 7
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->h(B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->h(B)Z

    move-result v8

    if-eqz v8, :cond_0

    mul-int/lit8 v5, v5, 0x8

    .line 10
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->h(B)Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int/lit8 v5, v5, 0x8

    .line 12
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_1
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 13
    aput-byte v5, v1, v4

    goto/16 :goto_4

    :cond_2
    const/16 v8, 0x22

    if-eq v5, v8, :cond_16

    const/16 v8, 0x27

    if-eq v5, v8, :cond_15

    const/16 v9, 0x3f

    if-eq v5, v9, :cond_14

    const/16 v9, 0x55

    if-eq v5, v9, :cond_e

    if-eq v5, v6, :cond_d

    const/16 v6, 0x66

    const/16 v9, 0xc

    if-eq v5, v6, :cond_c

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_b

    const/16 v6, 0x72

    if-eq v5, v6, :cond_a

    const/16 v6, 0x78

    if-eq v5, v6, :cond_7

    const/16 v6, 0x61

    if-eq v5, v6, :cond_6

    const/16 v6, 0x62

    const/16 v10, 0x8

    if-eq v5, v6, :cond_5

    packed-switch v5, :pswitch_data_0

    .line 14
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xb

    .line 15
    aput-byte v6, v1, v4

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v3, 0x3

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 17
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 18
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v3, 0x2

    .line 19
    invoke-virtual {p0, v8}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v11

    invoke-static {v11}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 20
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v11

    invoke-static {v11}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 21
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v3

    shl-int/2addr v3, v9

    .line 22
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v6

    shl-int/2addr v6, v10

    or-int/2addr v3, v6

    .line 23
    invoke-virtual {p0, v8}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v3, v6

    .line 24
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v6

    or-int/2addr v3, v6

    int-to-char v3, v3

    .line 25
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 26
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 27
    array-length v6, v3

    invoke-static {v3, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length v3, v3

    :goto_1
    add-int/2addr v4, v3

    move v3, v5

    goto/16 :goto_5

    .line 29
    :cond_3
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\u\' refers to a surrogate"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_4
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\u\' with too few hex chars"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x9

    .line 31
    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v5, v4, 0x1

    .line 32
    aput-byte v10, v1, v4

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x7

    .line 33
    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 35
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v8

    if-eqz v8, :cond_8

    mul-int/lit8 v5, v5, 0x10

    .line 37
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_8
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 38
    aput-byte v5, v1, v4

    goto/16 :goto_4

    .line 39
    :cond_9
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xd

    .line 40
    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    .line 41
    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v5, v4, 0x1

    .line 42
    aput-byte v9, v1, v4

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v5, v4, 0x1

    .line 43
    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v3, 0x7

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    const-string v8, "Invalid escape sequence: \'\\U\' with too few hex chars"

    if-ge v5, v6, :cond_13

    move v6, v3

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, v3, 0x8

    if-ge v6, v10, :cond_10

    .line 45
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v10

    .line 46
    invoke-static {v10}, Lcom/google/protobuf/TextFormat;->g(B)Z

    move-result v11

    if-eqz v11, :cond_f

    shl-int/lit8 v9, v9, 0x4

    .line 47
    invoke-static {v10}, Lcom/google/protobuf/TextFormat;->c(B)I

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 48
    :cond_f
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    invoke-direct {p0, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_10
    invoke-static {v9}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    const-string v8, "Invalid escape sequence: \'\\U"

    if-eqz v6, :cond_12

    .line 50
    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v6

    .line 51
    sget-object v11, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v6, v11}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 52
    invoke-virtual {v6, v11}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 53
    invoke-virtual {v6, v11}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    new-array v3, v7, [I

    aput v9, v3, v2

    .line 54
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v7}, Ljava/lang/String;-><init>([III)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 55
    array-length v6, v3

    invoke-static {v3, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    array-length v3, v3

    goto/16 :goto_1

    .line 57
    :cond_11
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, v3, v10}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' refers to a surrogate code unit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_12
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0, v3, v10}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a valid code point value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_13
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    invoke-direct {p0, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    add-int/lit8 v5, v4, 0x1

    .line 62
    aput-byte v9, v1, v4

    goto :goto_3

    :cond_15
    add-int/lit8 v5, v4, 0x1

    .line 63
    aput-byte v8, v1, v4

    goto :goto_3

    :cond_16
    add-int/lit8 v5, v4, 0x1

    .line 64
    aput-byte v8, v1, v4

    :goto_3
    move v4, v5

    goto :goto_5

    .line 65
    :cond_17
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    add-int/lit8 v6, v4, 0x1

    .line 66
    aput-byte v5, v1, v4

    :goto_4
    move v4, v6

    :goto_5
    add-int/2addr v3, v7

    goto/16 :goto_0

    :cond_19
    if-ne v0, v4, :cond_1a

    .line 67
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_6

    .line 68
    :cond_1a
    invoke-static {v1, v2, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    .line 2
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
