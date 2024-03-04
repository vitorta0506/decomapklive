.class public Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cname:Ljava/lang/String;

.field private coding:Ljava/lang/String;

.field private country_id:I

.field private country_num:I

.field private language:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private sortLetters:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getCoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->coding:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->country_id:I

    return v0
.end method

.method public getCountry_num()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->country_num:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->sortLetters:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->cname:Ljava/lang/String;

    return-void
.end method

.method public setCoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->coding:Ljava/lang/String;

    return-void
.end method

.method public setCountry_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->country_id:I

    return-void
.end method

.method public setCountry_num(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->country_num:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/AreaBean;->sortLetters:Ljava/lang/String;

    return-void
.end method
