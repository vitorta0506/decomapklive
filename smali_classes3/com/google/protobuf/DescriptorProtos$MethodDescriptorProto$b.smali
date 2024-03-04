.class public final Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$n;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;",
            "Lcom/google/protobuf/DescriptorProtos$o;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->f:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private d0()Lcom/google/protobuf/q2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;",
            "Lcom/google/protobuf/DescriptorProtos$o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/q2;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->b0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/q2;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j:Lcom/google/protobuf/q2;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j:Lcom/google/protobuf/q2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->d0()Lcom/google/protobuf/q2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->Z()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->Y()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->Y()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->h()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->o0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    return-object p1
.end method

.method public X()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->Y()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/DescriptorProtos$a;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->f:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14202(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14302(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14402(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j:Lcom/google/protobuf/q2;

    if-nez v3, :cond_3

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14502(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14502(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    :goto_1
    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 9
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->k:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14602(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_5
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 10
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->l:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14702(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    or-int/lit8 v2, v2, 0x20

    .line 11
    :cond_6
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14802(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    return-object v0
.end method

.method public a0()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public b0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/q2;->d()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->X()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->X()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->Z()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->o0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h0(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

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

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h0(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->a0()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->a0()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->g()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14200(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->f:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14300(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14400(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->l0(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->n0(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 20
    :cond_6
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->h0(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->o0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 9
    :goto_1
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    return-object p1
.end method

.method public l0(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->k:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->Z()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->e:I

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->l:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method
