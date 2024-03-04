.class public final Lcom/google/api/Distribution$BucketOptions$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/Distribution$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/Distribution$BucketOptions$b;",
        ">;",
        "Lcom/google/api/Distribution$c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/Distribution$BucketOptions$Linear;",
            "Lcom/google/api/Distribution$BucketOptions$Linear$b;",
            "Lcom/google/api/Distribution$BucketOptions$e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/Distribution$BucketOptions$Exponential;",
            "Lcom/google/api/Distribution$BucketOptions$Exponential$b;",
            "Lcom/google/api/Distribution$BucketOptions$d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/Distribution$BucketOptions$Explicit;",
            "Lcom/google/api/Distribution$BucketOptions$Explicit$b;",
            "Lcom/google/api/Distribution$BucketOptions$c;",
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
    iput v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    .line 5
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    .line 8
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->access$4300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->Z()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->Y()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->Y()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/v;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Distribution$BucketOptions;

    const-class v2, Lcom/google/api/Distribution$BucketOptions$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$b;

    return-object p1
.end method

.method public X()Lcom/google/api/Distribution$BucketOptions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->Y()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/Distribution$BucketOptions;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/Distribution$BucketOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/Distribution$BucketOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Distribution$a;)V

    .line 2
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 11
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4502(Lcom/google/api/Distribution$BucketOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    :goto_2
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions;->access$4602(Lcom/google/api/Distribution$BucketOptions;I)I

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$b;

    return-object v0
.end method

.method public a0()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->X()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->X()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$b;

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

    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->Z()Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->i:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 5
    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->newBuilder(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Y()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_1
    iget v2, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    if-ne v2, v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 13
    :goto_1
    iput v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    return-object p0
.end method

.method public e0(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->h:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    .line 5
    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->newBuilder(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Exponential$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Exponential$b;->d0(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Exponential$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Exponential$b;->Y()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_1
    iget v2, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    if-ne v2, v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->h:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 13
    :goto_1
    iput v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/api/Distribution$b;->a:[I

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$BucketOptions$b;->d0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$b;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$BucketOptions$b;->e0(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$b;

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions;->getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$BucketOptions$b;->j0(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$b;

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/google/api/Distribution$BucketOptions;->access$4700(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->a0()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->a0()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/v;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->access$4800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

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

    check-cast p2, Lcom/google/api/Distribution$BucketOptions;
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
    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/Distribution$BucketOptions;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->g:Lcom/google/protobuf/q2;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    .line 5
    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->newBuilder(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Linear$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Linear$b;->d0(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Linear$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Linear$b;->Y()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$b;->f:Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_1
    iget v2, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    if-ne v2, v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$b;->g:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 13
    :goto_1
    iput v1, p0, Lcom/google/api/Distribution$BucketOptions$b;->e:I

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$b;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$b;

    return-object p1
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$b;->Z()Lcom/google/api/Distribution$BucketOptions$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    return-object p1
.end method
