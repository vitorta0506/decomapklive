.class public Lva/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Double;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static b(Ljava/lang/Integer;I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
