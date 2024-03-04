.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V

    return-void
.end method

.method private d(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "original"

    const-string v4, "voice"

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->getVoiceFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->getVoiceFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/utils/MD5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;->getBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0, p1, v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V

    return-void

    .line 9
    :cond_1
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/tencent/imsdk/v2/V2TIMSoundElem;)V

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUrl(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void

    .line 10
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;->getBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;

    invoke-direct {v3, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V

    invoke-virtual {v1, v0, v3}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->downloadSound(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    :goto_1
    return-void
.end method

.method private e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->b(Ljava/io/File;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->getOnPlayListener()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->setOnPlayListener(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;)V

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;-><init>()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;->setHasPlayed(I)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setCloudCustomData(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;)V

    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->modifyMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V

    return-void
.end method

.method private f(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 2

    const v0, 0x7f0a0773

    .line 1
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080065

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080064

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->setPlaying(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->f(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    return-void
.end method

.method public b(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->setPlaying(Z)V

    const p1, 0x7f0a0773

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0248

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0245

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    return-void
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 7

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->bindHolder(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;)V

    const v0, 0x7f0a02f6

    .line 3
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0e1f

    .line 5
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->getDuration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long v5, v5, v3

    long-to-double v3, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double/2addr v3, v5

    double-to-int p1, v3

    add-int/2addr p1, v2

    .line 9
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr p1, v1

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 12
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0a0773

    .line 15
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0f0248

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0f0245

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->f(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;

    const p2, 0x7f0a0e2c

    .line 22
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;->getHasPlayed()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/16 p1, 0x8

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f1201f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f120187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->revokeCurrentMessage()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    :goto_0
    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const p1, 0x7f12015a

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method
