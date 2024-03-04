.class public Lcom/gyailib/library/GYAssessPicQualityOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enableDeblur:I

.field public enableDelogo:I

.field public enableFace:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPicEnhanceOption(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyailib/library/GYAssessPicQualityOption;->enableDelogo:I

    .line 2
    iput p2, p0, Lcom/gyailib/library/GYAssessPicQualityOption;->enableDeblur:I

    .line 3
    iput p3, p0, Lcom/gyailib/library/GYAssessPicQualityOption;->enableFace:I

    return-void
.end method
