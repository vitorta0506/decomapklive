.class public Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/XmagicProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmagicPropertyValues"
.end annotation


# instance fields
.field private currentDisplayValue:F

.field private currentInnerValue:F

.field private final displayDefaultValue:F

.field public final displayMaxValue:F

.field public final displayMinValue:F

.field private final innerDefaultValue:F

.field private final innerMaxValue:F

.field private final innerMinValue:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMinValue:F

    .line 3
    iput p2, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMaxValue:F

    .line 4
    iput p3, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayDefaultValue:F

    .line 5
    iput p4, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerMinValue:F

    .line 6
    iput p5, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerMaxValue:F

    sub-float v0, p3, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    sub-float/2addr p5, p4

    mul-float v0, v0, p5

    add-float/2addr v0, p4

    .line 7
    iput v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerDefaultValue:F

    .line 8
    invoke-virtual {p0, p3}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->setCurrentDisplayValue(F)V

    return-void
.end method

.method private updateCurrentInnerValue()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentDisplayValue:F

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMinValue:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMaxValue:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 2
    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerMaxValue:F

    iget v2, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerMinValue:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentInnerValue:F

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDisplayValue()F
    .locals 1

    iget v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentDisplayValue:F

    return v0
.end method

.method getCurrentInnerValue()F
    .locals 1

    iget v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentInnerValue:F

    return v0
.end method

.method getCurrentInnerValueString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentDisplayValue(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMinValue:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMaxValue:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iput p1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentDisplayValue:F

    .line 4
    invoke-direct {p0}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->updateCurrentInnerValue()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectNumberValues{displayMinValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMinValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", displayMaxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayMaxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", displayDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->displayDefaultValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", innerMinValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerMinValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", innerMaxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerMaxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", innerDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->innerDefaultValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currentDisplayValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentDisplayValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currentInnerValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->currentInnerValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
