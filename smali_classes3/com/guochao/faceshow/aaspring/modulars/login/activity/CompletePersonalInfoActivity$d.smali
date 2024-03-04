.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public c(Landroid/app/Dialog;Ljava/util/Calendar;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->d:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p4, v1

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object p4, p4, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->select_birthday:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 11
    invoke-static {p3, p2}, Lcom/guochao/faceshow/aaspring/utils/CalenderUtils;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p2

    .line 12
    div-int/lit16 p2, p2, 0x16d

    int-to-double p2, p2

    const-wide/high16 p4, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, p4

    double-to-int p2, p2

    const/16 p3, 0x12

    if-lt p2, p3, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    :goto_0
    return-void
.end method
