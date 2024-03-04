.class public Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/GpuScopeAttrs$GpuBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseModel"
.end annotation


# instance fields
.field public GLExtensionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ace3dFlushSupport:Z

.field public aiSupport:Z

.field public fenceSupport:Z

.field public filamentSupport:Z

.field public filamentWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hairSegPreLoadSupport:Z

.field public kapuSupport:Z

.field public openclSupport:Z

.field public renderBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public shareGLContextError:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->kapuSupport:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->filamentSupport:Z

    .line 4
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->openclSupport:Z

    .line 5
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->aiSupport:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->shareGLContextError:Z

    .line 7
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->ace3dFlushSupport:Z

    .line 8
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->hairSegPreLoadSupport:Z

    .line 9
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->fenceSupport:Z

    return-void
.end method
