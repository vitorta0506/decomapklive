.class public Lorg/light/device/GpuScopeAttrs$GpuBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/GpuScopeAttrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;,
        Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;,
        Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;,
        Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;
    }
.end annotation


# instance fields
.field public deviceModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field public gpuModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;",
            ">;"
        }
    .end annotation
.end field

.field public sysVersionModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
