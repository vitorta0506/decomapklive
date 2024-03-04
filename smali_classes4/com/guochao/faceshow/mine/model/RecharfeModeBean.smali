.class public Lcom/guochao/faceshow/mine/model/RecharfeModeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private awardNumber:I

.field public img:Ljava/lang/String;

.field public isActivity:I

.field private newNumber:I

.field private number:I

.field private preferenCount:I

.field private preferences:I

.field private price:Ljava/lang/String;

.field private price_America:D

.field private price_China:D

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->sign:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->number:I

    .line 5
    iput-wide p3, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_America:D

    .line 6
    iput-wide p5, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_China:D

    return-void
.end method

.method private getIntString(D)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAwardNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->awardNumber:I

    return v0
.end method

.method public getDefaultPrice()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isLocalChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\uffe5"

    goto :goto_0

    :cond_0
    const-string v0, "US$"

    .line 2
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isLocalChina()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_China:D

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getIntString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_America:D

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getIntString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getNewNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->newNumber:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->number:I

    return v0
.end method

.method public getPreferenCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->preferenCount:I

    return v0
.end method

.method public getPreferences()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->preferences:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice_America()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_America:D

    return-wide v0
.end method

.method public getPrice_China()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_China:D

    return-wide v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setAwardNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->awardNumber:I

    return-void
.end method

.method public setDefaultPrice()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getDefaultPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setNewNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->newNumber:I

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->number:I

    return-void
.end method

.method public setPreferenCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->preferenCount:I

    return-void
.end method

.method public setPreferences(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->preferences:I

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setPrice_America(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_America:D

    return-void
.end method

.method public setPrice_China(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_China:D

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecharfeModeBean{sign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", price_America="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_America:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", price_China="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->price_China:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
