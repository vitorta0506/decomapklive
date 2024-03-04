.class public Lorg/conscrypt/ct/SignedCertificateTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;,
        Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;,
        Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;
    }
.end annotation


# instance fields
.field private final a:Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

.field private final b:[B

.field private final c:J

.field private final d:[B

.field private final e:Lorg/conscrypt/ct/DigitallySigned;

.field private final f:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLorg/conscrypt/ct/DigitallySigned;Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->a:Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    .line 3
    iput-object p2, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->b:[B

    .line 4
    iput-wide p3, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->c:J

    .line 5
    iput-object p5, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->d:[B

    .line 6
    iput-object p6, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->e:Lorg/conscrypt/ct/DigitallySigned;

    .line 7
    iput-object p7, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->f:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lgl/c;->h(Ljava/io/InputStream;I)I

    move-result v0

    .line 2
    sget-object v2, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lorg/conscrypt/ct/SignedCertificateTimestamp;

    const/16 v1, 0x20

    .line 4
    invoke-static {p0, v1}, Lgl/c;->d(Ljava/io/InputStream;I)[B

    move-result-object v3

    const/16 v1, 0x8

    .line 5
    invoke-static {p0, v1}, Lgl/c;->g(Ljava/io/InputStream;I)J

    move-result-wide v4

    const/4 v1, 0x2

    .line 6
    invoke-static {p0, v1}, Lgl/c;->i(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 7
    invoke-static {p0}, Lorg/conscrypt/ct/DigitallySigned;->a(Ljava/io/InputStream;)Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v7

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/conscrypt/ct/SignedCertificateTimestamp;-><init>(Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLorg/conscrypt/ct/DigitallySigned;Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)V

    return-object v0

    .line 8
    :cond_0
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported SCT version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BLorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->a(Ljava/io/InputStream;Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lorg/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ct/SignedCertificateTimestamp;->b:[B

    return-object v0
.end method
