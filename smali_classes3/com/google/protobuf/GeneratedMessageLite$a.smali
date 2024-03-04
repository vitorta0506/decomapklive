.class public abstract Lcom/google/protobuf/GeneratedMessageLite$a;
.super Lcom/google/protobuf/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/b$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Lcom/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected c:Z


# direct methods
.method private y(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/g2;->a()Lcom/google/protobuf/g2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g2;->e(Ljava/lang/Object;)Lcom/google/protobuf/n2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/n2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->o()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->n()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->p()Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic e(Lcom/google/protobuf/b;)Lcom/google/protobuf/b$a;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->t(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$a;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->s()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$a;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l([BII)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$a;->w([BII)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->o()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/b$a;->m(Lcom/google/protobuf/o1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public o()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->i()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Z

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public p()Lcom/google/protobuf/GeneratedMessageLite$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->s()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->j()Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->o()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$a;->v(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;

    return-object v0
.end method

.method protected final q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->r()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Z

    :cond_0
    return-void
.end method

.method protected r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->b(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$a;->y(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    return-void
.end method

.method public s()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->a:Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method protected t(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->v(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/GeneratedMessageLite$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f0;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->q()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/g2;->a()Lcom/google/protobuf/g2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/g2;->e(Ljava/lang/Object;)Lcom/google/protobuf/n2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/q;->Q(Lcom/google/protobuf/p;)Lcom/google/protobuf/q;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lcom/google/protobuf/n2;->i(Ljava/lang/Object;Lcom/google/protobuf/k2;Lcom/google/protobuf/f0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 7
    :cond_0
    throw p1
.end method

.method public v(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->q()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->y(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0
.end method

.method public w([BII)Lcom/google/protobuf/GeneratedMessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/f0;->b()Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/GeneratedMessageLite$a;->x([BIILcom/google/protobuf/f0;)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public x([BIILcom/google/protobuf/f0;)Lcom/google/protobuf/GeneratedMessageLite$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/f0;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->q()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/g2;->a()Lcom/google/protobuf/g2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/g2;->e(Ljava/lang/Object;)Lcom/google/protobuf/n2;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:Lcom/google/protobuf/GeneratedMessageLite;

    add-int v6, p2, p3

    new-instance v7, Lcom/google/protobuf/j$b;

    invoke-direct {v7, p4}, Lcom/google/protobuf/j$b;-><init>(Lcom/google/protobuf/f0;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/protobuf/n2;->j(Ljava/lang/Object;[BIILcom/google/protobuf/j$b;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :catch_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 5
    throw p1
.end method
