.class public final Lcom/google/protobuf/Field$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/protobuf/Field$b;",
        ">;",
        "Lcom/google/protobuf/n0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$b;",
            "Lcom/google/protobuf/d2;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/Field$b;->f:I

    .line 5
    iput v0, p0, Lcom/google/protobuf/Field$b;->g:I

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->i:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->j:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->o:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->p:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/Field$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Field$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/Field$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Field$b;->f:I

    .line 14
    iput p1, p0, Lcom/google/protobuf/Field$b;->g:I

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/google/protobuf/Field$b;->i:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/Field$b;->j:Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/Field$b;->o:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/protobuf/Field$b;->p:Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Field$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/Field$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/Field$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/Field$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/Field$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$b;",
            "Lcom/google/protobuf/d2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/Field$b;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/Field$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->Z()Lcom/google/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->Y()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->Y()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/c3;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/protobuf/Field;

    const-class v2, Lcom/google/protobuf/Field$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$b;

    return-object p1
.end method

.method public X()Lcom/google/protobuf/Field;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->Y()Lcom/google/protobuf/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/protobuf/Field;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/Field;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Field;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/Field$a;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/Field$b;->f:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$302(Lcom/google/protobuf/Field;I)I

    .line 3
    iget v1, p0, Lcom/google/protobuf/Field$b;->g:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$402(Lcom/google/protobuf/Field;I)I

    .line 4
    iget v1, p0, Lcom/google/protobuf/Field$b;->h:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$502(Lcom/google/protobuf/Field;I)I

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$602(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$702(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/google/protobuf/Field$b;->k:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$802(Lcom/google/protobuf/Field;I)I

    .line 8
    iget-boolean v1, p0, Lcom/google/protobuf/Field$b;->l:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$902(Lcom/google/protobuf/Field;Z)Z

    .line 9
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 10
    iget v1, p0, Lcom/google/protobuf/Field$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/google/protobuf/Field$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/Field$b;->e:I

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1002(Lcom/google/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1002(Lcom/google/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1102(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/Field$b;->p:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1202(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/protobuf/Field$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field$b;

    return-object v0
.end method

.method public b0()Lcom/google/protobuf/Field;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->X()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->X()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->Z()Lcom/google/protobuf/Field$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Field$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Field;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->h0(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$b;

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

    check-cast p2, Lcom/google/protobuf/Field;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$b;->h0(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->b0()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->b0()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/c3;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$300(Lcom/google/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getKindValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$b;->m0(I)Lcom/google/protobuf/Field$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$400(Lcom/google/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getCardinalityValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$b;->k0(I)Lcom/google/protobuf/Field$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$b;->n0(I)Lcom/google/protobuf/Field$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$600(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->i:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$700(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->j:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$b;->o0(I)Lcom/google/protobuf/Field$b;

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$b;->q0(Z)Lcom/google/protobuf/Field$b;

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    if-nez v0, :cond_9

    .line 19
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 20
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 22
    iget v0, p0, Lcom/google/protobuf/Field$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/Field$b;->e:I

    goto :goto_0

    .line 23
    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/Field$b;->a0()V

    .line 24
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 26
    :cond_9
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    .line 30
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field$b;->m:Ljava/util/List;

    .line 31
    iget v1, p0, Lcom/google/protobuf/Field$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/Field$b;->e:I

    .line 32
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_a

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/Field$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/Field$b;->n:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 35
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 36
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1100(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->o:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 38
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 39
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1200(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$b;->p:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 41
    :cond_e
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;

    .line 42
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Field$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Field;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/Field;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->h0(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$b;

    return-object p1
.end method

.method public k0(I)Lcom/google/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Field$b;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$b;

    return-object p1
.end method

.method public m0(I)Lcom/google/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Field$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$b;->Z()Lcom/google/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lcom/google/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Field$b;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(I)Lcom/google/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Field$b;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Z)Lcom/google/protobuf/Field$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/Field$b;->l:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method
