.class Lcom/google/protobuf/GeneratedMessageV3$e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Descriptors$b;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Lcom/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$b;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$i;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->p()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Case"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p4, p1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 11
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clear"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageV3$b;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$b;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    :cond_0
    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, p1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u0$c;

    invoke-interface {p1}, Lcom/google/protobuf/u0$c;->getNumber()I

    move-result p1

    if-lez p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$b;->j(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public b(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    :cond_0
    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u0$c;

    invoke-interface {p1}, Lcom/google/protobuf/u0$c;->getNumber()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$b;->j(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public c(Lcom/google/protobuf/GeneratedMessageV3$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$b;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u0$c;

    invoke-interface {p1}, Lcom/google/protobuf/u0$c;->getNumber()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public d(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->e:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u0$c;

    invoke-interface {p1}, Lcom/google/protobuf/u0$c;->getNumber()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
