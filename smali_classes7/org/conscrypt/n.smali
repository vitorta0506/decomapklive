.class Lorg/conscrypt/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/n$b;,
        Lorg/conscrypt/n$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final b:Lorg/conscrypt/n$c;

.field static final c:Lorg/conscrypt/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/conscrypt/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/n;->a:Ljava/util/logging/Logger;

    const-string v0, "os.name"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->b(Ljava/lang/String;)Lorg/conscrypt/n$c;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/n;->b:Lorg/conscrypt/n$c;

    const-string v0, "os.arch"

    .line 3
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->a(Ljava/lang/String;)Lorg/conscrypt/n$b;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/n;->c:Lorg/conscrypt/n$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lorg/conscrypt/n$b;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/conscrypt/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^(x8664|amd64|ia32e|em64t|x64)$"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lorg/conscrypt/n$b;->a:Lorg/conscrypt/n$b;

    return-object p0

    :cond_0
    const-string v0, "^(x8632|x86|i[3-6]86|ia32|x32)$"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lorg/conscrypt/n$b;->b:Lorg/conscrypt/n$b;

    return-object p0

    :cond_1
    const-string v0, "^(ia64|itanium64)$"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p0, Lorg/conscrypt/n$b;->c:Lorg/conscrypt/n$b;

    return-object p0

    :cond_2
    const-string v0, "^(sparc|sparc32)$"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object p0, Lorg/conscrypt/n$b;->d:Lorg/conscrypt/n$b;

    return-object p0

    :cond_3
    const-string v0, "^(sparcv9|sparc64)$"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object p0, Lorg/conscrypt/n$b;->e:Lorg/conscrypt/n$b;

    return-object p0

    :cond_4
    const-string v0, "^(arm|arm32)$"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object p0, Lorg/conscrypt/n$b;->f:Lorg/conscrypt/n$b;

    return-object p0

    :cond_5
    const-string v0, "aarch64"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    sget-object p0, Lorg/conscrypt/n$b;->g:Lorg/conscrypt/n$b;

    return-object p0

    :cond_6
    const-string v0, "^(ppc|ppc32)$"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    sget-object p0, Lorg/conscrypt/n$b;->h:Lorg/conscrypt/n$b;

    return-object p0

    :cond_7
    const-string v0, "ppc64"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    sget-object p0, Lorg/conscrypt/n$b;->i:Lorg/conscrypt/n$b;

    return-object p0

    :cond_8
    const-string v0, "ppc64le"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    sget-object p0, Lorg/conscrypt/n$b;->j:Lorg/conscrypt/n$b;

    return-object p0

    :cond_9
    const-string v0, "s390"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    sget-object p0, Lorg/conscrypt/n$b;->k:Lorg/conscrypt/n$b;

    return-object p0

    :cond_a
    const-string v0, "s390x"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 25
    sget-object p0, Lorg/conscrypt/n$b;->l:Lorg/conscrypt/n$b;

    return-object p0

    .line 26
    :cond_b
    sget-object p0, Lorg/conscrypt/n$b;->m:Lorg/conscrypt/n$b;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lorg/conscrypt/n$c;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/conscrypt/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aix"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lorg/conscrypt/n$c;->a:Lorg/conscrypt/n$c;

    return-object p0

    :cond_0
    const-string v0, "hpux"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lorg/conscrypt/n$c;->b:Lorg/conscrypt/n$c;

    return-object p0

    :cond_1
    const-string v0, "os400"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_2
    sget-object p0, Lorg/conscrypt/n$c;->c:Lorg/conscrypt/n$c;

    return-object p0

    :cond_3
    const-string v0, "linux"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p0, Lorg/conscrypt/n$c;->d:Lorg/conscrypt/n$c;

    return-object p0

    :cond_4
    const-string v0, "macosx"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "osx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "freebsd"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    sget-object p0, Lorg/conscrypt/n$c;->f:Lorg/conscrypt/n$c;

    return-object p0

    :cond_6
    const-string v0, "openbsd"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    sget-object p0, Lorg/conscrypt/n$c;->g:Lorg/conscrypt/n$c;

    return-object p0

    :cond_7
    const-string v0, "netbsd"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    sget-object p0, Lorg/conscrypt/n$c;->h:Lorg/conscrypt/n$c;

    return-object p0

    :cond_8
    const-string v0, "solaris"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "sunos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    const-string v0, "windows"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 20
    sget-object p0, Lorg/conscrypt/n$c;->j:Lorg/conscrypt/n$c;

    return-object p0

    .line 21
    :cond_a
    sget-object p0, Lorg/conscrypt/n$c;->k:Lorg/conscrypt/n$c;

    return-object p0

    .line 22
    :cond_b
    :goto_0
    sget-object p0, Lorg/conscrypt/n$c;->i:Lorg/conscrypt/n$c;

    return-object p0

    .line 23
    :cond_c
    :goto_1
    sget-object p0, Lorg/conscrypt/n$c;->e:Lorg/conscrypt/n$c;

    return-object p0
.end method

.method static c()Ljava/io/File;
    .locals 4

    :try_start_0
    const-string v0, "org.conscrypt.tmpdir"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "java.io.tmpdir"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {}, Lorg/conscrypt/n;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TEMP"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "USERPROFILE"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\AppData\\Local\\Temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/n;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\Local Settings\\Temp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_4
    const-string v0, "TMPDIR"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/n;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    return-object v0

    :catch_0
    nop

    .line 9
    :cond_5
    invoke-static {}, Lorg/conscrypt/n;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    new-instance v0, Ljava/io/File;

    const-string v1, "C:\\Windows\\Temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_6
    new-instance v0, Ljava/io/File;

    const-string v1, "/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    sget-object v1, Lorg/conscrypt/n;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to get the temporary directory; falling back to: {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static d()Z
    .locals 2

    sget-object v0, Lorg/conscrypt/n;->b:Lorg/conscrypt/n$c;

    sget-object v1, Lorg/conscrypt/n$c;->e:Lorg/conscrypt/n$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static e()Z
    .locals 2

    sget-object v0, Lorg/conscrypt/n;->b:Lorg/conscrypt/n$c;

    sget-object v1, Lorg/conscrypt/n$c;->j:Lorg/conscrypt/n$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^a-z0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method
