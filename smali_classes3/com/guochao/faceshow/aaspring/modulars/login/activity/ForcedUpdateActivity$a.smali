.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public I1(Ljava/util/Calendar;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->d0()V

    return-void
.end method
