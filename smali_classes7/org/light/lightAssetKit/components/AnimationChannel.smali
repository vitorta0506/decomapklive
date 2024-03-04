.class public Lorg/light/lightAssetKit/components/AnimationChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public channel_name_:Ljava/lang/String;

.field public sampler_path_:Ljava/lang/String;

.field public transform_target_:Lorg/light/lightAssetKit/enums/ChannelTransformTarget;

.field public transform_type_:Lorg/light/lightAssetKit/enums/ChannelTransformType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AnimationChannel;->channel_name_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AnimationChannel;->sampler_path_:Ljava/lang/String;

    return-void
.end method
