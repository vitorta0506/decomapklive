.class Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$000(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$000(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarAdListenerWrapper;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$000(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/IScarAdListenerWrapper;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$000(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$000(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarAdListenerWrapper;->onAdLoaded()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$100(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$100(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener$1;->this$0:Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;->access$000(Lcom/unity3d/scar/adapter/v1950/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarAdListenerWrapper;->onAdOpened()V

    return-void
.end method
