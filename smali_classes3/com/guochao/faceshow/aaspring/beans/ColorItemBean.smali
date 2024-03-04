.class public Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field private isSelect:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->drawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->isSelect:Z

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->drawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->isSelect:Z

    return-void
.end method
