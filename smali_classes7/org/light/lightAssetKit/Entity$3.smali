.class Lorg/light/lightAssetKit/Entity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/lightAssetKit/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/lightAssetKit/Entity;->initAfterSerialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/light/lightAssetKit/Consumer<",
        "Lorg/light/lightAssetKit/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/lightAssetKit/Entity;


# direct methods
.method constructor <init>(Lorg/light/lightAssetKit/Entity;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/Entity$3;->this$0:Lorg/light/lightAssetKit/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/light/lightAssetKit/Entity;

    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/Entity$3;->accept(Lorg/light/lightAssetKit/Entity;)V

    return-void
.end method

.method public accept(Lorg/light/lightAssetKit/Entity;)V
    .locals 4

    .line 2
    invoke-static {p1}, Lorg/light/lightAssetKit/Entity;->access$000(Lorg/light/lightAssetKit/Entity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/Entity;

    .line 3
    invoke-static {v1, p1}, Lorg/light/lightAssetKit/Entity;->access$102(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/Entity;)Lorg/light/lightAssetKit/Entity;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lorg/light/lightAssetKit/Entity;->access$200(Lorg/light/lightAssetKit/Entity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    invoke-static {p1}, Lorg/light/lightAssetKit/Entity;->access$300(Lorg/light/lightAssetKit/Entity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/components/Component;

    .line 6
    invoke-static {p1}, Lorg/light/lightAssetKit/Entity;->access$200(Lorg/light/lightAssetKit/Entity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lorg/light/lightAssetKit/components/Component;->type()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, p1}, Lorg/light/lightAssetKit/ComponentBase;->setPropertyChangeListener(Lorg/light/lightAssetKit/Entity;)V

    .line 8
    invoke-virtual {v1, p1}, Lorg/light/lightAssetKit/ComponentBase;->setRegisterComponentListener(Lorg/light/lightAssetKit/Entity;)V

    goto :goto_1

    .line 9
    :cond_1
    const-class v0, Lorg/light/lightAssetKit/components/ScreenTransform;

    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/Entity;->hasComponent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lorg/light/lightAssetKit/Entity$Type;->ENTITY_TYPE_2D:Lorg/light/lightAssetKit/Entity$Type;

    invoke-static {p1, v0}, Lorg/light/lightAssetKit/Entity;->access$402(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/Entity$Type;)Lorg/light/lightAssetKit/Entity$Type;

    goto :goto_2

    .line 11
    :cond_2
    const-class v0, Lorg/light/lightAssetKit/components/BasicTransform;

    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/Entity;->hasComponent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Lorg/light/lightAssetKit/Entity$Type;->ENTITY_TYPE_3D:Lorg/light/lightAssetKit/Entity$Type;

    invoke-static {p1, v0}, Lorg/light/lightAssetKit/Entity;->access$402(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/Entity$Type;)Lorg/light/lightAssetKit/Entity$Type;

    :cond_3
    :goto_2
    return-void
.end method
