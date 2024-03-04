.class final Lcom/google/protobuf/GeneratedMessage$c;
.super Lcom/google/protobuf/GeneratedMessage$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/google/protobuf/l1;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/protobuf/l1;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/protobuf/l1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$c;->b:Lcom/google/protobuf/l1;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$h;-><init>(Lcom/google/protobuf/GeneratedMessage$a;)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$c;->b:Lcom/google/protobuf/l1;

    invoke-interface {v0}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0
.end method
