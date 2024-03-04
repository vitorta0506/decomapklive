.class Lc8/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/a;


# direct methods
.method constructor <init>(Lc8/a;)V
    .locals 0

    iput-object p1, p0, Lc8/a$b;->a:Lc8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsAdLoaded(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc8/a;->d(Lc8/a;Z)Z

    .line 2
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lc8/a;->e(Lc8/a;Z)Z

    .line 3
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    invoke-virtual {p1}, Lc8/a;->q()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lc8/a$h;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lc8/a;->f(Lc8/a;Z)Z

    .line 3
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lc8/a$b;->a:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    invoke-interface {p1}, Lc8/a$h;->onError()V

    :cond_0
    return-void
.end method
