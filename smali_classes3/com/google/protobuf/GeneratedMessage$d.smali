.class final Lcom/google/protobuf/GeneratedMessage$d;
.super Lcom/google/protobuf/GeneratedMessage$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/GeneratedMessage$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$d;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessage$d;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$h;-><init>(Lcom/google/protobuf/GeneratedMessage$a;)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$d;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "descriptor"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load descriptors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid descriptor class name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
