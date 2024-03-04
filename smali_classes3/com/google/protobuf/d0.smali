.class public Lcom/google/protobuf/d0;
.super Lcom/google/protobuf/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/d0$b;,
        Lcom/google/protobuf/d0$c;
    }
.end annotation


# static fields
.field static final j:Lcom/google/protobuf/d0;


# instance fields
.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/d0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/d0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/d0$b;",
            "Lcom/google/protobuf/d0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/d0$b;",
            "Lcom/google/protobuf/d0$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/d0;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/d0;->j:Lcom/google/protobuf/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/f0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d0;->f:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d0;->g:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d0;->h:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d0;->i:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 6
    sget-object p1, Lcom/google/protobuf/f0;->e:Lcom/google/protobuf/f0;

    invoke-direct {p0, p1}, Lcom/google/protobuf/f0;-><init>(Lcom/google/protobuf/f0;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->f:Ljava/util/Map;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->g:Ljava/util/Map;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->h:Ljava/util/Map;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d0;->i:Ljava/util/Map;

    return-void
.end method

.method private e(Lcom/google/protobuf/d0$c;Lcom/google/protobuf/Extension$ExtensionType;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/google/protobuf/d0$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/d0;->g:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/d0;->i:Ljava/util/Map;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/google/protobuf/d0;->f:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/d0;->h:Ljava/util/Map;

    .line 7
    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/google/protobuf/d0$b;

    iget-object v2, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    iget-object v3, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/d0$b;-><init>(Lcom/google/protobuf/Descriptors$b;I)V

    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p1, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->r()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i()Lcom/google/protobuf/d0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/d0;->j:Lcom/google/protobuf/d0;

    return-object v0
.end method

.method static j(Lcom/google/protobuf/Extension;)Lcom/google/protobuf/d0$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Extension<",
            "**>;)",
            "Lcom/google/protobuf/d0$c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->e()Lcom/google/protobuf/l1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/protobuf/d0$c;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->e()Lcom/google/protobuf/l1;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/protobuf/d0$c;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;Lcom/google/protobuf/d0$a;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/protobuf/d0$c;

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->c()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p0

    invoke-direct {v0, p0, v2, v2}, Lcom/google/protobuf/d0$c;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;Lcom/google/protobuf/d0$a;)V

    return-object v0
.end method

.method public static k()Lcom/google/protobuf/d0;
    .locals 1

    new-instance v0, Lcom/google/protobuf/d0;

    invoke-direct {v0}, Lcom/google/protobuf/d0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public d(Lcom/google/protobuf/Extension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Extension<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->d()Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->d()Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/d0;->j(Lcom/google/protobuf/Extension;)Lcom/google/protobuf/d0$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->d()Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/d0;->e(Lcom/google/protobuf/d0$c;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-void
.end method

.method public f(Lcom/google/protobuf/GeneratedMessage$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d0;->d(Lcom/google/protobuf/Extension;)V

    return-void
.end method

.method public g(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->h(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/d0$c;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d0;->h:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/d0$b;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/d0$b;-><init>(Lcom/google/protobuf/Descriptors$b;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/d0$c;

    return-object p1
.end method
