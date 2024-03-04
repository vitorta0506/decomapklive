.class abstract Lorg/light/lightAssetKit/BaseContext;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onAddComponent(ILcom/google/gson/JsonObject;)V
.end method

.method abstract onAddEntity(IILorg/light/lightAssetKit/Entity;)V
.end method

.method abstract onRegisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V
.end method

.method abstract onRemoveComponent(ILjava/lang/String;)V
.end method

.method abstract onRemoveEntity(I)V
.end method

.method abstract onUnregisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V
.end method

.method abstract onUpdateComponent(ILjava/lang/String;Lcom/google/gson/JsonObject;)V
.end method
