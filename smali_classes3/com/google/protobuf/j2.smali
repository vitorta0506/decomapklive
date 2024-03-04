.class final Lcom/google/protobuf/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/m1;


# instance fields
.field private final a:Lcom/google/protobuf/o1;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/Object;

.field private final d:I


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/j2;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/google/protobuf/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j2;->a:Lcom/google/protobuf/o1;

    return-object v0
.end method

.method public c()Lcom/google/protobuf/ProtoSyntax;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/j2;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    :goto_0
    return-object v0
.end method

.method d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j2;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j2;->b:Ljava/lang/String;

    return-object v0
.end method
