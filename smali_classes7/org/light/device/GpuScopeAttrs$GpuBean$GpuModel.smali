.class public Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;
.super Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/GpuScopeAttrs$GpuBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuModel"
.end annotation


# instance fields
.field public gpu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;-><init>()V

    return-void
.end method
