.class public final Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/z0;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$b;",
            "Lcom/google/protobuf/DescriptorProtos$j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/compiler/PluginProtos$Version;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/compiler/PluginProtos$Version;",
            "Lcom/google/protobuf/compiler/PluginProtos$Version$b;",
            "Lcom/google/protobuf/compiler/PluginProtos$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->g:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 9
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->g:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/q2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/compiler/PluginProtos$Version;",
            "Lcom/google/protobuf/compiler/PluginProtos$Version$b;",
            "Lcom/google/protobuf/compiler/PluginProtos$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/q2;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->d0()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/q2;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k:Lcom/google/protobuf/q2;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k:Lcom/google/protobuf/q2;

    return-object v0
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$b;",
            "Lcom/google/protobuf/DescriptorProtos$j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e0()Lcom/google/protobuf/q2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->Z()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->Y()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->Y()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->d()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->l0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    return-object p1
.end method

.method public X()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->Y()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/compiler/PluginProtos$a;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    .line 4
    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1902(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->g:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2002(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    if-nez v3, :cond_3

    .line 8
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 10
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2102(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2102(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2202(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$Version;

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/compiler/PluginProtos$Version;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2202(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$Version;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 16
    :cond_5
    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2302(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->X()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->X()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->Z()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/protobuf/compiler/PluginProtos$Version;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/q2;->d()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$Version;

    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->g0()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->g0()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/compiler/PluginProtos$Version;->newBuilder(Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$Version$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/compiler/PluginProtos$Version$b;->g0(Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$Version$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$Version$b;->Y()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j:Lcom/google/protobuf/compiler/PluginProtos$Version;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 9
    :goto_1
    iget p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->m0(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/o1;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->m0(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public l0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->m0(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1900(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1900(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    .line 5
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->a0()V

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->f:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1900(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2000(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->g:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_5

    .line 14
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    goto :goto_1

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->b0()V

    .line 19
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 21
    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h:Ljava/util/List;

    .line 26
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->e:I

    .line 27
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 30
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->j0(Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    .line 32
    :cond_9
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2500(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->Z()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    return-object p1
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->l0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$b;

    move-result-object p1

    return-object p1
.end method
