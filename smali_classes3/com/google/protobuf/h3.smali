.class public final Lcom/google/protobuf/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/o1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/h3$d;,
        Lcom/google/protobuf/h3$c;,
        Lcom/google/protobuf/h3$b;
    }
.end annotation


# static fields
.field private static final b:Lcom/google/protobuf/h3;

.field private static final c:Lcom/google/protobuf/h3$d;


# instance fields
.field private final a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/h3$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/h3;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/protobuf/h3;-><init>(Ljava/util/TreeMap;)V

    sput-object v0, Lcom/google/protobuf/h3;->b:Lcom/google/protobuf/h3;

    .line 2
    new-instance v0, Lcom/google/protobuf/h3$d;

    invoke-direct {v0}, Lcom/google/protobuf/h3$d;-><init>()V

    sput-object v0, Lcom/google/protobuf/h3;->c:Lcom/google/protobuf/h3$d;

    return-void
.end method

.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/h3$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/h3;)Ljava/util/TreeMap;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    return-object p0
.end method

.method public static d()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/google/protobuf/h3;->b:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static h()Lcom/google/protobuf/h3$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$b;->a()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/h3$b;->l(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/h3$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/google/protobuf/h3;->b:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/h3;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    check-cast p1, Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Lcom/google/protobuf/h3$d;
    .locals 1

    sget-object v0, Lcom/google/protobuf/h3;->c:Lcom/google/protobuf/h3$d;

    return-object v0
.end method

.method public g()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/h3$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/h3$c;->r(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3;->e()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParserForType()Lcom/google/protobuf/e2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3;->f()Lcom/google/protobuf/h3$d;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/h3$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/h3$c;->q(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Lcom/google/protobuf/h3$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/protobuf/h3$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/h3$c;->v(ILcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method n(Lcom/google/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->z()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/h3$c;->a(Lcom/google/protobuf/h3$c;ILcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/h3$c;->a(Lcom/google/protobuf/h3$c;ILcom/google/protobuf/Writer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3;->j()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method o(Lcom/google/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->z()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/h3$c;->y(ILcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/h3$c;->y(ILcom/google/protobuf/Writer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3;->l()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->j0([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$h;->b()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$h;->a()Lcom/google/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/TextFormat;->o()Lcom/google/protobuf/TextFormat$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$b;->k(Lcom/google/protobuf/h3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/h3$c;->x(ILcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->h0(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->e0()V

    return-void
.end method
