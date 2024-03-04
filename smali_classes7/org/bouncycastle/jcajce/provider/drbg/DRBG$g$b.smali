.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;->b([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;[BII)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->a:[B

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->b:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;->a(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->a:[B

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->b:I

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "unable to read random source"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g$b;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
