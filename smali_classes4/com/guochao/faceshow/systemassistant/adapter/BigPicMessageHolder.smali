.class public Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->a:Landroid/content/Context;

    const v0, 0x7f0a00d0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a00ce

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00cd

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a00cf

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0bb6

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->f:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->d:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lfb/a;->d(Landroid/widget/ImageView;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x437a0000    # 250.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4
    iget v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageWidth:I

    int-to-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->e:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Image:Ljava/lang/String;

    const v1, 0x7f0f0012

    invoke-static {p2, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->f:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->e:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 13
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    .line 14
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 16
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->b:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
