.class public Lcom/guochao/faceshow/aaspring/beans/CountryBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/Long;

.field private cname:Ljava/lang/String;

.field public coding:Ljava/lang/String;

.field private country_id:I

.field private country_num:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field private logo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->cname:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->logo:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->country_id:I

    return-void
.end method


# virtual methods
.method public getCname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getCoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->coding:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->country_id:I

    return v0
.end method

.method public getCountry_num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->country_num:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->cname:Ljava/lang/String;

    return-void
.end method

.method public setCoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->coding:Ljava/lang/String;

    return-void
.end method

.method public setCountry_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->country_id:I

    return-void
.end method

.method public setCountry_num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->country_num:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->_id:Ljava/lang/Long;

    return-void
.end method
