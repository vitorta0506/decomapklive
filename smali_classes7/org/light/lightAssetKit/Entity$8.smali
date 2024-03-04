.class Lorg/light/lightAssetKit/Entity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/lightAssetKit/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/lightAssetKit/Entity;->removeAllComponentChangeListenerRecursively()V
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

    iput-object p1, p0, Lorg/light/lightAssetKit/Entity$8;->this$0:Lorg/light/lightAssetKit/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/light/lightAssetKit/Entity;

    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/Entity$8;->accept(Lorg/light/lightAssetKit/Entity;)V

    return-void
.end method

.method public accept(Lorg/light/lightAssetKit/Entity;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lorg/light/lightAssetKit/Entity$8;->this$0:Lorg/light/lightAssetKit/Entity;

    invoke-static {p1}, Lorg/light/lightAssetKit/Entity;->access$300(Lorg/light/lightAssetKit/Entity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/components/Component;

    .line 3
    iget-object v1, p0, Lorg/light/lightAssetKit/Entity$8;->this$0:Lorg/light/lightAssetKit/Entity;

    invoke-static {v1, v0}, Lorg/light/lightAssetKit/Entity;->access$600(Lorg/light/lightAssetKit/Entity;Lorg/light/lightAssetKit/components/Component;)V

    goto :goto_0

    :cond_0
    return-void
.end method
