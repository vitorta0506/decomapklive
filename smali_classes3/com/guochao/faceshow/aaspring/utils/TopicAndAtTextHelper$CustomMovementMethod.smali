.class public Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomMovementMethod"
.end annotation


# static fields
.field private static sInstance:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->sInstance:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->sInstance:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->sInstance:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;->sInstance:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$CustomMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
