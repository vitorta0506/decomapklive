.class public abstract Lcom/google/protobuf/GeneratedMessageV3$d;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;",
        "BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageV3$d<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "TBuilderType;>;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/protobuf/o0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0$b<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method static synthetic W(Lcom/google/protobuf/GeneratedMessageV3$d;)Lcom/google/protobuf/o0;
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$d;->Y()Lcom/google/protobuf/o0;

    move-result-object p0

    return-object p0
.end method

.method private Y()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->p()Lcom/google/protobuf/o0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/o0$b;->b()Lcom/google/protobuf/o0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->I()Lcom/google/protobuf/o0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    :cond_0
    return-void
.end method

.method private d0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$d;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;

    move-result-object p1

    return-object p1
.end method

.method public F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/x;->i(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->F0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/l1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$d;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$d;->b0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;

    move-result-object p1

    return-object p1
.end method

.method public X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$d;->d0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$d;->Z()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->a(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3$d;

    return-object p1
.end method

.method protected final a0(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$d;->Z()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->h(Lcom/google/protobuf/o0;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    :cond_0
    return-void
.end method

.method public b0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$d;->d0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$d;->Z()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3$d;

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$d;->b0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;

    move-result-object p1

    return-object p1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->B(Lcom/google/protobuf/GeneratedMessageV3$b;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/o0$b;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$d;->d0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->p()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 7
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$d;->d0(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$d;->e:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->g(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method
