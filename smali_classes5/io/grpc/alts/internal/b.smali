.class final Lio/grpc/alts/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/a;


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Ljava/security/Provider;


# instance fields
.field private final a:[B

.field private final b:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/alts/internal/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/b;->c:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/b;->e()Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/b;->d:Ljava/security/Provider;

    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/b;->a:[B

    .line 4
    sget-object p1, Lio/grpc/alts/internal/b;->d:Ljava/security/Provider;

    const-string v0, "AES/GCM/NoPadding"

    if-eqz p1, :cond_1

    .line 5
    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    :goto_1
    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p4

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lio/grpc/alts/internal/b;->a:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, p4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p4, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p4, p3}, Ljavax/crypto/Cipher;->updateAAD(Ljava/nio/ByteBuffer;)V

    .line 4
    :cond_1
    iget-object p3, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p3, p2, p1}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private d(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p4

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lio/grpc/alts/internal/b;->a:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, p4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p4, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p4, p3}, Ljavax/crypto/Cipher;->updateAAD(Ljava/nio/ByteBuffer;)V

    .line 4
    :cond_1
    iget-object p3, p0, Lio/grpc/alts/internal/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p3, p2, p1}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method static e()Ljava/security/Provider;
    .locals 5

    const-string v0, "Could not load Conscrypt. Will use slower JDK implementation"

    .line 1
    invoke-static {}, Lio/grpc/internal/w;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lio/grpc/internal/w;->c()Ljava/security/Provider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "AES/GCM/NoPadding"

    .line 3
    invoke-static {v3, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    sget-object v3, Lio/grpc/alts/internal/b;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lio/grpc/alts/internal/b;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Could not load Conscrypt. Will try slower JDK implementation. This may be because the JDK is older than Java 7 update 121 or Java 8 update 111. If so, please update"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception v1

    .line 6
    sget-object v3, Lio/grpc/alts/internal/b;->c:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method static f()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/grpc/alts/internal/b;->d(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)I

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/grpc/alts/internal/b;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V

    return-void
.end method
