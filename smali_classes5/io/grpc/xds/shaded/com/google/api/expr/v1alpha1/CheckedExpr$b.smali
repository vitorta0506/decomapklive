.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;",
        ">;",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/a;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/d;",
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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->h0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;-><init>()V

    return-void
.end method

.method private b0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private e0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Reference;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$c;->a:Lcom/google/protobuf/e1;

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
            "Ljava/lang/Long;",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->f:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private h0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->g0()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->d0()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->b0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$a;)V

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->e0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$402(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$400(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 4
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->g0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$502(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 5
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$500(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->g:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$602(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$602(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    .line 9
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->i:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$702(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$702(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->X()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->a0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->a0()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->i:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->newBuilder(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->i:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->i:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

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

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

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

    check-cast p2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->b0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$800(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 5
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->d0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$900(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasSourceInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getSourceInfo()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->m0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    .line 10
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->hasExpr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->getExpr()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->i0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    .line 12
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;->access$1000(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->g:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;->newBuilder(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->l0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo$b;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->g:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->g:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/SourceInfo;

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

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->Z()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    return-object p1
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/CheckedExpr$b;

    move-result-object p1

    return-object p1
.end method
