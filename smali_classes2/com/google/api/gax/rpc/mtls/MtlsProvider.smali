.class public Lcom/google/api/gax/rpc/mtls/MtlsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;,
        Lcom/google/api/gax/rpc/mtls/MtlsProvider$a;,
        Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lp5/b;

.field private c:Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.secureConnect/context_aware_metadata.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5
    sget-object v0, Lm5/l0;->a:Lm5/l0;

    new-instance v1, Lcom/google/api/gax/rpc/mtls/MtlsProvider$a;

    invoke-direct {v1}, Lcom/google/api/gax/rpc/mtls/MtlsProvider$a;-><init>()V

    sget-object v2, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;-><init>(Lp5/b;Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lp5/b;Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->b:Lp5/b;

    .line 3
    iput-object p2, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->c:Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;

    .line 4
    iput-object p3, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/io/InputStream;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lh5/a;

    invoke-direct {v0}, Lh5/a;-><init>()V

    invoke-virtual {v0, p0}, Lh5/a;->b(Ljava/io/InputStream;)Lg5/f;

    move-result-object p0

    .line 2
    const-class v0, Lq5/a;

    invoke-virtual {p0, v0}, Lg5/f;->y(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq5/a;

    .line 3
    invoke-virtual {p0}, Lq5/a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/io/InputStream;Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;)Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;->a(Ljava/io/InputStream;)Ljava/lang/Process;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->e(Ljava/lang/Process;J)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/util/a0;->a(Ljava/io/InputStream;)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cert provider command failed with exit code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static e(Ljava/lang/Process;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    const-wide/16 v4, 0x64

    .line 2
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long/2addr p1, v2

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    nop

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "cert provider command timed out"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->c:Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;

    invoke-static {v1, v2}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->c(Ljava/io/InputStream;Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;)Ljava/security/KeyStore;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 4
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v0

    :catch_1
    move-exception v0

    .line 6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interrupted executing certificate provider command"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->b:Lp5/b;

    const-string v1, "GOOGLE_API_USE_MTLS_ENDPOINT"

    invoke-interface {v0, v1}, Lp5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "never"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->NEVER:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    return-object v0

    :cond_0
    const-string v1, "always"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->ALWAYS:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;->AUTO:Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->b:Lp5/b;

    const-string v1, "GOOGLE_API_USE_CLIENT_CERTIFICATE"

    invoke-interface {v0, v1}, Lp5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
