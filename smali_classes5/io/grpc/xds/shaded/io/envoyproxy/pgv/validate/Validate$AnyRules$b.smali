.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$b;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Z

.field private g:Lcom/google/protobuf/z0;

.field private h:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 8
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    .line 9
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->L()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->f:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;Z)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    .line 7
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    .line 11
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 12
    invoke-static {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42502(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;I)I

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->K()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->hasRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->getRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->l0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42300(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42300(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    .line 7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->a0()V

    .line 9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42300(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42400(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42400(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    .line 14
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    goto :goto_1

    .line 15
    :cond_4
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->b0()V

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42400(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 18
    :cond_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;->access$42600(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    return-object p1
.end method

.method public l0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->e:I

    .line 2
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->f:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$AnyRules$b;

    move-result-object p1

    return-object p1
.end method
