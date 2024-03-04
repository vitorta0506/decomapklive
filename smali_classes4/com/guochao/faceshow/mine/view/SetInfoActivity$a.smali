.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

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
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 2
    invoke-static {p3, p2}, Lcom/guochao/faceshow/aaspring/utils/CalenderUtils;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p3

    .line 3
    div-int/lit16 p3, p3, 0x16d

    int-to-double p3, p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p3, v0

    double-to-int p3, p3

    .line 4
    iget-object p4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const/4 p5, 0x1

    invoke-static {p4, p5}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Z)Z

    .line 5
    iget-object p4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object p4, p4, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->H:Ljava/text/SimpleDateFormat;

    const-string p5, "EST5EDT"

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object p5, p4, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->H:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->e0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    const/16 p2, 0x12

    if-lt p3, p2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$a;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->i0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    :goto_0
    return-void
.end method
