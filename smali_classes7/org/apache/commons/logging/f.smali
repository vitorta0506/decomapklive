.class final Lorg/apache/commons/logging/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic a:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/f;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    const-string v0, "Unable to close stream for URL "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/logging/f;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :cond_0
    if-eqz v2, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/logging/f;->a:Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catch_1
    move-object v2, v1

    .line 10
    :catch_2
    :try_start_3
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to read URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/commons/logging/f;->a:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 12
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 13
    :catch_3
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v2, :cond_3

    .line 15
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 16
    :catch_4
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/logging/f;->a:Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->a(Ljava/lang/String;)V

    .line 18
    :cond_3
    :goto_3
    throw v1
.end method
