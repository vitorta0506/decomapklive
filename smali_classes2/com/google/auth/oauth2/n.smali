.class Lcom/google/auth/oauth2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/n$a;
    }
.end annotation


# static fields
.field static final a:Ljava/net/URI;

.field static final b:Ljava/net/URI;

.field static final c:Ljava/net/URI;

.field static final d:Lcom/google/api/client/http/s;

.field static final e:Ls5/b;

.field static final f:Lg5/c;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field public static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "https://oauth2.googleapis.com/token"

    .line 1
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/n;->a:Ljava/net/URI;

    const-string v0, "https://oauth2.googleapis.com/revoke"

    .line 2
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/n;->b:Ljava/net/URI;

    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    .line 3
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/n;->c:Ljava/net/URI;

    .line 4
    new-instance v0, Le5/e;

    invoke-direct {v0}, Le5/e;-><init>()V

    sput-object v0, Lcom/google/auth/oauth2/n;->d:Lcom/google/api/client/http/s;

    .line 5
    new-instance v0, Lcom/google/auth/oauth2/n$a;

    invoke-direct {v0}, Lcom/google/auth/oauth2/n$a;-><init>()V

    sput-object v0, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 6
    invoke-static {}, Lh5/a;->m()Lh5/a;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    const-string v0, "%sExpected value %s not found."

    .line 7
    sput-object v0, Lcom/google/auth/oauth2/n;->g:Ljava/lang/String;

    const-string v0, "%sExpected %s value %s of wrong type."

    .line 8
    sput-object v0, Lcom/google/auth/oauth2/n;->h:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x1f4

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x1f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x1ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/auth/oauth2/n;->i:Ljava/util/Set;

    return-void
.end method

.method static a(Lcom/google/api/client/http/j;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Ljava/util/Collection;

    .line 4
    invoke-interface {p0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_2

    .line 2
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    .line 3
    check-cast p0, Ljava/math/BigDecimal;

    .line 4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    return p0

    .line 5
    :cond_0
    instance-of v3, p0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 6
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->h:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string p2, "integer"

    aput-object p2, v4, v0

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_2

    .line 2
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    .line 3
    check-cast p0, Ljava/math/BigDecimal;

    .line 4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide p0

    return-wide p0

    .line 5
    :cond_0
    instance-of v3, p0, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 6
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->h:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string p2, "long"

    aput-object p2, v4, v0

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_1

    .line 2
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 3
    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->h:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string p2, "Map"

    aput-object p2, v4, v0

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_1

    .line 2
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->h:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string p2, "string"

    aput-object p2, v4, v0

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/io/IOException;

    sget-object v3, Lcom/google/auth/oauth2/n;->g:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static f(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/io/c;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 4
    throw p0
.end method
