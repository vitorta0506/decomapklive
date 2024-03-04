.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "-+BEGIN\\s+.*CERTIFICATE[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*CERTIFICATE[^-]*-+"

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->b:Ljava/util/regex/Pattern;

    const-string v0, "-+BEGIN\\s+.*PRIVATE\\s+KEY[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*PRIVATE\\s+KEY[^-]*-+"

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/InputStream;)[Lkg/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-array p0, v1, [Lkg/j;

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkg/j;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "found no certificates in input stream"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lkg/s0;->c(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lkg/j;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->e(Lkg/j;)Lkg/j;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "failed to read certificate input stream"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    :try_start_0
    new-array v1, v1, [B

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    .line 3
    sget-object p0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->d(Ljava/io/OutputStream;)V

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->d(Ljava/io/OutputStream;)V

    .line 7
    throw p0
.end method

.method static c(Ljava/io/InputStream;)Lkg/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lkg/s0;->c(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lkg/j;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->e(Lkg/j;)Lkg/j;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/KeyException;

    const-string v0, "could not find a PKCS #8 private key in input stream (see https://netty.io/wiki/sslcontextbuilder-and-private-key.html for more information)"

    invoke-direct {p0, v0}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/security/KeyException;

    const-string v1, "failed to read key input stream"

    invoke-direct {v0, v1, p0}, Ljava/security/KeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static d(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Failed to close a stream."

    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
