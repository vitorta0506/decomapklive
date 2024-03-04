.class public final Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:D

.field private f:D

.field private g:J

.field private h:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;-><init>()V

    return-void
.end method

.method private b0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private e0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->h:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private g0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private h0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->Z()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->Y()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->Y()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    const-class v2, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->g0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->e0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->d0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->b0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->Y()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$a;)V

    .line 2
    iget-wide v1, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->e:D

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$402(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;D)D

    .line 3
    iget-wide v1, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->f:D

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$502(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;D)D

    .line 4
    iget-wide v1, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->g:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$602(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;J)J

    .line 5
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->e0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$702(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 6
    invoke-static {v0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$700(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->g0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$802(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 8
    invoke-static {v0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$800(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getDefaultInstance()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->X()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->X()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->Z()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->a0()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->a0()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->k0(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

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

    check-cast p2, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->k0(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->k0(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getDefaultInstance()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getCpuUtilization()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getCpuUtilization()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->m0(D)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getMemUtilization()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getMemUtilization()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->o0(D)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getRps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->getRps()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->q0(J)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    .line 8
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->b0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 9
    invoke-static {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$900(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 11
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->d0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$1000(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 14
    invoke-static {p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;->access$1100(Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    return-object p1
.end method

.method public m0(D)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->e:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->Z()Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    return-object p1
.end method

.method public o0(D)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->f:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(J)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->g:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/github/xds/data/orca/v3/OrcaLoadReport$b;

    move-result-object p1

    return-object p1
.end method
