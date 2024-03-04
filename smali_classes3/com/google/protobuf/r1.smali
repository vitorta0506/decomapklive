.class public interface abstract Lcom/google/protobuf/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/p1;


# virtual methods
.method public abstract getAllFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/l1;
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
.end method

.method public abstract getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract getUnknownFields()Lcom/google/protobuf/h3;
.end method

.method public abstract hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
.end method
