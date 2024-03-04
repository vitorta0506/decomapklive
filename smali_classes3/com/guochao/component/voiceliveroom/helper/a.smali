.class public Lcom/guochao/component/voiceliveroom/helper/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/helper/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 2

    const-string v0, "{icon}"

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/component/voiceliveroom/helper/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x11

    .line 2
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, v0, v0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-object p0
.end method

.method public static c(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/16 p2, 0x21

    invoke-virtual {p1, v1, v0, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method
