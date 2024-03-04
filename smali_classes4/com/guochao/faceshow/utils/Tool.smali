.class public Lcom/guochao/faceshow/utils/Tool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field private static popWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatPopWindowBottomAnim(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    sput-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    .line 2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const p2, 0xdcdcdc

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3
    sget-object p2, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    sget-object p2, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    sget-object p2, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6
    sget-object p2, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 7
    sget-object p2, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    sget-object p2, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/16 p2, 0x53

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 10
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static creatPopWindowCenter(Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/utils/Tool$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/Tool$1;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p0, p2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    sput-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    .line 3
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const v0, 0x7f1304ca

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 9
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 10
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    new-instance p1, Lcom/guochao/faceshow/utils/Tool$2;

    invoke-direct {p1}, Lcom/guochao/faceshow/utils/Tool$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 11
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static creatPopWindowTopshareAnim(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    sput-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    .line 2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0xdcdcdc

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f130508

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x33

    const/16 v2, 0xa

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8
    sget-object p0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static createPopWindowBottomInstance(Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const-string p1, "#00000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/16 p2, 0x10

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static createPopWindowInstance(Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06038c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/16 p2, 0x10

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static createPopWindowTopAnimInstance(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xdcdcdc

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const p0, 0x7f130508

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-object v0
.end method

.method public static dismissPopWindow()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/Tool;->setBackgroundAlpha(Landroid/app/Activity;F)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/guochao/faceshow/utils/Tool;->popWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getLJList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->getFilterItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getljListName(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f12068c

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F1"

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F2"

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F3"

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F4"

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F5"

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F6"

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F7"

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F8"

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "F9"

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static helloHistoryTime(JLandroid/content/Context;)Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x3c

    .line 1
    div-long v2, p0, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v0

    const-wide/16 v6, 0x18

    div-long/2addr v2, v6

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x1

    const-string v10, " "

    cmp-long v11, v2, v6

    if-lez v11, :cond_1

    .line 2
    div-long/2addr v2, v6

    cmp-long p0, v2, v8

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c7

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c8

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c1

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v6, :cond_3

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c0

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    div-long v2, p0, v4

    div-long/2addr v2, v0

    div-long/2addr v2, v0

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c3

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v0, :cond_5

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    long-to-int p1, p0

    .line 10
    div-int/lit16 p1, p1, 0x3e8

    div-int/lit8 p1, p1, 0x3c

    const/4 p0, 0x1

    if-ge p1, p0, :cond_6

    const/4 p1, 0x1

    :cond_6
    if-ne p1, p0, :cond_7

    const p0, 0x7f12059c

    .line 11
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1208c6

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBackgroundAlpha(Landroid/app/Activity;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setViewPadding(Landroid/view/View;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static timeString(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1, p2}, Lcom/guochao/faceshow/utils/Tool;->helloHistoryTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
