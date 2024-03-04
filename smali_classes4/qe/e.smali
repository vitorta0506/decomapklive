.class public final Lqe/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe/e$a;
    }
.end annotation


# static fields
.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Lokio/ByteString;

.field private static final j:Lokio/ByteString;

.field private static final k:Lokio/ByteString;

.field private static final l:Lokio/ByteString;

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lqe/o;

.field private final b:Lcom/squareup/okhttp/internal/framed/a;

.field private c:Lqe/g;

.field private d:Lcom/squareup/okhttp/internal/framed/b;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "connection"

    .line 1
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lqe/e;->e:Lokio/ByteString;

    const-string v1, "host"

    .line 2
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lqe/e;->f:Lokio/ByteString;

    const-string v2, "keep-alive"

    .line 3
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lqe/e;->g:Lokio/ByteString;

    const-string v3, "proxy-connection"

    .line 4
    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    sput-object v3, Lqe/e;->h:Lokio/ByteString;

    const-string/jumbo v4, "transfer-encoding"

    .line 5
    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    sput-object v4, Lqe/e;->i:Lokio/ByteString;

    const-string/jumbo v5, "te"

    .line 6
    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    sput-object v5, Lqe/e;->j:Lokio/ByteString;

    const-string v6, "encoding"

    .line 7
    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    sput-object v6, Lqe/e;->k:Lokio/ByteString;

    const-string/jumbo v7, "upgrade"

    .line 8
    invoke-static {v7}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    sput-object v7, Lqe/e;->l:Lokio/ByteString;

    const/16 v8, 0xb

    new-array v9, v8, [Lokio/ByteString;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    const/4 v12, 0x2

    aput-object v2, v9, v12

    const/4 v13, 0x3

    aput-object v3, v9, v13

    const/4 v14, 0x4

    aput-object v4, v9, v14

    .line 9
    sget-object v15, Lcom/squareup/okhttp/internal/framed/c;->e:Lokio/ByteString;

    const/4 v8, 0x5

    aput-object v15, v9, v8

    sget-object v16, Lcom/squareup/okhttp/internal/framed/c;->f:Lokio/ByteString;

    const/16 v17, 0x6

    aput-object v16, v9, v17

    sget-object v18, Lcom/squareup/okhttp/internal/framed/c;->g:Lokio/ByteString;

    const/16 v19, 0x7

    aput-object v18, v9, v19

    sget-object v20, Lcom/squareup/okhttp/internal/framed/c;->h:Lokio/ByteString;

    const/16 v14, 0x8

    aput-object v20, v9, v14

    sget-object v22, Lcom/squareup/okhttp/internal/framed/c;->i:Lokio/ByteString;

    const/16 v23, 0x9

    aput-object v22, v9, v23

    sget-object v24, Lcom/squareup/okhttp/internal/framed/c;->j:Lokio/ByteString;

    const/16 v25, 0xa

    aput-object v24, v9, v25

    invoke-static {v9}, Lcom/squareup/okhttp/internal/i;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lqe/e;->m:Ljava/util/List;

    new-array v9, v8, [Lokio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/16 v21, 0x4

    aput-object v4, v9, v21

    .line 10
    invoke-static {v9}, Lcom/squareup/okhttp/internal/i;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lqe/e;->n:Ljava/util/List;

    const/16 v9, 0xe

    new-array v9, v9, [Lokio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    aput-object v5, v9, v21

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v19

    aput-object v15, v9, v14

    aput-object v16, v9, v23

    aput-object v18, v9, v25

    const/16 v15, 0xb

    aput-object v20, v9, v15

    const/16 v15, 0xc

    aput-object v22, v9, v15

    const/16 v15, 0xd

    aput-object v24, v9, v15

    .line 11
    invoke-static {v9}, Lcom/squareup/okhttp/internal/i;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lqe/e;->o:Ljava/util/List;

    new-array v9, v14, [Lokio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/4 v0, 0x4

    aput-object v5, v9, v0

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v19

    .line 12
    invoke-static {v9}, Lcom/squareup/okhttp/internal/i;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lqe/e;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lqe/o;Lcom/squareup/okhttp/internal/framed/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqe/e;->a:Lqe/o;

    .line 3
    iput-object p2, p0, Lqe/e;->b:Lcom/squareup/okhttp/internal/framed/a;

    return-void
.end method

.method static synthetic a(Lqe/e;)Lqe/o;
    .locals 0

    iget-object p0, p0, Lqe/e;->a:Lqe/o;

    return-object p0
.end method

.method public static b(Lcom/squareup/okhttp/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lqe/k;->c(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->h:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/i;->i(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    .line 9
    sget-object v4, Lqe/e;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    new-instance v4, Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;)",
            "Lcom/squareup/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/framed/c;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/framed/c;->a:Lokio/ByteString;

    .line 4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/okhttp/internal/framed/c;

    iget-object v5, v5, Lcom/squareup/okhttp/internal/framed/c;->b:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Lcom/squareup/okhttp/internal/framed/c;->d:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_1

    .line 6
    :cond_0
    sget-object v6, Lqe/e;->p:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqe/n;->a(Ljava/lang/String;)Lqe/n;

    move-result-object p0

    .line 9
    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lqe/n;->b:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lqe/n;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;)",
            "Lcom/squareup/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "HTTP/1.1"

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    .line 3
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/okhttp/internal/framed/c;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/framed/c;->a:Lokio/ByteString;

    .line 4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/okhttp/internal/framed/c;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/framed/c;->b:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 5
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 6
    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 8
    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 9
    sget-object v10, Lcom/squareup/okhttp/internal/framed/c;->d:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v3, v8

    goto :goto_2

    .line 10
    :cond_1
    sget-object v10, Lcom/squareup/okhttp/internal/framed/c;->j:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v8

    goto :goto_2

    .line 11
    :cond_2
    sget-object v10, Lqe/e;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 12
    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :cond_3
    :goto_2
    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqe/n;->a(Ljava/lang/String;)Lqe/n;

    move-result-object p0

    .line 14
    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lqe/n;->b:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lqe/n;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/squareup/okhttp/Request;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lqe/k;->c(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->j:Lokio/ByteString;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->i:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/i;->i(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcom/squareup/okhttp/internal/framed/c;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/c;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 10
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    .line 11
    sget-object v6, Lqe/e;->m:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 14
    new-instance v7, Lcom/squareup/okhttp/internal/framed/c;

    invoke-direct {v7, v5, v6}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 15
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 16
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/okhttp/internal/framed/c;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/framed/c;->a:Lokio/ByteString;

    invoke-virtual {v8, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 17
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/okhttp/internal/framed/c;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/framed/c;->b:Lokio/ByteString;

    invoke-virtual {v8}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lqe/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    new-instance v8, Lcom/squareup/okhttp/internal/framed/c;

    invoke-direct {v8, v5, v6}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/b;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/b;->q()Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/b;->q()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    return-void
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lqe/e$a;

    iget-object v1, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/b;->r()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lqe/e$a;-><init>(Lqe/e;Lokio/Source;)V

    .line 2
    new-instance v1, Lqe/j;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lqe/j;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lqe/e;->b:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->M()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/b;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqe/e;->d(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/b;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqe/e;->e(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setHttpEngine(Lqe/g;)V
    .locals 0

    iput-object p1, p0, Lqe/e;->c:Lqe/g;

    return-void
.end method

.method public writeRequestBody(Lqe/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/b;->q()Lokio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqe/l;->b(Lokio/Sink;)V

    return-void
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lqe/e;->c:Lqe/g;

    invoke-virtual {v0}, Lqe/g;->C()V

    .line 3
    iget-object v0, p0, Lqe/e;->c:Lqe/g;

    invoke-virtual {v0, p1}, Lqe/g;->q(Lcom/squareup/okhttp/Request;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lqe/e;->b:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->M()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lqe/e;->b(Lcom/squareup/okhttp/Request;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqe/e;->f(Lcom/squareup/okhttp/Request;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Lqe/e;->b:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/squareup/okhttp/internal/framed/a;->T(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/b;

    move-result-object p1

    iput-object p1, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    .line 6
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/b;->u()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lqe/e;->c:Lqe/g;

    iget-object v0, v0, Lqe/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 7
    iget-object p1, p0, Lqe/e;->d:Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/b;->A()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lqe/e;->c:Lqe/g;

    iget-object v0, v0, Lqe/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method
