.class public Lorg/conscrypt/ct/DigitallySigned;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;,
        Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    }
.end annotation


# instance fields
.field private final a:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final b:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field private final c:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object p1

    .line 6
    invoke-static {p2}, Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/ct/DigitallySigned;-><init>(Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/conscrypt/ct/DigitallySigned;->a:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 3
    iput-object p2, p0, Lorg/conscrypt/ct/DigitallySigned;->b:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 4
    iput-object p3, p0, Lorg/conscrypt/ct/DigitallySigned;->c:[B

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lorg/conscrypt/ct/DigitallySigned;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/conscrypt/ct/DigitallySigned;

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1}, Lgl/c;->h(Ljava/io/InputStream;I)I

    move-result v2

    .line 3
    invoke-static {p0, v1}, Lgl/c;->h(Ljava/io/InputStream;I)I

    move-result v1

    const/4 v3, 0x2

    .line 4
    invoke-static {p0, v3}, Lgl/c;->i(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Lorg/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v0, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
