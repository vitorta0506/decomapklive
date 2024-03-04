.class public Lsi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsi/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lsi/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsi/d;

    invoke-direct {v0}, Lsi/d;-><init>()V

    sput-object v0, Lsi/d;->a:Lsi/d;

    .line 2
    new-instance v0, Lsi/d;

    invoke-direct {v0}, Lsi/d;-><init>()V

    sput-object v0, Lsi/d;->b:Lsi/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Protocol version"

    .line 1
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lsi/d;->e(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2f

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 7
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 9
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-object p1
.end method

.method protected b(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/c;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lorg/apache/http/k;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lorg/apache/http/k;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x20

    .line 11
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected c(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/l;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lorg/apache/http/l;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lorg/apache/http/l;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lorg/apache/http/l;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lsi/d;->e(Lorg/apache/http/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 7
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 9
    invoke-interface {p2}, Lorg/apache/http/l;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsi/d;->a(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    return-void
.end method

.method protected d(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/m;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lorg/apache/http/m;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsi/d;->e(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-interface {p2}, Lorg/apache/http/m;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 5
    invoke-interface {p2}, Lorg/apache/http/m;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lsi/d;->a(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x20

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 7
    invoke-interface {p2}, Lorg/apache/http/m;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected e(Lorg/apache/http/ProtocolVersion;)I
    .locals 0

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public f(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/c;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Header"

    .line 1
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lorg/apache/http/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lorg/apache/http/b;

    invoke-interface {p2}, Lorg/apache/http/b;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lsi/d;->i(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lsi/d;->b(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/c;)V

    :goto_0
    return-object p1
.end method

.method public g(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/l;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Request line"

    .line 1
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lsi/d;->i(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lsi/d;->c(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/l;)V

    return-object p1
.end method

.method public h(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/m;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Status line"

    .line 1
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lsi/d;->i(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lsi/d;->d(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/m;)V

    return-object p1
.end method

.method protected i(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    :goto_0
    return-object p1
.end method
