.class public Lcom/guochao/faceshow/aaspring/beans/TranslateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lang:Ljava/lang/String;

.field private texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->texts:Ljava/util/List;

    return-object v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->lang:Ljava/lang/String;

    return-void
.end method

.method public setTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->texts:Ljava/util/List;

    return-void
.end method
