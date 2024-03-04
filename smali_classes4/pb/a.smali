.class public final synthetic Lpb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lpb/b;Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .line 1
    instance-of p0, p1, Landroid/widget/TextView;

    const v0, 0x102000b

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 5
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    return-object p1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must set the ID value of TextView to android.R.id.message"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 8
    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 9
    check-cast p0, Landroid/widget/TextView;

    return-object p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must include a TextView with an ID value of android.R.id.message"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
