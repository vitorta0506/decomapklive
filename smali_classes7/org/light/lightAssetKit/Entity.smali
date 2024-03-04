.class public Lorg/light/lightAssetKit/Entity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/lightAssetKit/Entity$Type;
    }
.end annotation


# static fields
.field private static final COMPONENT_ID_FACTOR:I = 0x3e8

.field private static final INVALID_ID:I

.field private static __gson:Lcom/google/gson/Gson;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/lightAssetKit/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private transient componentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/light/lightAssetKit/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/lightAssetKit/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field private transient context:Lorg/light/lightAssetKit/BaseContext;

.field private id:I

.field private transient parent:Lorg/light/lightAssetKit/Entity;

.field private transient type:Lorg/light/lightAssetKit/Entity$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/Entity$Type;->ENTITY_TYPE_2D:Lorg/light/lightAssetKit/Entity$Type;

    invoke-direct {p0, v0}, Lorg/light/lightAssetKit/Entity;-><init>(Lorg/light/lightAssetKit/Entity$Type;)V

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/Entity$Type;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/Entity;->id:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lorg/light/lightAssetKit/Entity;->type:Lorg/light/lightAssetKit/Entity$Type;

    .line 8
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->initEntity()V

    return-void
.end method

.method static synthetic access$000(Lorg/light/lightAssetKit/Entity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/Entity;)Lorg/light/lightAssetKit/Entity;
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    return-object p1
.end method

.method static synthetic access$200(Lorg/light/lightAssetKit/Entity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lorg/light/lightAssetKit/Entity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/Entity$Type;)Lorg/light/lightAssetKit/Entity$Type;
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/Entity;->type:Lorg/light/lightAssetKit/Entity$Type;

    return-object p1
.end method

