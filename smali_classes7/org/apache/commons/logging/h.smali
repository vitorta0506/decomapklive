.class public abstract Lorg/apache/commons/logging/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/PrintStream;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/ClassLoader;

.field protected static d:Ljava/util/Hashtable;

.field protected static volatile e:Lorg/apache/commons/logging/h;

.field static synthetic f:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    const-string v1, "org.apache.commons.logging.LogFactory"

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/apache/commons/logging/h;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/logging/h;->h(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/h;->c:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "BOOTLOADER"

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UNKNOWN"

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[LogFactory from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/h;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lorg/apache/commons/logging/h;->t()Ljava/io/PrintStream;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/h;->a:Ljava/io/PrintStream;

    .line 5
    sget-object v0, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-static {v1}, Lorg/apache/commons/logging/h;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    :cond_2
    invoke-static {v0}, Lorg/apache/commons/logging/h;->v(Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Lorg/apache/commons/logging/h;->e()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/h;->d:Ljava/util/Hashtable;

    .line 7
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BOOTSTRAP COMPLETED"

    .line 8
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/h;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 1
    sput-object p1, Lorg/apache/commons/logging/h;->e:Lorg/apache/commons/logging/h;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lorg/apache/commons/logging/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5

    const-string v0, "org.apache.commons.logging.LogFactory"

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    sget-object v2, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Loaded class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " from classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Factory class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " loaded from classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " does not extend \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    if-nez v3, :cond_2

    invoke-static {v0}, Lorg/apache/commons/logging/h;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' as loaded by this classloader."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    const-string v2, "[BAD CL TREE] "

    .line 7
    invoke-static {v2, p1}, Lorg/apache/commons/logging/h;->x(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 9
    :catch_0
    :try_start_1
    sget-object v2, Lorg/apache/commons/logging/h;->c:Ljava/lang/ClassLoader;

    if-ne p1, v2, :cond_9

    .line 10
    invoke-static {v1}, Lorg/apache/commons/logging/h;->s(Ljava/lang/Class;)Z

    move-result p1

    .line 11
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The application has specified that a custom LogFactory implementation "

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "should be used but Class \'"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\' cannot be converted to \'"

    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    sget-object p0, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    if-nez p0, :cond_4

    invoke-static {v0}, Lorg/apache/commons/logging/h;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'. "

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_5

    const-string p0, "The conflict is caused by the presence of multiple LogFactory classes "

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "in incompatible classloaders. "

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "Background can be found in http://commons.apache.org/logging/tech.html. "

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "If you have not explicitly specified a custom LogFactory then it is likely "

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "that the container has set one without your knowledge. "

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "In this case, consider using the commons-logging-adapters.jar file or "

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "specifying the standard LogFactory from the command line. "

    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string p0, "Please check the custom implementation. "

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string p0, "Help can be found @http://commons.apache.org/logging/troubleshooting.html."

    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 29
    :cond_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v2

    .line 30
    sget-object v3, Lorg/apache/commons/logging/h;->c:Ljava/lang/ClassLoader;

    if-ne p1, v3, :cond_9

    .line 31
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 32
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\' cannot be loaded"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " via classloader "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " - it depends on some other class that cannot be found."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 33
    :cond_7
    throw v2

    :catch_2
    move-exception v2

    .line 34
    sget-object v3, Lorg/apache/commons/logging/h;->c:Ljava/lang/ClassLoader;

    if-ne p1, v3, :cond_9

    .line 35
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 36
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to locate any class called \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\' via classloader "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 37
    :cond_8
    throw v2

    .line 38
    :cond_9
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 39
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to load factory class via classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " - trying the classloader associated with this LogFactory."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 40
    :cond_a
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/logging/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 42
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Unable to create LogFactory instance."

    .line 43
    invoke-static {p1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_d

    .line 44
    sget-object p1, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    if-nez p1, :cond_c

    invoke-static {v0}, Lorg/apache/commons/logging/h;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/apache/commons/logging/h;->f:Ljava/lang/Class;

    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 45
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v0, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 46
    :cond_d
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {p1, p0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static final e()Ljava/util/Hashtable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.commons.logging.LogFactory.HashtableImpl"

    .line 1
    invoke-static {v1, v0}, Lorg/apache/commons/logging/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    const-string v2, "org.apache.commons.logging.impl.WeakHashtable"

    if-nez v1, :cond_0

    move-object v1, v2

    .line 2
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 4
    invoke-static {v3}, Lorg/apache/commons/logging/h;->r(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v1

    const-string v2, "[ERROR] LogFactory: Load of custom hashtable failed"

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v2}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :cond_3
    return-object v0
.end method

.method protected static f()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static g(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/apache/commons/logging/h;->e:Lorg/apache/commons/logging/h;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/apache/commons/logging/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/logging/h;

    return-object p0
.end method

.method protected static h(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to get classloader for class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "\' due to security restrictions - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 4
    :cond_0
    throw v0
.end method

.method private static final i(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 14

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/logging/h;->p(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    move-object v3, v0

    move-wide v4, v1

    .line 2
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    .line 4
    invoke-static {v6}, Lorg/apache/commons/logging/h;->n(Ljava/net/URL;)Ljava/util/Properties;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_1

    const-string v8, "priority"

    const-string v9, " with priority "

    const-string v10, "\'"

    if-nez v0, :cond_4

    .line 5
    :try_start_2
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    move-wide v4, v3

    goto :goto_1

    :cond_2
    move-wide v4, v1

    .line 7
    :goto_1
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[LOOKUP] Properties file found at \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v3, v6

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-object v3, v6

    move-object v0, v7

    goto/16 :goto_3

    .line 9
    :cond_4
    :try_start_3
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 10
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_5
    move-wide v11, v1

    :goto_2
    const-string v8, "[LOOKUP] Properties file at \'"

    cmpl-double v13, v11, v4

    if-lez v13, :cond_7

    .line 11
    :try_start_4
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 12
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v8, " overrides file at \'"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_6
    move-object v3, v6

    move-object v0, v7

    move-wide v4, v11

    goto/16 :goto_0

    .line 13
    :cond_7
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 14
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v6, " does not override file at \'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto :goto_3

    :catch_2
    move-object v3, v0

    .line 15
    :goto_3
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "SecurityException thrown while trying to find/read config files."

    .line 16
    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 17
    :cond_8
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result p0

    if-eqz p0, :cond_a

    if-nez v0, :cond_9

    .line 18
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[LOOKUP] No properties file of name \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_9
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[LOOKUP] Properties file of name \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' found at \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-object v0
.end method

.method private static j()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/logging/b;

    invoke-direct {v0}, Lorg/apache/commons/logging/b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static k()Lorg/apache/commons/logging/h;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    const-string v0, "META-INF/services/org.apache.commons.logging.LogFactory"

    const-string v1, "]. Trying alternative implementations..."

    const-string v2, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    const-string v3, "org.apache.commons.logging.LogFactory"

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/h;->j()Ljava/lang/ClassLoader;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Context classloader is null."

    .line 3
    invoke-static {v5}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {v4}, Lorg/apache/commons/logging/h;->g(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    .line 5
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    const-string v6, "[LOOKUP] "

    .line 7
    invoke-static {v6, v4}, Lorg/apache/commons/logging/h;->x(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :cond_2
    const-string v6, "commons-logging.properties"

    .line 8
    invoke-static {v4, v6}, Lorg/apache/commons/logging/h;->i(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "use_tccl"

    .line 9
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 10
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 11
    sget-object v7, Lorg/apache/commons/logging/h;->c:Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_3
    move-object v7, v4

    .line 12
    :goto_0
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 13
    invoke-static {v8}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_4
    const/4 v8, 0x0

    .line 14
    :try_start_0
    invoke-static {v3, v8}, Lorg/apache/commons/logging/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 15
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 16
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "[LOOKUP] Creating an instance of LogFactory class \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\' as specified by system property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 17
    :cond_5
    invoke-static {v8, v7, v4}, Lorg/apache/commons/logging/h;->y(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;

    move-result-object v5

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    .line 19
    invoke-static {v8}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/h;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] as specified by a system property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 22
    :cond_7
    throw v0

    :catch_1
    move-exception v8

    .line 23
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 24
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/logging/h;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_8
    :goto_1
    if-nez v5, :cond_c

    .line 25
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 26
    invoke-static {v8}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 27
    :cond_9
    :try_start_1
    invoke-static {v4, v0}, Lorg/apache/commons/logging/h;->o(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v8, :cond_b

    .line 28
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 29
    :catch_2
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    if-eqz v8, :cond_c

    const-string v9, ""

    .line 32
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 33
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 34
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "[LOOKUP]  Creating an instance of LogFactory class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " as specified by file \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' which was present in the path of the context classloader."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 35
    :cond_a
    invoke-static {v8, v7, v4}, Lorg/apache/commons/logging/h;->y(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    .line 36
    :cond_b
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    .line 37
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 38
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 39
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_c
    :goto_3
    if-nez v5, :cond_11

    if-eqz v6, :cond_10

    .line 40
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    .line 41
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 42
    :cond_d
    invoke-virtual {v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 43
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 45
    :cond_e
    invoke-static {v0, v7, v4}, Lorg/apache/commons/logging/h;->y(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    .line 46
    :cond_f
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    .line 47
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_4

    .line 48
    :cond_10
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    .line 49
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_11
    :goto_4
    if-nez v5, :cond_13

    .line 50
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    .line 51
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 52
    :cond_12
    sget-object v0, Lorg/apache/commons/logging/h;->c:Ljava/lang/ClassLoader;

    const-string v1, "org.apache.commons.logging.impl.LogFactoryImpl"

    invoke-static {v1, v0, v4}, Lorg/apache/commons/logging/h;->y(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;

    move-result-object v5

    :cond_13
    if-eqz v5, :cond_14

    .line 53
    invoke-static {v4, v5}, Lorg/apache/commons/logging/h;->b(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/h;)V

    if-eqz v6, :cond_14

    .line 54
    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 55
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 56
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    invoke-virtual {v6, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/logging/h;->A(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_14
    return-object v5
.end method

.method public static m(Ljava/lang/Class;)Lorg/apache/commons/logging/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/logging/h;->k()Lorg/apache/commons/logging/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/logging/h;->l(Ljava/lang/Class;)Lorg/apache/commons/logging/a;

    move-result-object p0

    return-object p0
.end method

.method private static n(Ljava/net/URL;)Ljava/util/Properties;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/logging/f;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/f;-><init>(Ljava/net/URL;)V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method private static o(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/commons/logging/d;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/d;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method private static p(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/logging/e;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/e;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Ljava/util/Enumeration;

    return-object p0
.end method

.method private static q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/logging/g;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected static r(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0
.end method

.method private static s(Ljava/lang/Class;)Z
    .locals 4

    const-string v0, "[CUSTOM LOG FACTORY] "

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    .line 2
    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v2}, Lorg/apache/commons/logging/h;->x(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "org.apache.commons.logging.h"

    .line 4
    invoke-static {v3, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " implements LogFactory but was loaded by an incompatible classloader."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " does not implement LogFactory."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    .line 8
    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method private static t()Ljava/io/PrintStream;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.commons.logging.diagnostics.dest"

    .line 1
    invoke-static {v1, v0}, Lorg/apache/commons/logging/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "STDOUT"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0

    :cond_1
    const-string v2, "STDERR"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0

    .line 6
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 7
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method protected static u()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/logging/h;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static v(Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[ENV] Extension directories (java.ext.dir): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "java.ext.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[ENV] Application classpath (java.class.path): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "[ENV] Security setting prevent interrogation of system classpaths."

    .line 4
    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/logging/h;->h(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[ENV] Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " was loaded via classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[ENV] Ancestry of classloader which loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/logging/h;->x(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void

    .line 9
    :catch_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[ENV] Security forbids determining the classloader for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    return-void
.end method

.method private static final w(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/logging/h;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lorg/apache/commons/logging/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lorg/apache/commons/logging/h;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lorg/apache/commons/logging/h;->a:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method private static x(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " == \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    .line 5
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "ClassLoader tree:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne p1, v0, :cond_3

    const-string p0, " (SYSTEM) "

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, " --> "

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_2

    const-string p0, "BOOT"

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    const-string p0, " --> SECRET"

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 13
    :catch_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "Security forbids determining the system classloader."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    return-void
.end method

.method protected static y(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/logging/c;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/c;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lorg/apache/commons/logging/LogConfigurationException;

    if-eqz p1, :cond_1

    .line 3
    check-cast p0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 4
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "An error occurred while loading the factory class:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 6
    :cond_0
    throw p0

    .line 7
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/h;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Created object "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " to manage classloader "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/commons/logging/h;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/h;->w(Ljava/lang/String;)V

    .line 9
    :cond_2
    check-cast p0, Lorg/apache/commons/logging/h;

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract A(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract l(Ljava/lang/Class;)Lorg/apache/commons/logging/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method
