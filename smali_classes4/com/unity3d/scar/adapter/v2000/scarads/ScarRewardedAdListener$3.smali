.class Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$3;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$3;->this$0:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$3;->this$0:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->access$000(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarAdListenerWrapper;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$3;->this$0:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->access$000(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;->onAdFailedToShow(ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$3;->this$0:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->access$000(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;->onAdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$3;->this$0:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->access$000(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/IScarAdListenerWrapper;->onAdOpened()V

    return-void
.end method
