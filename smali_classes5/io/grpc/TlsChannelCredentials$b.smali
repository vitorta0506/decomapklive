.class public final Lio/grpc/TlsChannelCredentials$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/TlsChannelCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:[B

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private f:[B

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/TlsChannelCredentials$a;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/grpc/TlsChannelCredentials$b;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/TlsChannelCredentials$b;->a:Z

    return p0
.end method

.method static synthetic b(Lio/grpc/TlsChannelCredentials$b;)[B
    .locals 0

    iget-object p0, p0, Lio/grpc/TlsChannelCredentials$b;->b:[B

    return-object p0
.end method

.method static synthetic c(Lio/grpc/TlsChannelCredentials$b;)[B
    .locals 0

    iget-object p0, p0, Lio/grpc/TlsChannelCredentials$b;->c:[B

    return-object p0
.end method

.method static synthetic d(Lio/grpc/TlsChannelCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/TlsChannelCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/grpc/TlsChannelCredentials$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/TlsChannelCredentials$b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/TlsChannelCredentials$b;)[B
    .locals 0

    iget-object p0, p0, Lio/grpc/TlsChannelCredentials$b;->f:[B

    return-object p0
.end method

.method static synthetic g(Lio/grpc/TlsChannelCredentials$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/TlsChannelCredentials$b;->g:Ljava/util/List;

    return-object p0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$b;->b:[B

    .line 2
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$b;->c:[B

    .line 3
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$b;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$b;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public h()Lio/grpc/e;
    .locals 1

    new-instance v0, Lio/grpc/TlsChannelCredentials;

    invoke-direct {v0, p0}, Lio/grpc/TlsChannelCredentials;-><init>(Lio/grpc/TlsChannelCredentials$b;)V

    return-object v0
.end method

.method public varargs j([Ljavax/net/ssl/KeyManager;)Lio/grpc/TlsChannelCredentials$b;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$b;->i()V

    .line 5
    iput-object p1, p0, Lio/grpc/TlsChannelCredentials$b;->e:Ljava/util/List;

    return-object p0
.end method
