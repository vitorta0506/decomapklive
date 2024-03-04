.class public final Lcom/google/cloud/speech/v1/RecognitionConfig$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/speech/v1/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1/RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/cloud/speech/v1/RecognitionConfig$b;",
        ">;",
        "Lcom/google/cloud/speech/v1/d;"
    }
.end annotation


# instance fields
.field private A:Lcom/google/cloud/speech/v1/RecognitionMetadata;

.field private B:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/speech/v1/RecognitionMetadata;",
            "Lcom/google/cloud/speech/v1/RecognitionMetadata$b;",
            "Lcom/google/cloud/speech/v1/e;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/Object;

.field private D:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Lcom/google/protobuf/z0;

.field private l:I

.field private m:Z

.field private n:Lcom/google/cloud/speech/v1/SpeechAdaptation;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/speech/v1/SpeechAdaptation;",
            "Lcom/google/cloud/speech/v1/SpeechAdaptation$b;",
            "Lcom/google/cloud/speech/v1/g;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/speech/v1/SpeechContext;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/cloud/speech/v1/SpeechContext;",
            "Lcom/google/cloud/speech/v1/SpeechContext$b;",
            "Lcom/google/cloud/speech/v1/i;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/google/protobuf/BoolValue;

.field private v:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/BoolValue;",
            "Lcom/google/protobuf/BoolValue$b;",
            "Lcom/google/protobuf/l;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/google/protobuf/BoolValue;

.field private x:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/BoolValue;",
            "Lcom/google/protobuf/BoolValue$b;",
            "Lcom/google/protobuf/l;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

.field private z:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;",
            "Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig$b;",
            "Lcom/google/cloud/speech/v1/f;",
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
    iput v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->f:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->j:Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->C:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/speech/v1/RecognitionConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->f:I

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->j:Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->C:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1/RecognitionConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/cloud/speech/v1/SpeechContext;",
            "Lcom/google/cloud/speech/v1/SpeechContext$b;",
            "Lcom/google/cloud/speech/v1/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    iget v2, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public B0(Ljava/lang/String;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->j:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->Z()Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public D0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->l:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public H0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->Y()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->Y()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public I0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final J0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    return-object p1
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1/RecognitionConfig;

    const-class v2, Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public K0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->D:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->n0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->z0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->J0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    return-object p1
.end method

