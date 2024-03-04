.class public final Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;",
        "",
        "levelId",
        "",
        "commentId",
        "(II)V",
        "getCommentId",
        "()I",
        "setCommentId",
        "(I)V",
        "getLevelId",
        "setLevelId",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "app_GooglePlayRelease"
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
.field private commentId:I

.field private levelId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;IIILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->copy(II)Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    return v0
.end method

.method public final copy(II)Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    invoke-direct {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;-><init>(II)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCommentId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    return v0
.end method

.method public final getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCommentId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    return-void
.end method

.method public final setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddVideoCommentModel(levelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->levelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->commentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
