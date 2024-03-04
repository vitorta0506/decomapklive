.class public Lorg/bouncycastle/asn1/u0;
.super Lorg/bouncycastle/asn1/l;
.source "SourceFile"


# static fields
.field public static final a:Lorg/bouncycastle/asn1/u0;

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/u0;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/u0;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/u0;->b:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/l;-><init>()V

    return-void
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/u0;->b:[B

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/q;->n(ZI[B)V

    return-void
.end method

.method z()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
