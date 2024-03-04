.class public abstract Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;,
        Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$LocationError;
    }
.end annotation


# static fields
.field public static final ERROR_PROVIDER_NOT_ENABLED:I = 0x3ed

.field public static final ERROR_TIME_OUT:I = 0x3ee


# instance fields
.field mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract requestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V
.end method
