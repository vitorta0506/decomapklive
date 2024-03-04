.class public Lorg/light/lightAssetKit/components/Debug3dMeshDrawComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enableTranslucentPlainModel:Z

.field public hideMesh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Debug3dMeshDrawComponent;->hideMesh:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Debug3dMeshDrawComponent;->enableTranslucentPlainModel:Z

    return-void
.end method
