.class Lcom/google/protobuf/GeneratedMessageV3$e$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$e$h$b;,
        Lcom/google/protobuf/GeneratedMessageV3$e$h$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final b:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field protected final c:Z

.field protected final d:Z

.field protected final e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 12
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
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$i;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, v0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->c:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->r()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-eq v1, v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->y()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v10, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->d:Z

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e$h$b;

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lcom/google/protobuf/GeneratedMessageV3$e$h$b;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V

    move-object v2, p1

    .line 8
    iput-object v2, v0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->b:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 9
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageV3$e$h$b;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->a:Ljava/lang/Class;

    .line 10
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3$e$h;->k(Lcom/google/protobuf/GeneratedMessageV3$e$h$b;)Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    return-void
.end method

.method static k(Lcom/google/protobuf/GeneratedMessageV3$e$h$b;)Lcom/google/protobuf/GeneratedMessageV3$e$h$a;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->d(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/google/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->d:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->c(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result p1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->b:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h;->a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->b:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->f(Lcom/google/protobuf/GeneratedMessageV3;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lcom/google/protobuf/GeneratedMessageV3$b;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->d:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->e(Lcom/google/protobuf/GeneratedMessageV3$b;)I

    move-result p1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->b:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h;->b(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->b:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e$h;->e:Lcom/google/protobuf/GeneratedMessageV3$e$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h$a;->h(Lcom/google/protobuf/GeneratedMessageV3$b;)Z

    move-result p1

    return p1
.end method

.method public i(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e$h;->a(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

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
