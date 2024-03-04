.class public Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    const v0, 0x7f0a00d6

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a00d7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a00dd

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00da

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f0a00db

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a00d9

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->g:Landroid/widget/TextView;

    const v0, 0x7f0a00dc

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f0a00d8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a00de

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->j:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    .line 14
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 17
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    const/4 v3, 0x0

    .line 18
    invoke-static {v0, v2, v3, v3, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(IIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    return-void
.end method

.method private d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->getLiveInfoAndJumpIfNeed(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xcd

    const-string/jumbo v2, "titleName"

    const-string v3, ""

    const/high16 v4, 0x10000000

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    const-string v4, "musicUrl"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "musicId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Name:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_2

    .line 9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "topic_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xd0

    if-ne v0, v1, :cond_4

    .line 14
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Status:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->b:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lfb/a;->d(Landroid/widget/ImageView;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->e:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->h:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->titleIconResId:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->f:Landroid/widget/ImageView;

    iget v2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->titleIconResId:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_0
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Image:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->i:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Image:Ljava/lang/String;

    invoke-static {p2, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 12
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->c:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->j:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 16
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->a:Landroid/content/Context;

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

    :catch_0
    :cond_2
    return-void
.end method
