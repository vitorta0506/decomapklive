.class public Lorg/bouncycastle/util/encoders/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/bouncycastle/util/encoders/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/encoders/b;

    invoke-direct {v0}, Lorg/bouncycastle/util/encoders/b;-><init>()V

    sput-object v0, Lorg/bouncycastle/util/encoders/a;->a:Lorg/bouncycastle/util/encoders/c;

    return-void
.end method

.method public static a([B)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/encoders/a;->b([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([BII)[B
    .locals 2

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Lorg/bouncycastle/util/encoders/a;->a:Lorg/bouncycastle/util/encoders/c;

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/bouncycastle/util/encoders/c;->a([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/util/encoders/EncoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding base64 string: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
