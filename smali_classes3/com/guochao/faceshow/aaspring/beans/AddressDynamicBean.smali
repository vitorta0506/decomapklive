.class public Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field private partakeTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPartakeTimes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->partakeTimes:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPartakeTimes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->partakeTimes:I

    return-void
.end method
