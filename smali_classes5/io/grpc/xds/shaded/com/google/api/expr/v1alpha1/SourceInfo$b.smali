.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;",
        ">;",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/e;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/google/protobuf/u0$g;

.field private i:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
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
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->g:Ljava/lang/Object;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1600()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->f:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->g:Ljava/lang/Object;

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1600()Lcom/google/protobuf/u0$g;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1700(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private e0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private g0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private h0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->i:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private i0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->d0()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h0()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e0()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->g0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$502(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$602(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    .line 7
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$702(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$802(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 9
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$800(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->d0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$902(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 11
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$900(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->b0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->b0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->u:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

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

    check-cast p2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->getSyntaxVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$500(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$600(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->g:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$700(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$700(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    .line 11
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e:I

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->a0()V

    .line 13
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->h:Lcom/google/protobuf/u0$g;

    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$700(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/u0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_4
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->g0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1000(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 18
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->e0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1100(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 21
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->access$1200(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    return-object p1
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    return-object p1
.end method
