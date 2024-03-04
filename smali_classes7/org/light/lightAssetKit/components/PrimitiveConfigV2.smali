.class public Lorg/light/lightAssetKit/components/PrimitiveConfigV2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public materialResourceKey:Ljava/lang/String;

.field public meshResourceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfigV2;->materialResourceKey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfigV2;->meshResourceKey:Ljava/lang/String;

    return-void
.end method
