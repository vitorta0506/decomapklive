.class public final Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/StackTrace$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;",
        ">;",
        "Lio/opencensus/proto/trace/v1/StackTrace$c;"
    }
.end annotation


# instance fields
.field private e:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private f:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/TruncatableString;",
            "Lio/opencensus/proto/trace/v1/TruncatableString$b;",
            "Lio/opencensus/proto/trace/v1/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/TruncatableString;",
            "Lio/opencensus/proto/trace/v1/TruncatableString$b;",
            "Lio/opencensus/proto/trace/v1/k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/TruncatableString;",
            "Lio/opencensus/proto/trace/v1/TruncatableString$b;",
            "Lio/opencensus/proto/trace/v1/k;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:J

.field private m:Lio/opencensus/proto/trace/v1/Module;

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/Module;",
            "Lio/opencensus/proto/trace/v1/Module$b;",
            "Lio/opencensus/proto/trace/v1/b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/TruncatableString;",
            "Lio/opencensus/proto/trace/v1/TruncatableString$b;",
            "Lio/opencensus/proto/trace/v1/k;",
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
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 6
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 7
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m:Lio/opencensus/proto/trace/v1/Module;

    .line 8
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 9
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 12
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 13
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 14
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m:Lio/opencensus/proto/trace/v1/Module;

    .line 15
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o:Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 16
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/StackTrace$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/trace/v1/StackTrace$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->Z()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->Y()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->Y()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    const-class v2, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->r0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->Y()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/StackTrace$a;)V

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->f:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e:Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$402(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$402(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g:Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$502(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$502(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 8
    :goto_1
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i:Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$602(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$602(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 11
    :goto_2
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->k:J

    invoke-static {v0, v1, v2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$702(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;J)J

    .line 12
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->l:J

    invoke-static {v0, v1, v2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$802(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;J)J

    .line 13
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m:Lio/opencensus/proto/trace/v1/Module;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$902(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/Module;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/trace/v1/Module;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$902(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/Module;

    .line 16
    :goto_3
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o:Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$1002(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/trace/v1/TruncatableString;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$1002(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;

    .line 19
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    return-object v0
.end method

.method public a0()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getDefaultInstance()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->X()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->X()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

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

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->Z()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/trace/v1/TruncatableString;->newBuilder(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i:Lio/opencensus/proto/trace/v1/TruncatableString;

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

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h0(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

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

    check-cast p2, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h0(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->r0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h0(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->a0()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->a0()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->C:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 5

    .line 1
    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getDefaultInstance()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFunctionName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->i0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasOriginalFunctionName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->k0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFileName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->d0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLineNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLineNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->q0(J)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getColumnNumber()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getColumnNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->n0(J)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasLoadModule()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->j0(Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 14
    :cond_6
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasSourceVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->l0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 16
    :cond_7
    invoke-static {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->access$1100(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 17
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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->f:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/trace/v1/TruncatableString;->newBuilder(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e:Lio/opencensus/proto/trace/v1/TruncatableString;

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

.method public j0(Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m:Lio/opencensus/proto/trace/v1/Module;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/trace/v1/Module;->newBuilder(Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/Module$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/Module$b;->h0(Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/Module$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Module$b;->Y()Lio/opencensus/proto/trace/v1/Module;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m:Lio/opencensus/proto/trace/v1/Module;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m:Lio/opencensus/proto/trace/v1/Module;

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

.method public k0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/trace/v1/TruncatableString;->newBuilder(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g:Lio/opencensus/proto/trace/v1/TruncatableString;

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

.method public l0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/trace/v1/TruncatableString;->newBuilder(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->o:Lio/opencensus/proto/trace/v1/TruncatableString;

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

.method public final m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->Z()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->l:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    return-object p1
.end method

.method public q0(J)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->k:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->g0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method