.class final Lcom/google/protobuf/Descriptors$c$a;
.super Lcom/google/protobuf/Descriptors$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$c$a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$c$a;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$c$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/google/protobuf/l1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->y()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
