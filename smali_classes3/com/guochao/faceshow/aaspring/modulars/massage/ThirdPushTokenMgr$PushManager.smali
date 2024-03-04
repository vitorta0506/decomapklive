.class public Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$PushManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/push/service/ThirdPushTokenManager;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/third_push_token_manager"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThirdPushToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThirdPushType()I
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->e()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
