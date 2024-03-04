.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->ueUtilInitUENativeFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$8;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lorg/light/UEUtil;->_initUENativeFunctions()V

    return-void
.end method
