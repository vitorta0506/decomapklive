.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$d;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Lcom/google/protobuf/ByteString;

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/lang/Object;

.field private m:Lcom/google/protobuf/ByteString;

.field private n:Lcom/google/protobuf/ByteString;

.field private o:Lcom/google/protobuf/ByteString;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    .line 5
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->h:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->l:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->m:Lcom/google/protobuf/ByteString;

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->n:Lcom/google/protobuf/ByteString;

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->o:Lcom/google/protobuf/ByteString;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    .line 15
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->h:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->l:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->m:Lcom/google/protobuf/ByteString;

    .line 18
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->n:Lcom/google/protobuf/ByteString;

    .line 19
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->o:Lcom/google/protobuf/ByteString;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    .line 22
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->z()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->x0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->h:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 4
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i:J

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;J)J

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 5
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->j:J

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;J)J

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 6
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->k:J

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34502(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;J)J

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    .line 7
    :cond_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->l:Ljava/lang/Object;

    invoke-static {v0, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    .line 8
    :cond_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->m:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    .line 9
    :cond_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->n:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    or-int/lit16 v2, v2, 0x80

    .line 10
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->o:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    .line 13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 14
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35002(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/util/List;)Ljava/util/List;

    .line 15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    .line 17
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 18
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35102(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/util/List;)Ljava/util/List;

    .line 19
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_c

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35202(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_c
    invoke-static {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35302(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;I)I

    .line 26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;I)I

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->x0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->y()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasConst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getConst()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->k0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasLen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getLen()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->r0(J)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMinLen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMinLen()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->t0(J)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasMaxLen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getMaxLen()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->s0(J)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPattern()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 12
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$34600(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->l:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 14
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasPrefix()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getPrefix()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->u0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 16
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasSuffix()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getSuffix()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->v0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 18
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->hasContains()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getContains()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->l0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 20
    :cond_8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 21
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    .line 23
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    goto :goto_0

    .line 24
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->a0()V

    .line 25
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->p:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 27
    :cond_a
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35100(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35100(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    .line 30
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    goto :goto_1

    .line 31
    :cond_b
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->b0()V

    .line 32
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35100(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 34
    :cond_c
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;->c:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getWellKnownCase()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$WellKnownCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_2

    .line 35
    :cond_d
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv6()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    goto :goto_2

    .line 36
    :cond_e
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIpv4()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    goto :goto_2

    .line 37
    :cond_f
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->getIp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->n0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 38
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;->access$35500(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->h:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->o:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    const/16 v0, 0xb

    .line 1
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    const/16 v0, 0xc

    .line 1
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->e:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(J)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->i:J

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(J)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->k:J

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(J)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->j:J

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->m:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method

.method public v0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->g:I

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->n:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final x0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$BytesRules$b;

    move-result-object p1

    return-object p1
.end method
