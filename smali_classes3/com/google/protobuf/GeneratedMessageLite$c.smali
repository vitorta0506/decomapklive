.class final Lcom/google/protobuf/GeneratedMessageLite$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/o0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/o0$c<",
        "Lcom/google/protobuf/GeneratedMessageLite$c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/google/protobuf/WireFormat$FieldType;

.field final d:Z

.field final e:Z


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageLite$c;)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->b:I

    iget p1, p1, Lcom/google/protobuf/GeneratedMessageLite$c;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public b()Lcom/google/protobuf/u0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/u0$d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->a:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$c;->a(Lcom/google/protobuf/GeneratedMessageLite$c;)I

    move-result p1

    return p1
.end method

.method public e0()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->c:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->b:I

    return v0
.end method

.method public isPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->e:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->d:Z

    return v0
.end method

.method public n(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1$a;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$a;

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$a;->v(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public s0()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$c;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method
