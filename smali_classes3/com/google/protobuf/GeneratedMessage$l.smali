.class public Lcom/google/protobuf/GeneratedMessage$l;
.super Lcom/google/protobuf/Extension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/l1;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/Extension<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/protobuf/GeneratedMessage$j;

.field private final b:Ljava/lang/Class;

.field private final c:Lcom/google/protobuf/l1;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Lcom/google/protobuf/Extension$ExtensionType;


# direct methods
.method constructor <init>(Lcom/google/protobuf/GeneratedMessage$j;Ljava/lang/Class;Lcom/google/protobuf/l1;Lcom/google/protobuf/Extension$ExtensionType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/Extension;-><init>()V

    .line 2
    const-class v0, Lcom/google/protobuf/l1;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad messageDefaultInstance for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$l;->a:Lcom/google/protobuf/GeneratedMessage$j;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$l;->b:Ljava/lang/Class;

    .line 8
    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessage$l;->c:Lcom/google/protobuf/l1;

    .line 9
    const-class p1, Lcom/google/protobuf/h2;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 10
    const-class p3, Lcom/google/protobuf/Descriptors$e;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "valueOf"

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$l;->d:Ljava/lang/reflect/Method;

    new-array p1, v0, [Ljava/lang/Class;

    const-string p3, "getValueDescriptor"

    .line 11
    invoke-static {p2, p3, p1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$l;->e:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$l;->d:Ljava/lang/reflect/Method;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$l;->e:Ljava/lang/reflect/Method;

    .line 14
    :goto_1
    iput-object p4, p0, Lcom/google/protobuf/GeneratedMessage$l;->f:Lcom/google/protobuf/Extension$ExtensionType;

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$l;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$l;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->a:Lcom/google/protobuf/GeneratedMessage$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/GeneratedMessage$j;->a()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d()Lcom/google/protobuf/Extension$ExtensionType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->f:Lcom/google/protobuf/Extension$ExtensionType;

    return-object v0
.end method

.method public e()Lcom/google/protobuf/l1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->c:Lcom/google/protobuf/l1;

    return-object v0
.end method

.method protected f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$l;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/protobuf/GeneratedMessage$e;->a:[I

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->c:Lcom/google/protobuf/l1;

    invoke-interface {v0}, Lcom/google/protobuf/l1;->newBuilderForType()Lcom/google/protobuf/l1$a;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/l1;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/l1$a;->P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/l1$a;->build()Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->a:Lcom/google/protobuf/GeneratedMessage$j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$l$a;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage$l$a;-><init>(Lcom/google/protobuf/GeneratedMessage$l;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$l;->a:Lcom/google/protobuf/GeneratedMessage$j;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
