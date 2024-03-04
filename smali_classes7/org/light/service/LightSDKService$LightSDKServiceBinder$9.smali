.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->ueUtilSetMultiProc(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$isProc:Z


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Z)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$9;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-boolean p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$9;->val$isProc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$9;->val$isProc:Z

    invoke-static {v0}, Lorg/light/UEUtil;->_setUEMultiProc(Z)V

    return-void
.end method
