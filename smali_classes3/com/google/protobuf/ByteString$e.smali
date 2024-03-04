.class final Lcom/google/protobuf/ByteString$e;
.super Lcom/google/protobuf/ByteString$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$j;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 3
    iput p2, p0, Lcom/google/protobuf/ByteString$e;->b:I

    .line 4
    iput p3, p0, Lcom/google/protobuf/ByteString$e;->c:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteAt(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$e;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/ByteString;->checkIndex(II)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ByteString$j;->a:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$e;->b:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected copyToInternal([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$j;->a:[B

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$e;->d()I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected d()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/ByteString$e;->b:I

    return v0
.end method

.method internalByteAt(I)B
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/ByteString$j;->a:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$e;->b:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/ByteString$e;->c:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
