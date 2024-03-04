.class public abstract Lcom/google/protobuf/Extension;
.super Lcom/google/protobuf/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Extension$MessageType;,
        Lcom/google/protobuf/Extension$ExtensionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/o1;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/c0<",
        "TContainingType;TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/c0;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract c()Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end method

.method protected abstract d()Lcom/google/protobuf/Extension$ExtensionType;
.end method

.method public abstract e()Lcom/google/protobuf/l1;
.end method

.method protected abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method
