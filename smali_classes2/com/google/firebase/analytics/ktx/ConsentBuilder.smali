.class public final Lcom/google/firebase/analytics/ktx/ConsentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00040\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/google/firebase/analytics/ktx/ConsentBuilder;",
        "",
        "()V",
        "adStorage",
        "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;",
        "getAdStorage",
        "()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;",
        "setAdStorage",
        "(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V",
        "analyticsStorage",
        "getAnalyticsStorage",
        "setAnalyticsStorage",
        "asMap",
        "",
        "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;",
        "java.com.google.android.libraries.firebase.firebase_analytics_ktx_granule"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private zza:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->zzb:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    if-eqz v1, :cond_1

    .line 5
    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->ANALYTICS_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAdStorage()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-object v0
.end method

.method public final getAnalyticsStorage()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->zzb:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-object v0
.end method

.method public final setAdStorage(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-void
.end method

.method public final setAnalyticsStorage(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->zzb:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-void
.end method
