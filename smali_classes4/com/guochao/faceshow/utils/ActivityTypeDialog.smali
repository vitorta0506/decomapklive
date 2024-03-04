.class public Lcom/guochao/faceshow/utils/ActivityTypeDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrizeDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1304cc

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00f2

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02bc

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double v5, v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    double-to-int v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0a046c

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 13
    new-instance v3, Lcom/guochao/faceshow/utils/ActivityTypeDialog$3;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/utils/ActivityTypeDialog$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v2, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;

    invoke-direct {v2, p1, p0, v0}, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static sharePrizeDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1304cc

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00f1

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02bc

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double v5, v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    double-to-int v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0a046c

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 13
    new-instance v3, Lcom/guochao/faceshow/utils/ActivityTypeDialog$1;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/utils/ActivityTypeDialog$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v2, Lcom/guochao/faceshow/utils/ActivityTypeDialog$2;

    invoke-direct {v2, p1, p0, v0}, Lcom/guochao/faceshow/utils/ActivityTypeDialog$2;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
