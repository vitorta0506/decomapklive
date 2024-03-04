.class public final Lio/grpc/TlsChannelCredentials;
.super Lio/grpc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/TlsChannelCredentials$b;,
        Lio/grpc/TlsChannelCredentials$Feature;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:[B

.field private final c:[B

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final f:[B

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/TlsChannelCredentials$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/e;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->a(Lio/grpc/TlsChannelCredentials$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/TlsChannelCredentials;->a:Z

    .line 3
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->b(Lio/grpc/TlsChannelCredentials$b;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->b:[B

    .line 4
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->c(Lio/grpc/TlsChannelCredentials$b;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->c:[B

    .line 5
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->d(Lio/grpc/TlsChannelCredentials$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->e(Lio/grpc/TlsChannelCredentials$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->e:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->f(Lio/grpc/TlsChannelCredentials$b;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->f:[B

    .line 8
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$b;->g(Lio/grpc/TlsChannelCredentials$b;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/TlsChannelCredentials;->g:Ljava/util/List;

    return-void
.end method

.method public static a()Lio/grpc/e;
    .locals 1

    invoke-static {}, Lio/grpc/TlsChannelCredentials;->i()Lio/grpc/TlsChannelCredentials$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials$b;->h()Lio/grpc/e;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lio/grpc/TlsChannelCredentials$b;
    .locals 2

    new-instance v0, Lio/grpc/TlsChannelCredentials$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/TlsChannelCredentials$b;-><init>(Lio/grpc/TlsChannelCredentials$a;)V

    return-object v0
.end method

.method private static j(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->b:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->f:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->g:Ljava/util/List;

    return-object v0
.end method

.method public h(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lio/grpc/TlsChannelCredentials;->a:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->FAKE:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsChannelCredentials;->j(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->f:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->c:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->e:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->MTLS:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsChannelCredentials;->j(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->e:Ljava/util/List;

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 7
    :cond_3
    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsChannelCredentials;->j(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V

    .line 8
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
