.class public final Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/reflection/v1alpha/ServerReflectionRequest;",
            "Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;",
            "Lio/grpc/reflection/v1alpha/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/reflection/v1alpha/FileDescriptorResponse;",
            "Lio/grpc/reflection/v1alpha/FileDescriptorResponse$b;",
            "Lio/grpc/reflection/v1alpha/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;",
            "Lio/grpc/reflection/v1alpha/ExtensionNumberResponse$b;",
            "Lio/grpc/reflection/v1alpha/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/reflection/v1alpha/ListServiceResponse;",
            "Lio/grpc/reflection/v1alpha/ListServiceResponse$b;",
            "Lio/grpc/reflection/v1alpha/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/reflection/v1alpha/ErrorResponse;",
            "Lio/grpc/reflection/v1alpha/ErrorResponse$b;",
            "Lio/grpc/reflection/v1alpha/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->g:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->g:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/reflection/v1alpha/ServerReflectionResponse$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/reflection/v1alpha/ServerReflectionResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->Z()Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/reflection/v1alpha/f;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    const-class v2, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->i0(Lcom/google/protobuf/l1;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    return-object p1
.end method

.method public X()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/reflection/v1alpha/ServerReflectionResponse$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$402(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    .line 6
    :goto_0
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    :goto_1
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    :goto_2
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 15
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 16
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_6
    :goto_3
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 19
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 20
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 21
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_8
    :goto_4
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$702(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;I)I

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    return-object v0
.end method

.method public a0()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
    .locals 1

    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->X()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->X()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

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

    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->Z()Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->k:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;

    invoke-static {v0}, Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;->newBuilder(Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;)Lio/grpc/reflection/v1alpha/ExtensionNumberResponse$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/reflection/v1alpha/ExtensionNumberResponse$b;->h0(Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;)Lio/grpc/reflection/v1alpha/ExtensionNumberResponse$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ExtensionNumberResponse$b;->Y()Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->k:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    return-object p0
.end method

.method public e0(Lio/grpc/reflection/v1alpha/ErrorResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->m:Lcom/google/protobuf/q2;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/reflection/v1alpha/ErrorResponse;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ErrorResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ErrorResponse;

    invoke-static {v0}, Lio/grpc/reflection/v1alpha/ErrorResponse;->newBuilder(Lio/grpc/reflection/v1alpha/ErrorResponse;)Lio/grpc/reflection/v1alpha/ErrorResponse$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/reflection/v1alpha/ErrorResponse$b;->g0(Lio/grpc/reflection/v1alpha/ErrorResponse;)Lio/grpc/reflection/v1alpha/ErrorResponse$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ErrorResponse$b;->Y()Lio/grpc/reflection/v1alpha/ErrorResponse;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->m:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/reflection/v1alpha/FileDescriptorResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/reflection/v1alpha/FileDescriptorResponse;->getDefaultInstance()Lio/grpc/reflection/v1alpha/FileDescriptorResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/FileDescriptorResponse;

    invoke-static {v0}, Lio/grpc/reflection/v1alpha/FileDescriptorResponse;->newBuilder(Lio/grpc/reflection/v1alpha/FileDescriptorResponse;)Lio/grpc/reflection/v1alpha/FileDescriptorResponse$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/reflection/v1alpha/FileDescriptorResponse$b;->h0(Lio/grpc/reflection/v1alpha/FileDescriptorResponse;)Lio/grpc/reflection/v1alpha/FileDescriptorResponse$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/FileDescriptorResponse$b;->Y()Lio/grpc/reflection/v1alpha/FileDescriptorResponse;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->a0()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->a0()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/f;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->j0(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

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

    check-cast p2, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
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
    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->j0(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    :cond_1
    throw p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->j0(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ServerReflectionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getValidHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$400(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->hasOriginalRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getOriginalRequest()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->l0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getMessageResponseCase()Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getErrorResponse()Lio/grpc/reflection/v1alpha/ErrorResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e0(Lio/grpc/reflection/v1alpha/ErrorResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getListServicesResponse()Lio/grpc/reflection/v1alpha/ListServiceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->k0(Lio/grpc/reflection/v1alpha/ListServiceResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getAllExtensionNumbersResponse()Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->d0(Lio/grpc/reflection/v1alpha/ExtensionNumberResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->getFileDescriptorResponse()Lio/grpc/reflection/v1alpha/FileDescriptorResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->g0(Lio/grpc/reflection/v1alpha/FileDescriptorResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    .line 12
    :goto_0
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse;->access$800(Lio/grpc/reflection/v1alpha/ServerReflectionResponse;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lio/grpc/reflection/v1alpha/ListServiceResponse;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->l:Lcom/google/protobuf/q2;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/reflection/v1alpha/ListServiceResponse;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ListServiceResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ListServiceResponse;

    invoke-static {v0}, Lio/grpc/reflection/v1alpha/ListServiceResponse;->newBuilder(Lio/grpc/reflection/v1alpha/ListServiceResponse;)Lio/grpc/reflection/v1alpha/ListServiceResponse$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/reflection/v1alpha/ListServiceResponse$b;->i0(Lio/grpc/reflection/v1alpha/ListServiceResponse;)Lio/grpc/reflection/v1alpha/ListServiceResponse$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ListServiceResponse$b;->Y()Lio/grpc/reflection/v1alpha/ListServiceResponse;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->l:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->e:I

    return-object p0
.end method

.method public l0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->newBuilder(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h:Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->Z()Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    return-object p1
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->i0(Lcom/google/protobuf/l1;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$c;

    move-result-object p1

    return-object p1
.end method