.method public X()Lcom/google/cloud/speech/v1/RecognitionConfig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->Y()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/RecognitionConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/cloud/speech/v1/RecognitionConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/RecognitionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1/RecognitionConfig$a;)V

    .line 2
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->f:I

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$402(Lcom/google/cloud/speech/v1/RecognitionConfig;I)I

    .line 3
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->g:I

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$502(Lcom/google/cloud/speech/v1/RecognitionConfig;I)I

    .line 4
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->h:I

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$602(Lcom/google/cloud/speech/v1/RecognitionConfig;I)I

    .line 5
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->i:Z

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$702(Lcom/google/cloud/speech/v1/RecognitionConfig;Z)Z

    .line 6
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$802(Lcom/google/cloud/speech/v1/RecognitionConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    .line 9
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$902(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 11
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->l:I

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1002(Lcom/google/cloud/speech/v1/RecognitionConfig;I)I

    .line 12
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->m:Z

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1102(Lcom/google/cloud/speech/v1/RecognitionConfig;Z)Z

    .line 13
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->n:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1202(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/speech/v1/SpeechAdaptation;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1202(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation;

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 17
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 19
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1302(Lcom/google/cloud/speech/v1/RecognitionConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1302(Lcom/google/cloud/speech/v1/RecognitionConfig;Ljava/util/List;)Ljava/util/List;

    .line 22
    :goto_1
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->r:Z

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1402(Lcom/google/cloud/speech/v1/RecognitionConfig;Z)Z

    .line 23
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->s:Z

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1502(Lcom/google/cloud/speech/v1/RecognitionConfig;Z)Z

    .line 24
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->t:Z

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1602(Lcom/google/cloud/speech/v1/RecognitionConfig;Z)Z

    .line 25
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->v:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 26
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->u:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1702(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1702(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 28
    :goto_2
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->x:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 29
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->w:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1802(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1802(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 31
    :goto_3
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->z:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 32
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->y:Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1902(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    goto :goto_4

    .line 33
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1902(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    .line 34
    :goto_4
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->B:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 35
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->A:Lcom/google/cloud/speech/v1/RecognitionMetadata;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2002(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/cloud/speech/v1/RecognitionMetadata;)Lcom/google/cloud/speech/v1/RecognitionMetadata;

    goto :goto_5

    .line 36
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/speech/v1/RecognitionMetadata;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2002(Lcom/google/cloud/speech/v1/RecognitionConfig;Lcom/google/cloud/speech/v1/RecognitionMetadata;)Lcom/google/cloud/speech/v1/RecognitionMetadata;

    .line 37
    :goto_5
    iget-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->C:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2102(Lcom/google/cloud/speech/v1/RecognitionConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-boolean v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->D:Z

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2202(Lcom/google/cloud/speech/v1/RecognitionConfig;Z)Z

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->X()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->X()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->z0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

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

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->Z()Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/cloud/speech/v1/RecognitionConfig;
    .locals 1

    invoke-static {}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getDefaultInstance()Lcom/google/cloud/speech/v1/RecognitionConfig;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->J0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->d0()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->d0()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/j;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->n:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/cloud/speech/v1/SpeechAdaptation;->newBuilder(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;->j0(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/SpeechAdaptation$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeechAdaptation$b;->Y()Lcom/google/cloud/speech/v1/SpeechAdaptation;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->n:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->n:Lcom/google/cloud/speech/v1/SpeechAdaptation;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->z:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->y:Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;->newBuilder(Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig$b;->d0(Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig$b;->Y()Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->y:Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->y:Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public j0(Lcom/google/protobuf/BoolValue;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->x:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->w:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->w:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->w:Lcom/google/protobuf/BoolValue;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public k0(Lcom/google/protobuf/BoolValue;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->v:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->u:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->u:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->u:Lcom/google/protobuf/BoolValue;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public l0(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getDefaultInstance()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$400(Lcom/google/cloud/speech/v1/RecognitionConfig;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEncodingValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->y0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getSampleRateHertz()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getSampleRateHertz()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->I0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getAudioChannelCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getAudioChannelCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->r0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableSeparateRecognitionPerChannel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableSeparateRecognitionPerChannel()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->t0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$800(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->j:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 13
    :cond_5
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$900(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$900(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    .line 16
    iget v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    goto :goto_0

    .line 17
    :cond_6
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->a0()V

    .line 18
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$900(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getMaxAlternatives()I

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getMaxAlternatives()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->D0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getProfanityFilter()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getProfanityFilter()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->H0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 24
    :cond_9
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->hasAdaptation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getAdaptation()Lcom/google/cloud/speech/v1/SpeechAdaptation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->h0(Lcom/google/cloud/speech/v1/SpeechAdaptation;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 26
    :cond_a
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    if-nez v0, :cond_c

    .line 27
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1300(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1300(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 30
    iget v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    goto :goto_1

    .line 31
    :cond_b
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->b0()V

    .line 32
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1300(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 34
    :cond_c
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1300(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 35
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    .line 38
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1300(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->p:Ljava/util/List;

    .line 39
    iget v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e:I

    .line 40
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 41
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->e0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_d
    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 42
    :cond_e
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$1300(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 43
    :cond_f
    :goto_2
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableWordTimeOffsets()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableWordTimeOffsets()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->v0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 45
    :cond_10
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableWordConfidence()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableWordConfidence()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->u0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 47
    :cond_11
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableAutomaticPunctuation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableAutomaticPunctuation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->s0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 49
    :cond_12
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->hasEnableSpokenPunctuation()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableSpokenPunctuation()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->k0(Lcom/google/protobuf/BoolValue;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 51
    :cond_13
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->hasEnableSpokenEmojis()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 52
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getEnableSpokenEmojis()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->j0(Lcom/google/protobuf/BoolValue;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 53
    :cond_14
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->hasDiarizationConfig()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 54
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getDiarizationConfig()Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->i0(Lcom/google/cloud/speech/v1/SpeakerDiarizationConfig;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 55
    :cond_15
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 56
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getMetadata()Lcom/google/cloud/speech/v1/RecognitionMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->o0(Lcom/google/cloud/speech/v1/RecognitionMetadata;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 57
    :cond_16
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 58
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2100(Lcom/google/cloud/speech/v1/RecognitionConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->C:Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 60
    :cond_17
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getUseEnhanced()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->getUseEnhanced()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->K0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 62
    :cond_18
    invoke-static {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2400(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognitionConfig;->access$2500()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/RecognitionConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->l0(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

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

    check-cast p2, Lcom/google/cloud/speech/v1/RecognitionConfig;
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
    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->l0(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->Z()Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/cloud/speech/v1/RecognitionConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/cloud/speech/v1/RecognitionConfig;

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->l0(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public o0(Lcom/google/cloud/speech/v1/RecognitionMetadata;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->B:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->A:Lcom/google/cloud/speech/v1/RecognitionMetadata;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/cloud/speech/v1/RecognitionMetadata;->newBuilder(Lcom/google/cloud/speech/v1/RecognitionMetadata;)Lcom/google/cloud/speech/v1/RecognitionMetadata$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/cloud/speech/v1/RecognitionMetadata$b;->d0(Lcom/google/cloud/speech/v1/RecognitionMetadata;)Lcom/google/cloud/speech/v1/RecognitionMetadata$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionMetadata$b;->Y()Lcom/google/cloud/speech/v1/RecognitionMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->A:Lcom/google/cloud/speech/v1/RecognitionMetadata;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->A:Lcom/google/cloud/speech/v1/RecognitionMetadata;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    return-object p1
.end method

.method public r0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->t:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->i:Z

    .line 2
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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->s:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->n0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public v0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->r:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public x0(Lcom/google/cloud/speech/v1/RecognitionConfig$AudioEncoding;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$AudioEncoding;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->f:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public y0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public z0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    return-object p1
.end method
