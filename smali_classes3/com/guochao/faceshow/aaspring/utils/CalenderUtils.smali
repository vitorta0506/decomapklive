.class public Lcom/guochao/faceshow/aaspring/utils/CalenderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 7
    invoke-virtual {p1, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p0, :cond_1

    :cond_2
    return v1
.end method
