.class public Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _adListenerWrapper:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

.field private _loadListener:Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;

.field private _rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private _rewardedAdLoadCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private rewardedAdCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener$1;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener$1;-><init>(Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_rewardedAdLoadCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 3
    new-instance v0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener$2;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener$2;-><init>(Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->rewardedAdCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 4
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 5
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_adListenerWrapper:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_adListenerWrapper:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_loadListener:Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;

    return-object p0
.end method


# virtual methods
.method public getRewardedAdCallback()Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->rewardedAdCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    return-object v0
.end method

.method public getRewardedAdLoadCallback()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_rewardedAdLoadCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-object v0
.end method

.method public setLoadListener(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1920/scarads/ScarRewardedAdListener;->_loadListener:Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;

    return-void
.end method
