.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightLogUtilSetMinPriority(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$severity:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;->val$severity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;->val$severity:I

    invoke-static {v0}, Lorg/light/utils/LightLogUtil;->setMinPriority(I)V

    .line 2
    iget v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;->val$severity:I

    invoke-static {v0}, Lorg/light/service/LightSDKService$SDKServiceLogger;->setMinPriority(I)V

    return-void
.end method
