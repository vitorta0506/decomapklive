.class public abstract Lcom/google/protobuf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/e2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/o1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/e2<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/f0;->b()Lcom/google/protobuf/f0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/c;->o(Lcom/google/protobuf/o1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private o(Lcom/google/protobuf/o1;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/google/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/b;

    invoke-virtual {p1}, Lcom/google/protobuf/b;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/o1;)V

    return-object v0
.end method


# virtual methods
.method public A([BIILcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/c;->F([BIILcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/c;->n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public B([BLcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/protobuf/c;->A([BIILcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/p;->E(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v1, Lcom/google/protobuf/b$a$a;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/b$a$a;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/c;->E(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public D(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/p;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/o1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->a(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public E(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/p;->h(Ljava/io/InputStream;)Lcom/google/protobuf/p;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/o1;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public F([BIILcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/p;->n([BII)Lcom/google/protobuf/p;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1, p4}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/o1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p3, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p1, p3}, Lcom/google/protobuf/p;->a(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public bridge synthetic a([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/c;->z([B)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->s(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/c;->r(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/google/protobuf/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/c;->t(Lcom/google/protobuf/p;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/c;->p(Ljava/io/InputStream;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->y(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g([BLcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->B([BLcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->q(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/c;->v(Ljava/io/InputStream;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->w(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/c;->x(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/io/InputStream;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c;->q(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->C(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/c;->n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c;->s(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->D(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/c;->n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/google/protobuf/p;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/p;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o1;

    invoke-direct {p0, p1}, Lcom/google/protobuf/c;->n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/io/InputStream;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c;->w(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c;->E(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/c;->n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c;->y(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/f0;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/p;->k(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/p;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/o1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->a(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    invoke-direct {p0, p2}, Lcom/google/protobuf/c;->n(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 6
    throw p1
.end method

.method public z([B)Lcom/google/protobuf/o1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/c;->a:Lcom/google/protobuf/f0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c;->B([BLcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object p1

    return-object p1
.end method
