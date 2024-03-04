.class final Lcom/snap/kit/common/model/OsType$b;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/OsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snap/kit/common/model/OsType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snap/kit/common/model/OsType;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/common/model/OsType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/snap/kit/common/model/OsType$a;

    invoke-direct {v0}, Lcom/snap/kit/common/model/OsType$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 8
    invoke-virtual {v0}, Lcom/snap/kit/common/model/OsType$a;->a()Lcom/snap/kit/common/model/OsType;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/common/model/OsType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public final c(Lcom/snap/kit/common/model/OsType;)I
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    return p1
.end method

.method public final d(Lcom/snap/kit/common/model/OsType;)Lcom/snap/kit/common/model/OsType;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/snap/kit/common/model/OsType;->newBuilder()Lcom/snap/kit/common/model/OsType$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 3
    invoke-virtual {p1}, Lcom/snap/kit/common/model/OsType$a;->a()Lcom/snap/kit/common/model/OsType;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/OsType$b;->a(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/common/model/OsType;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/snap/kit/common/model/OsType;

    invoke-virtual {p0, p1, p2}, Lcom/snap/kit/common/model/OsType$b;->b(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/common/model/OsType;)V

    return-void
.end method

.method public final bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/snap/kit/common/model/OsType;

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/OsType$b;->c(Lcom/snap/kit/common/model/OsType;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/snap/kit/common/model/OsType;

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/OsType$b;->d(Lcom/snap/kit/common/model/OsType;)Lcom/snap/kit/common/model/OsType;

    move-result-object p1

    return-object p1
.end method
