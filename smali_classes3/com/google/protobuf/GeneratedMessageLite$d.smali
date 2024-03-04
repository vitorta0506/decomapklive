.class public Lcom/google/protobuf/GeneratedMessageLite$d;
.super Lcom/google/protobuf/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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


# instance fields
.field final a:Lcom/google/protobuf/o1;

.field final b:Lcom/google/protobuf/GeneratedMessageLite$c;


# virtual methods
.method public b()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->b:Lcom/google/protobuf/GeneratedMessageLite$c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/protobuf/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->a:Lcom/google/protobuf/o1;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->b:Lcom/google/protobuf/GeneratedMessageLite$c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$c;->getNumber()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->b:Lcom/google/protobuf/GeneratedMessageLite$c;

    iget-boolean v0, v0, Lcom/google/protobuf/GeneratedMessageLite$c;->d:Z

    return v0
.end method
