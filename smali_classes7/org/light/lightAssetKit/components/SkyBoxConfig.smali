.class public Lorg/light/lightAssetKit/components/SkyBoxConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enableSkyBox:Z

.field public skyBoxPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SkyBoxConfig;->enableSkyBox:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/SkyBoxConfig;->skyBoxPath:Ljava/lang/String;

    return-void
.end method
