.class Lcom/google/auth/oauth2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final d:Lcom/google/auth/oauth2/j;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String;

.field static final h:Ljava/util/logging/Logger;


# instance fields
.field private a:Lcom/google/auth/oauth2/GoogleCredentials;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/j;

    invoke-direct {v0}, Lcom/google/auth/oauth2/j;-><init>()V

    sput-object v0, Lcom/google/auth/oauth2/j;->d:Lcom/google/auth/oauth2/j;

    const-string v0, "java.specification.version"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/j;->e:Ljava/lang/String;

    const-string v0, "com.google.appengine.runtime.version"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/j;->f:Ljava/lang/String;

    const-string v0, "org.eclipse.jetty.util.log.class"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/j;->g:Ljava/lang/String;

    .line 5
    const-class v0, Lcom/google/auth/oauth2/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/auth/oauth2/j;->a:Lcom/google/auth/oauth2/GoogleCredentials;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/auth/oauth2/j;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/auth/oauth2/j;->c:Z

    return-void
.end method

.method private final c(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GOOGLE_APPLICATION_CREDENTIALS"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3
    sget-object v6, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v4

    const-string v9, "Attempting to load credentials from file: %s"

    .line 4
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v6}, Lcom/google/auth/oauth2/j;->g(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {p0, v6}, Lcom/google/auth/oauth2/j;->i(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-static {v6, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto :goto_2

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v6

    goto :goto_1

    .line 11
    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File does not exist."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/AccessControlException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-object v6, v3

    :goto_0
    if-eqz v6, :cond_2

    .line 12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_3
    move-exception p1

    .line 13
    :goto_1
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading credential file from environment variable %s, value \'%s\': %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v1, v8, v5

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 15
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 17
    :cond_1
    throw p1

    :cond_2
    :goto_3
    move-object v0, v3

    :cond_3
    :goto_4
    if-nez v0, :cond_7

    .line 18
    invoke-direct {p0}, Lcom/google/auth/oauth2/j;->f()Ljava/io/File;

    move-result-object v1

    .line 19
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/j;->g(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 20
    sget-object v6, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Attempting to load credentials from well known file: %s"

    new-array v9, v5, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 22
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/j;->i(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    .line 25
    invoke-static {v3, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/AccessControlException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    if-eqz v3, :cond_5

    .line 26
    :goto_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_4
    nop

    if-eqz v3, :cond_5

    goto :goto_5

    .line 27
    :cond_5
    :goto_6
    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/j;->o(Lcom/google/auth/oauth2/GoogleCredentials;)V

    goto :goto_8

    :catch_5
    move-exception p1

    .line 28
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Error reading credential file from location %s: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 29
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 30
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_7
    if-eqz v3, :cond_6

    .line 31
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 32
    :cond_6
    throw p1

    :cond_7
    :goto_8
    if-nez v0, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/google/auth/oauth2/j;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/google/auth/oauth2/j;->k()Z

    move-result v1

    if-nez v1, :cond_8

    .line 34
    sget-object v0, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Attempting to load credentials from GAE 7 Standard"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/google/auth/oauth2/j;->l()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    .line 36
    sget-object v0, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Attempting to load credentials from Cloud Shell"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/google/auth/oauth2/j;->m()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    :cond_9
    if-nez v0, :cond_a

    .line 38
    sget-object v0, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Attempting to load credentials from GCE"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/j;->n(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private final f()Ljava/io/File;
    .locals 4

    const-string v0, "os.name"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/auth/oauth2/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CLOUDSDK_CONFIG"

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "windows"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "gcloud"

    if-ltz v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    const-string v1, "APPDATA"

    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "user.home"

    invoke-virtual {p0, v3, v1}, Lcom/google/auth/oauth2/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".config"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .line 9
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v2, "application_default_credentials.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private j()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.appengine.api.utils.SystemProperty"

    .line 1
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/j;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "environment"

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "value"

    new-array v5, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    .line 7
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "Unexpected error trying to determine if runnning on Google App Engine: %s"

    .line 9
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    return v0
.end method

.method private k()Z
    .locals 3

    const-string v0, "GOOGLE_APPLICATION_CREDENTIALS_SKIP_APP_ENGINE"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "true"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private l()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/j;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/auth/oauth2/j;->j()Z

    move-result v0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/google/auth/oauth2/j;->b:Z

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Lcom/google/auth/oauth2/b;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/auth/oauth2/b;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method private m()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    const-string v0, "DEVSHELL_CLIENT_PORT"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/auth/oauth2/CloudShellCredentials;->create(I)Lcom/google/auth/oauth2/CloudShellCredentials;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final n(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/j;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1, p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->runningOnComputeEngine(Ls5/b;Lcom/google/auth/oauth2/j;)Z

    move-result v0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/google/auth/oauth2/j;->c:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->newBuilder()Lcom/google/auth/oauth2/ComputeEngineCredentials$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->g(Ls5/b;)Lcom/google/auth/oauth2/ComputeEngineCredentials$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->f()Lcom/google/auth/oauth2/ComputeEngineCredentials;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private o(Lcom/google/auth/oauth2/GoogleCredentials;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/UserCredentials;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/auth/oauth2/UserCredentials;

    .line 2
    invoke-virtual {p1}, Lcom/google/auth/oauth2/UserCredentials;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "764086051850-6qr4p6gpi6hn506pt8ejuq83di341hur.apps.googleusercontent.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SUPPRESS_GCLOUD_CREDS_WARNING"

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/google/auth/oauth2/j;->h:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Your application has authenticated using end user credentials from Google Cloud SDK. We recommend that most server applications use service accounts instead. If your application continues to use end user credentials from Cloud SDK, you might receive a \"quota exceeded\" or \"API not enabled\" error. For more information about service accounts, see https://cloud.google.com/docs/authentication/."

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method final b(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/j;->a:Lcom/google/auth/oauth2/GoogleCredentials;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/j;->c(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/j;->a:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/auth/oauth2/j;->a:Lcom/google/auth/oauth2/GoogleCredentials;

    if-eqz p1, :cond_1

    .line 5
    monitor-exit p0

    return-object p1

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The Application Default Credentials are not available. They are available if running in Google Compute Engine. Otherwise, the environment variable %s must be defined pointing to a file defining the credentials. See %s for more information."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GOOGLE_APPLICATION_CREDENTIALS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "https://developers.google.com/accounts/docs/application-default-credentials"

    aput-object v3, v1, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method protected h()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/auth/oauth2/j;->e:Ljava/lang/String;

    const-string v1, "1.7"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/auth/oauth2/j;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
