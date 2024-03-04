.class public Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;
    }
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/View;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/ProgressBar;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/TextView;

.field k:Landroid/content/Context;

.field private l:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->d:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->d:Landroid/view/View;

    const v0, 0x7f0a00d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->j:Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->d:Landroid/view/View;

    const v0, 0x7f0a00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->a:Landroid/widget/RelativeLayout;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->d:Landroid/view/View;

    const v0, 0x7f0a00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->b:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;)Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->l:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a00c9

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ca

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a00c0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a00cb

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00d4

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->h:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00d3

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->i:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->b:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->a:Landroid/widget/RelativeLayout;

    :goto_0
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lfb/a;->d(Landroid/widget/ImageView;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    .line 3
    iget-boolean v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    const/high16 v1, 0x41000000    # 8.0f

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    .line 8
    invoke-static {v4, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 12
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    .line 13
    invoke-static {v4, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :goto_1
    iget v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->sendStatus:I

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->d(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 16
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    .line 19
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    .line 20
    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :catch_0
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->l:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;

    return-void
.end method
