.class final Lcom/google/protobuf/GeneratedMessage$b;
.super Lcom/google/protobuf/GeneratedMessage$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/google/protobuf/l1;ILjava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/protobuf/l1;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/l1;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$b;->b:Lcom/google/protobuf/l1;

    iput p2, p0, Lcom/google/protobuf/GeneratedMessage$b;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$h;-><init>(Lcom/google/protobuf/GeneratedMessage$a;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$b;->b:Lcom/google/protobuf/l1;

    invoke-interface {v0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->l()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/GeneratedMessage$b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method
