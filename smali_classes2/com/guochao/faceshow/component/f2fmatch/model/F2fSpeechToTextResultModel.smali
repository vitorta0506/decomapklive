.class public final Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "",
        "result",
        "",
        "finalResult",
        "",
        "cancel",
        "(Ljava/lang/String;ZZ)V",
        "getCancel",
        "()Z",
        "getFinalResult",
        "getResult",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cancel:Z

.field private final finalResult:Z

.field private final result:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    .line 4
    iput-boolean p3, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->copy(Ljava/lang/String;ZZ)Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZ)Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    iget-boolean v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    iget-boolean p1, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    return v0
.end method

.method public final getFinalResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    return v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F2fSpeechToTextResultModel(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", finalResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->finalResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->cancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
