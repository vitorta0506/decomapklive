.class public interface abstract Lcom/google/protobuf/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/p1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o1$a;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "+",
            "Lcom/google/protobuf/o1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lcom/google/protobuf/o1$a;
.end method

.method public abstract toBuilder()Lcom/google/protobuf/o1$a;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toByteString()Lcom/google/protobuf/ByteString;
.end method

.method public abstract writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
