.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;",
        ">;",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->f:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->f:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$d;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3102(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    .line 7
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3202(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3202(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;Ljava/util/List;)Ljava/util/List;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3500()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

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

    check-cast p2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->b0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->b0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3100(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    if-nez v0, :cond_3

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 9
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->a0()V

    .line 11
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    .line 17
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g:Ljava/util/List;

    .line 18
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->e:I

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 21
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 22
    :cond_6
    :goto_1
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;->access$3400(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    return-object p1
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type$AbstractType$b;

    move-result-object p1

    return-object p1
.end method
