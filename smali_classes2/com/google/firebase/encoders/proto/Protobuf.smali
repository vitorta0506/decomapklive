.class public interface abstract annotation Lcom/google/firebase/encoders/proto/Protobuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/firebase/encoders/proto/Protobuf;
        intEncoding = .enum Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    }
.end annotation


# virtual methods
.method public abstract intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
.end method

.method public abstract tag()I
.end method