.method static synthetic access$500(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/components/Component;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->tryRegisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    return-void
.end method

.method static synthetic access$600(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/components/Component;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->unregisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    return-void
.end method

.method private assignNewIdForChild(Lorg/light/lightAssetKit/Entity;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/light/lightAssetKit/Entity;->getRoot()Lorg/light/lightAssetKit/Entity;

    move-result-object v1

    new-instance v2, Lorg/light/lightAssetKit/Entity$5;

    invoke-direct {v2, p0, v0}, Lorg/light/lightAssetKit/Entity$5;-><init>(Lorg/light/lightAssetKit/Entity;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Lorg/light/lightAssetKit/Entity$6;

    invoke-direct {v2, p0, v1}, Lorg/light/lightAssetKit/Entity$6;-><init>(Lorg/light/lightAssetKit/Entity;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/lightAssetKit/Entity;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2, v1}, Lorg/light/lightAssetKit/Entity;->setId(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private genNewComponentID()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/light/lightAssetKit/Entity;->id:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/lightAssetKit/components/Component;

    .line 4
    invoke-virtual {v2}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lorg/light/lightAssetKit/Entity;->id:I

    mul-int/lit16 v1, v1, 0x3e8

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    return v1
.end method

.method private getContext()Lorg/light/lightAssetKit/BaseContext;
    .locals 1

    invoke-virtual {p0}, Lorg/light/lightAssetKit/Entity;->getRoot()Lorg/light/lightAssetKit/Entity;

    move-result-object v0

    iget-object v0, v0, Lorg/light/lightAssetKit/Entity;->context:Lorg/light/lightAssetKit/BaseContext;

    return-object v0
.end method

.method protected static gson()Lcom/google/gson/Gson;
    .locals 3

    .line 1
    const-class v0, Lorg/light/lightAssetKit/ComponentBase;

    sget-object v1, Lorg/light/lightAssetKit/Entity;->__gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v2, Lorg/light/lightAssetKit/Entity$2;

    invoke-direct {v2}, Lorg/light/lightAssetKit/Entity$2;-><init>()V

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    new-instance v2, Lorg/light/lightAssetKit/Entity$1;

    invoke-direct {v2}, Lorg/light/lightAssetKit/Entity$1;-><init>()V

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lorg/light/lightAssetKit/Entity;->__gson:Lcom/google/gson/Gson;

    .line 6
    :cond_0
    sget-object v0, Lorg/light/lightAssetKit/Entity;->__gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private initAfterSerialize()V
    .locals 1

    new-instance v0, Lorg/light/lightAssetKit/Entity$3;

    invoke-direct {v0, p0}, Lorg/light/lightAssetKit/Entity$3;-><init>(Lorg/light/lightAssetKit/Entity;)V

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    return-void
.end method

.method private initEntity()V
    .locals 2

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/components/EntityIdentifier;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/EntityIdentifier;-><init>()V

    .line 2
    iget v1, p0, Lorg/light/lightAssetKit/Entity;->id:I

    invoke-virtual {v0, v1}, Lorg/light/lightAssetKit/components/EntityIdentifier;->setId(I)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->addComponent(Lorg/light/lightAssetKit/components/Component;)Z

    .line 4
    sget-object v0, Lorg/light/lightAssetKit/Entity$10;->$SwitchMap$org$light$lightAssetKit$Entity$Type:[I

    iget-object v1, p0, Lorg/light/lightAssetKit/Entity;->type:Lorg/light/lightAssetKit/Entity$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lorg/light/lightAssetKit/components/BasicTransform;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/BasicTransform;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->addComponent(Lorg/light/lightAssetKit/components/Component;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lorg/light/lightAssetKit/components/ScreenTransform;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/ScreenTransform;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->addComponent(Lorg/light/lightAssetKit/components/Component;)Z

    :goto_0
    return-void
.end method

.method private isRootEntity()Z
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->context:Lorg/light/lightAssetKit/BaseContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeFromJson(Lcom/google/gson/JsonObject;)Lorg/light/lightAssetKit/Entity;
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/lightAssetKit/Entity;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lorg/light/lightAssetKit/Entity;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/Entity;

    .line 2
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->initAfterSerialize()V

    return-object p0
.end method

.method public static makeFromJson(Ljava/lang/String;)Lorg/light/lightAssetKit/Entity;
    .locals 2

    .line 3
    invoke-static {}, Lorg/light/lightAssetKit/Entity;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lorg/light/lightAssetKit/Entity;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/Entity;

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->initAfterSerialize()V

    return-object p0
.end method

.method private onAddComponent(Lorg/light/lightAssetKit/components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/light/lightAssetKit/ComponentBase;->__propertyChangeListener:Lorg/light/lightAssetKit/Entity;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lorg/light/lightAssetKit/Entity;->id:I

    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/components/Component;->setEntityId(I)V

    .line 3
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->genNewComponentID()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/components/Component;->setComponentID(I)V

    .line 4
    invoke-virtual {p1, p0}, Lorg/light/lightAssetKit/ComponentBase;->setPropertyChangeListener(Lorg/light/lightAssetKit/Entity;)V

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    iget v1, p0, Lorg/light/lightAssetKit/Entity;->id:I

    invoke-virtual {p1}, Lorg/light/lightAssetKit/ComponentBase;->toJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/light/lightAssetKit/BaseContext;->onAddComponent(ILcom/google/gson/JsonObject;)V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->tryRegisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    .line 8
    invoke-virtual {p1, p0}, Lorg/light/lightAssetKit/ComponentBase;->setRegisterComponentListener(Lorg/light/lightAssetKit/Entity;)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;

    const-string v0, "Target component has already been another entity\'s component"

    invoke-direct {p1, v0}, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onAddEntity(ILorg/light/lightAssetKit/Entity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/light/lightAssetKit/Entity;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lorg/light/lightAssetKit/Entity;->assignNewIdForChild(Lorg/light/lightAssetKit/Entity;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    invoke-virtual {p0}, Lorg/light/lightAssetKit/Entity;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/light/lightAssetKit/BaseContext;->onAddEntity(IILorg/light/lightAssetKit/Entity;)V

    .line 5
    :cond_1
    iput-object p0, p2, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    .line 6
    new-instance p1, Lorg/light/lightAssetKit/Entity$7;

    invoke-direct {p1, p0}, Lorg/light/lightAssetKit/Entity$7;-><init>(Lorg/light/lightAssetKit/Entity;)V

    invoke-virtual {p2, p1}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    return-void
.end method

.method private onRemoveComponent(Lorg/light/lightAssetKit/components/Component;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/ComponentBase;->setPropertyChangeListener(Lorg/light/lightAssetKit/Entity;)V

    .line 2
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v1

    iget v2, p0, Lorg/light/lightAssetKit/Entity;->id:I

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/light/lightAssetKit/BaseContext;->onRemoveComponent(ILjava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->unregisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    .line 5
    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/ComponentBase;->setRegisterComponentListener(Lorg/light/lightAssetKit/Entity;)V

    return-void
.end method

.method private onRemoveEntity(Lorg/light/lightAssetKit/Entity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p1}, Lorg/light/lightAssetKit/Entity;->removeAllComponentChangeListenerRecursively()V

    .line 3
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    iget v1, p1, Lorg/light/lightAssetKit/Entity;->id:I

    invoke-virtual {v0, v1}, Lorg/light/lightAssetKit/BaseContext;->onRemoveEntity(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    .line 5
    invoke-direct {p1}, Lorg/light/lightAssetKit/Entity;->resetAllIds()V

    return-void
.end method

.method private registerComponentChange(Lorg/light/lightAssetKit/components/Component;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/light/lightAssetKit/BaseContext;->onRegisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V

    :cond_0
    return-void
.end method

.method private removeAllComponentChangeListenerRecursively()V
    .locals 1

    new-instance v0, Lorg/light/lightAssetKit/Entity$8;

    invoke-direct {v0, p0}, Lorg/light/lightAssetKit/Entity$8;-><init>(Lorg/light/lightAssetKit/Entity;)V

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    return-void
.end method

.method private resetAllIds()V
    .locals 1

    new-instance v0, Lorg/light/lightAssetKit/Entity$9;

    invoke-direct {v0, p0}, Lorg/light/lightAssetKit/Entity$9;-><init>(Lorg/light/lightAssetKit/Entity;)V

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    return-void
.end method

.method private tryRegisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/light/lightAssetKit/ComponentBase;->__componentUpdateListener:Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->registerComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->unregisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    :goto_0
    return-void
.end method

.method private unregisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/light/lightAssetKit/BaseContext;->onUnregisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(ILorg/light/lightAssetKit/Entity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 2
    iget-object v1, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p2}, Lorg/light/lightAssetKit/Entity;->isRootEntity()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    iget-object v1, p2, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-gez p1, :cond_1

    .line 5
    iget-object p1, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/light/lightAssetKit/Entity;->onAddEntity(ILorg/light/lightAssetKit/Entity;)V

    .line 6
    iget-object p1, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 7
    :cond_1
    iget-object v2, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_2

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/light/lightAssetKit/Entity;->onAddEntity(ILorg/light/lightAssetKit/Entity;)V

    .line 9
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1

    :cond_2
    return v0

    .line 10
    :cond_3
    new-instance p1, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;

    const-string p2, "Target entity has already been another entity\'s child"

    invoke-direct {p1, p2}, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;

    const-string p2, "Cannot add root entity to another entity"

    invoke-direct {p1, p2}, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return v0
.end method

.method public addChild(Lorg/light/lightAssetKit/Entity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/Entity;->addChild(ILorg/light/lightAssetKit/Entity;)Z

    move-result p1

    return p1
.end method

.method public addComponent(Lorg/light/lightAssetKit/components/Component;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->type()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->onAddComponent(Lorg/light/lightAssetKit/components/Component;)V

    .line 3
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method bindContext(Lorg/light/lightAssetKit/BaseContext;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/Entity;->context:Lorg/light/lightAssetKit/BaseContext;

    return-void
.end method

.method public contains(Lorg/light/lightAssetKit/Entity;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public detach()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->isRootEntity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lorg/light/lightAssetKit/Entity;->removeChild(Lorg/light/lightAssetKit/Entity;)Z

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;

    const-string v1, "Cannot detach root entity."

    invoke-direct {v0, v1}, Lorg/light/lightAssetKit/LightAssetKitInvalidOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forEach(Lorg/light/lightAssetKit/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/light/lightAssetKit/Consumer<",
            "Lorg/light/lightAssetKit/Entity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lorg/light/lightAssetKit/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

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
    invoke-virtual {v1, p1}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChildAtIndex(I)Lorg/light/lightAssetKit/Entity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/lightAssetKit/Entity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/light/lightAssetKit/Entity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/Class;)Lorg/light/lightAssetKit/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/light/lightAssetKit/components/Component;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->getComponent(Ljava/lang/String;)Lorg/light/lightAssetKit/components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponent(Ljava/lang/String;)Lorg/light/lightAssetKit/components/Component;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/lightAssetKit/components/Component;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/light/lightAssetKit/components/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getEntitiesWithComponent(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/light/lightAssetKit/components/Component;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/light/lightAssetKit/Entity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/Entity$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/light/lightAssetKit/Entity$4;-><init>(Lorg/light/lightAssetKit/Entity;Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lorg/light/lightAssetKit/Entity;->forEach(Lorg/light/lightAssetKit/Consumer;)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/Entity;->id:I

    return v0
.end method

.method public getIndexForChild(Lorg/light/lightAssetKit/Entity;)I
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getParent()Lorg/light/lightAssetKit/Entity;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/light/lightAssetKit/Entity;->id:I

    :goto_0
    return v0
.end method

.method public getRoot()Lorg/light/lightAssetKit/Entity;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/light/lightAssetKit/Entity;->parent:Lorg/light/lightAssetKit/Entity;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasComponent(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/light/lightAssetKit/components/Component;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/Entity;->hasComponent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasComponent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onPropertyChange(Lorg/light/lightAssetKit/ComponentBase;Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    invoke-virtual {p1}, Lorg/light/lightAssetKit/ComponentBase;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->getContext()Lorg/light/lightAssetKit/BaseContext;

    move-result-object p2

    iget p3, p0, Lorg/light/lightAssetKit/Entity;->id:I

    invoke-virtual {p1}, Lorg/light/lightAssetKit/ComponentBase;->type()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1, v0}, Lorg/light/lightAssetKit/BaseContext;->onUpdateComponent(ILjava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method protected onRegisterComponentChange(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Component;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/light/lightAssetKit/components/Component;

    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->tryRegisterComponentChange(Lorg/light/lightAssetKit/components/Component;)V

    :cond_0
    return-void
.end method

.method public removeAllChildren()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/Entity;

    .line 2
    invoke-direct {p0, v1}, Lorg/light/lightAssetKit/Entity;->onRemoveEntity(Lorg/light/lightAssetKit/Entity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeAllChildrenRecursively()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/Entity;

    .line 2
    invoke-virtual {v1}, Lorg/light/lightAssetKit/Entity;->removeAllChildrenRecursively()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/light/lightAssetKit/Entity;->removeAllChildren()V

    return-void
.end method

.method public removeChild(Lorg/light/lightAssetKit/Entity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->onRemoveEntity(Lorg/light/lightAssetKit/Entity;)V

    .line 3
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeChildAtIndex(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/Entity;

    .line 3
    invoke-direct {p0, v0}, Lorg/light/lightAssetKit/Entity;->onRemoveEntity(Lorg/light/lightAssetKit/Entity;)V

    .line 4
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeComponent(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/light/lightAssetKit/components/Component;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/Entity;->removeComponent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeComponent(Ljava/lang/String;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/components/Component;

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lorg/light/lightAssetKit/Entity;->onRemoveComponent(Lorg/light/lightAssetKit/components/Component;)V

    .line 8
    :cond_1
    iget-object v2, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public removeComponent(Lorg/light/lightAssetKit/components/Component;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/Entity;->onRemoveComponent(Lorg/light/lightAssetKit/components/Component;)V

    .line 3
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeTargetEntityRecursively(Lorg/light/lightAssetKit/Entity;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/Entity;->removeChild(Lorg/light/lightAssetKit/Entity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/lightAssetKit/Entity;

    .line 3
    invoke-virtual {v2, p1}, Lorg/light/lightAssetKit/Entity;->removeTargetEntityRecursively(Lorg/light/lightAssetKit/Entity;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/components/Component;

    .line 2
    invoke-direct {p0, v1}, Lorg/light/lightAssetKit/Entity;->onRemoveComponent(Lorg/light/lightAssetKit/components/Component;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->componentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/Entity;->initEntity()V

    return-void
.end method

.method protected setId(I)V
    .locals 4

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/Entity;->id:I

    .line 2
    const-class v0, Lorg/light/lightAssetKit/components/EntityIdentifier;

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/Entity;->getComponent(Ljava/lang/Class;)Lorg/light/lightAssetKit/components/Component;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/components/EntityIdentifier;

    .line 3
    invoke-virtual {v0, p1}, Lorg/light/lightAssetKit/components/EntityIdentifier;->setId(I)V

    mul-int/lit16 v0, p1, 0x3e8

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/light/lightAssetKit/Entity;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/lightAssetKit/components/Component;

    .line 5
    invoke-virtual {v2, p1}, Lorg/light/lightAssetKit/components/Component;->setEntityId(I)V

    if-nez p1, :cond_0

    const/4 v3, 0x0

    move v3, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 6
    :goto_1
    invoke-virtual {v2, v0}, Lorg/light/lightAssetKit/components/Component;->setComponentID(I)V

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/light/lightAssetKit/Entity;->toJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonObject()Lcom/google/gson/JsonObject;
    .locals 1

    invoke-static {}, Lorg/light/lightAssetKit/Entity;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method
