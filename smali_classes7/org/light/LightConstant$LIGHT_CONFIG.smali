.class public Lorg/light/LightConstant$LIGHT_CONFIG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/LightConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LIGHT_CONFIG"
.end annotation


# static fields
.field public static final CONFIG_ENABLE_BASIC_LUT:Ljava/lang/String; = "basicLUT.enable"

.field public static final CONFIG_ENABLE_BASIC_MESH:Ljava/lang/String; = "basicMesh.enable"

.field public static final CONFIG_ENABLE_FACE_FEATURE:Ljava/lang/String; = "beauty.faceFeature.enable"

.field public static final CONFIG_ENABLE_MATERIAL_LUT:Ljava/lang/String; = "materialLUT.enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
