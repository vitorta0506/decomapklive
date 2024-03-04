.class public Lpj/l;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# static fields
.field private static b:Lpj/n;


# instance fields
.field protected a:Lfk/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpj/n;

    invoke-direct {v0}, Lpj/n;-><init>()V

    sput-object v0, Lpj/l;->b:Lpj/n;

    return-void
.end method

.method public constructor <init>(Lfk/f;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lpj/l;->a:Lfk/f;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 3

    sget-object v0, Lpj/l;->b:Lpj/n;

    iget-object v1, p0, Lpj/l;->a:Lfk/f;

    invoke-virtual {v0, v1}, Lpj/n;->b(Lfk/f;)I

    move-result v0

    sget-object v1, Lpj/l;->b:Lpj/n;

    iget-object v2, p0, Lpj/l;->a:Lfk/f;

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lpj/n;->c(Ljava/math/BigInteger;I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    return-object v1
.end method
