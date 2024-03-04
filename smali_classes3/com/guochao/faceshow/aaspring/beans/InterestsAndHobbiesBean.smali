.class public Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hobbyBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->type:I

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->hobbyBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHobbyBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->hobbyBeans:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->type:I

    return v0
.end method

.method public setHobbyBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->hobbyBeans:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->type:I

    return-void
.end method
