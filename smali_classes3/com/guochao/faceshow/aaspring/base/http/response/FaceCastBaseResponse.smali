.class public Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private levelId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelId"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "page"
        }
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private selectTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectTime"
    .end annotation
.end field

.field private totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->code:I

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->levelId:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->selectTime:J

    return-wide v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->totalCount:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->code:I

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->levelId:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->result:Ljava/lang/Object;

    return-void
.end method

.method public setSelectTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->selectTime:J

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->totalCount:I

    return-void
.end method
