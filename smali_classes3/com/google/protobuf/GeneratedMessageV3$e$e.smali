.class Lcom/google/protobuf/GeneratedMessageV3$e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageV3$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$e$e$b;,
        Lcom/google/protobuf/GeneratedMessageV3$e$e$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;

.field protected final b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
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
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$e$e$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageV3$e$e$b;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3
    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageV3$e$e$b;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->a:Ljava/lang/Class;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3$e$e;->l(Lcom/google/protobuf/GeneratedMessageV3$e$e$b;)Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    return-void
.end method

.method static l(Lcom/google/protobuf/GeneratedMessageV3$e$e$b;)Lcom/google/protobuf/GeneratedMessageV3$e$e$a;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->c(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e;->k(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    .line 2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$e$e;->e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->g(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/protobuf/GeneratedMessageV3$b;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e;->a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcom/google/protobuf/l1$a;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->f(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method public m(Lcom/google/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->h(Lcom/google/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/protobuf/GeneratedMessageV3$b;)I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$e;->b:Lcom/google/protobuf/GeneratedMessageV3$e$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$e$a;->d(Lcom/google/protobuf/GeneratedMessageV3$b;)I

    move-result p1

    return p1
.end method
