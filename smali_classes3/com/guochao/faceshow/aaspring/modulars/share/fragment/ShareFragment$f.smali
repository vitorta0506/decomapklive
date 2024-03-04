.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->i2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 2

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
