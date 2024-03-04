.class Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->clickAction:Ljava/lang/String;

    const-string v0, "0"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/PushBean;-><init>()V

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/beans/PushBean;->goToWelcomePage:Z

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;I)I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Z1()V

    return-void
.end method
