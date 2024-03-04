.class public Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;
.super Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/GpuScopeAttrs$GpuBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceModel"
.end annotation


# instance fields
.field public device:Ljava/lang/String;

.field public enableImuSmooth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;->enableImuSmooth:Z

    return-void
.end method
