.class Lorg/light/lightAssetKit/Entity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/lightAssetKit/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/lightAssetKit/Entity;->assignNewIdForChild(Lorg/light/lightAssetKit/Entity;)V
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

.field final synthetic val$childEntities:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/light/lightAssetKit/Entity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/Entity$6;->this$0:Lorg/light/lightAssetKit/Entity;

    iput-object p2, p0, Lorg/light/lightAssetKit/Entity$6;->val$childEntities:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/light/lightAssetKit/Entity;

    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/Entity$6;->accept(Lorg/light/lightAssetKit/Entity;)V

    return-void
.end method

.method public accept(Lorg/light/lightAssetKit/Entity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/Entity$6;->val$childEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
