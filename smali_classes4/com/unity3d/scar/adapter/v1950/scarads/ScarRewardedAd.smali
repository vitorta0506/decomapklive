.class public Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;
.super Lcom/unity3d/scar/adapter/v1950/scarads/ScarAdBase;
.source "SourceFile"


# instance fields
.field private _rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private _rewardedAdDelegate:Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarAdBase;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarAdBase;->_context:Landroid/content/Context;

    iget-object p3, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarAdBase;->_scarAdMetadata:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    invoke-virtual {p3}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;->getAdUnitId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    new-instance p2, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;

    invoke-direct {p2, p1, p5}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAdDelegate:Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;

    return-void
.end method


# virtual methods
.method public loadAdInternal(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAdDelegate:Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;->setLoadListener(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    .line 2
    iget-object p1, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAdDelegate:Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;->getRewardedAdLoadCallback()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAd;->_rewardedAdDelegate:Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/v1950/scarads/ScarRewardedAdListener;->getRewardedAdCallback()Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarAdBase;->_adsErrorHandler:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/scarads/ScarAdBase;->_scarAdMetadata:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->AdNotLoadedError(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/IUnityAdsError;)V

    :goto_0
    return-void
.end method
