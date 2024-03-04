.class public abstract Lorg/apache/http/impl/auth/RFC2617Scheme;
.super Lorg/apache/http/impl/auth/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x277d161e1fc570cfL


# instance fields
.field private transient credentialsCharset:Ljava/nio/charset/Charset;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    sget-object v0, Lorg/apache/http/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/http/impl/auth/a;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lorg/apache/http/a;->b:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/a;-><init>(Lorg/apache/http/auth/ChallengeState;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 3
    sget-object p1, Lorg/apache/http/a;->b:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvi/c;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/apache/http/a;->b:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/auth/ChallengeState;

    iput-object p1, p0, Lorg/apache/http/impl/auth/a;->challengeState:Lorg/apache/http/auth/ChallengeState;

    return-void
.end method

.method private readObjectNoData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/auth/a;->challengeState:Lorg/apache/http/auth/ChallengeState;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract synthetic authenticate(Loi/b;Lorg/apache/http/i;)Lorg/apache/http/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method getCredentialsCharset(Lorg/apache/http/i;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/apache/http/h;->getParams()Lorg/apache/http/params/c;

    move-result-object p1

    const-string v0, "http.auth.credential-charset"

    invoke-interface {p1, v0}, Lorg/apache/http/params/c;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getCredentialsCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCredentialsCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/http/a;->b:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract synthetic getSchemeName()Ljava/lang/String;
.end method

.method public abstract synthetic isComplete()Z
.end method

.method public abstract synthetic isConnectionBased()Z
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 1
    sget-object p3, Lsi/c;->c:Lsi/c;

    .line 2
    new-instance v0, Lsi/g;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lsi/g;-><init>(II)V

    .line 3
    invoke-interface {p3, p1, v0}, Lsi/f;->a(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)[Lorg/apache/http/d;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 5
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p1, p3

    .line 6
    iget-object v1, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/http/d;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/d;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
